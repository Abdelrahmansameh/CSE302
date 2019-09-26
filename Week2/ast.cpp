#include "ast.h"

#include "BX0Lexer.h"
#include "BX0Parser.h"
#include "BX0BaseListener.h"

namespace bx {

namespace source {

std::ostream& operator<<(std::ostream& out, const Binop op) {
  switch(op) {
  case Binop::Add: return out << '+';
  case Binop::Subtract: return out << '-';
  case Binop::Multiply: return out << '*';
  case Binop::Divide: return out << '/';
  case Binop::Modulus: return out << '%';
  case Binop::BitAnd: return out << '&';
  case Binop::BitOr: return out << '|';
  case Binop::BitXor: return out << '^';
  case Binop::Lshift: return out << "<<";
  case Binop::Rshift: return out << ">>";
  default: return out << "<?>";
  }
}

std::ostream& operator<<(std::ostream& out, const Unop op) {
  switch(op) {
  case Unop::Negate: return out << '-';
  case Unop::BitNot: return out << "~";
  default: return out << "<?>";
  }
}

std::ostream& operator<<(std::ostream& out, ASTNode& node) {
  return node.print(out);
}

std::ostream& Variable::print(std::ostream& out) const {
  out << this->label;
  return out;
}

std::ostream& Immediate::print(std::ostream& out) const {
  out << this->value;
  return out;
}

std::ostream& UnopApp::print(std::ostream& out) const {
  out << '(' << this->op << ' ';
  this->arg->print(out);
  return out << ')';
}

std::ostream& BinopApp::print(std::ostream& out) const {
  out << '(';
  this->left_arg->print(out);
  out << ' ' << this->op << ' ';
  this->right_arg->print(out);
  return out << ')';
}

std::ostream& Print::print(std::ostream& out) const {
  out << "print ";
  return this->arg->print(out) << ';';
}

std::ostream& Move::print(std::ostream& out) const {
  this->dest->print(out);
  out << " = ";
  return this->source->print(out) << ';';
}

class SourceReader : public BX0BaseListener {
private:
  Prog prog;
  std::list<Expr*> expr_stack;
public:
  Prog get_prog() { return this->prog; }
  void exitMove(BX0Parser::MoveContext* ctx) override {
    auto dest = new Variable(ctx->VAR()->getText());
    auto source = this->expr_stack.back();
    this->expr_stack.pop_back();
    auto stmt = new Move(dest, source);
    this->prog.push_back(stmt);
  }
  void exitPrint(BX0Parser::PrintContext* ctx) override {
    auto dest = this->expr_stack.back();
    this->expr_stack.pop_back();
    auto stmt = new Print(dest);
    this->prog.push_back(stmt);
  }
  void exitUnop(BX0Parser::UnopContext* ctx) override {
    Unop op(ctx->op->getText()[0] == '-' ?
                    Unop::Negate :
                    Unop::BitNot);
    auto arg = this->expr_stack.back();
    this->expr_stack.pop_back();
    this->expr_stack.push_back(new UnopApp(op, arg));
  }
private:
  void processBinop(Binop op) {
    auto right = this->expr_stack.back();
    this->expr_stack.pop_back();
    auto left = this->expr_stack.back();
    this->expr_stack.pop_back();
    this->expr_stack.push_back(new BinopApp(left, op, right));
  }
public:
  void exitAdd(BX0Parser::AddContext* ctx) override {
    this->processBinop(ctx->op->getText()[0] == '+' ?
                       Binop::Add :
                       Binop::Subtract);
  }
  void exitMul(BX0Parser::MulContext* ctx) override {
    std::string op = ctx->op->getText();
    this->processBinop(op[0] == '*' ? Binop::Multiply :
                       op[0] == '/' ? Binop::Divide :
                       Binop::Modulus);
  }
  void exitShift(BX0Parser::ShiftContext *ctx) override {
    this->processBinop(ctx->op->getText()[0] == '<' ?
                       Binop::Lshift :
                       Binop::Rshift);
  }
  void exitAnd(BX0Parser::AndContext* ctx) override {
    this->processBinop(Binop::BitAnd);
  }
  void exitOr(BX0Parser::OrContext* ctx) override {
    this->processBinop(Binop::BitOr);
  }
  void exitXor(BX0Parser::XorContext* ctx) override {
    this->processBinop(Binop::BitXor);
  }
  void exitVariable(BX0Parser::VariableContext* ctx) override {
    this->expr_stack.push_back(new Variable(ctx->VAR()->getText()));
  }
  void exitNumber(BX0Parser::NumberContext* ctx) override {
    this->expr_stack.push_back(new Immediate(std::stoi(ctx->NUM()->getText())));
  }
};

Prog read_program(std::string file) {
  std::ifstream stream;
  stream.open(file);
  antlr4::ANTLRInputStream input(stream);
  BX0Lexer lexer(&input);
  antlr4::CommonTokenStream tokens(&lexer);
  BX0Parser parser(&tokens);
  antlr4::tree::ParseTree *tree = parser.program();
  SourceReader source_reader;
  antlr4::tree::ParseTreeWalker::DEFAULT.walk(&source_reader, tree);
  return source_reader.get_prog();
}

} // bx::source

namespace target {

std::ostream& operator<<(std::ostream& out, Instr& i) {
  return i.print(out);
}

std::ostream& MoveImm::print(std::ostream& out) const {
  out << "movq $" << this->imm << ", " << 8 * (this->dest-1) << "(%rsp)\n";
  return out;
}

std::ostream& MoveCp::print(std::ostream& out) const {
  out << "movq " << 8 * (this->source-1) << "(%rsp), %R8\n movq %R8, " << 8 * (this->dest-1) << "(%rsp)\n";
  return out;
}

std::ostream& MoveBinop::print(std::ostream& out) const {

  if (this->op != source::Binop::Divide && this->op != source::Binop::Multiply && this->op != source::Binop::Modulus){  
	out << "movq " << 8 * (this->right_source - 1) << "(%rsp), %R8\n movq " << 8*(this->left_source-1) << "(%rsp), %R9\n";
	switch(this->op) {
  	case source::Binop::Add: return out << "addq %R8, %R9\n movq %R9, " << 8*(this->dest-1) << "(%rsp) \n";
  	case source::Binop::Subtract: return out << "subq %R8, %R9\n movq %R9, " << 8*(this->dest-1) << "(%rsp) \n";
  	//case Binop::Multiply: return out << '*';
  	//case Binop::Divide: return out << '/';
  	//case Binop::Modulus: return out << '%';
  	case source::Binop::BitAnd: return out << "andq %R8, %R9\n movq %R9, " << 8*(this->dest-1) << "(%rsp) \n";
  	case source::Binop::BitOr: return out << "orq %R8, %R9\n movq %R9, " << 8*(this->dest-1) << "(%rsp) \n";
  	case source::Binop::BitXor: return out << "xorq %R8, %R9\n movq %R9, " << 8*(this->dest-1) << "(%rsp) \n";
  	case source::Binop::Lshift: return out << "movq %R8, %rcx\n salq %cl, %R9\n movq %R9, " << 8*(this->dest-1) << "(%rsp) \n";
  	case source::Binop::Rshift: return out << "movq %R8, %rcx\n sarq %cl, %R9\n movq %R9, " << 8*(this->dest-1) << "(%rsp) \n";
	} 
  }
  else{
	out << "movq " << 8 * (this->right_source -1) << "(%rsp), %R8\n movq " << 8 * (this->left_source -1 ) << "(%rsp), %rax\n";
	switch(this->op){
	case source::Binop::Multiply: return out << "imulq %R8\n movq %rax, " << 8 * (this->dest -1) << "(%rsp)";
	case source::Binop::Divide: return out <<"cqo\n idivq %R8\n movq %rax, " << 8*(this->dest-1) << "(%rsp)";
	case source::Binop::Modulus: return out <<"cqo\n idivq %R8\n movq %rdx, " << 8*(this->dest-1) << "(%rsp)";
	}
  } 
 return out;
}

std::ostream& MoveUnop::print(std::ostream& out) const {
  out << "movq " <<8*(this->source -1) << " (%rsp), %R8\n";
  if (this->op == source::Unop::Negate){out << "negq %R8\n";}
  if (this->op == source::Unop::BitNot){out << "notq %R8\n";}
  out << "movq %R8, " << 8 * (this->dest -1 ) << "(%rsp)";
  return out;
}

std::ostream& Print::print(std::ostream& out) const {
  out << "movq " << 8 * (this->source-1) << "(%rsp), %rdi\n";
  out << "callq bx0_print\n";
  return out;
}

std::ostream& Comment::print(std::ostream& out) const {
  out << "#" << this->comment << "\n";
  return out;
}

std::ostream& operator<<(std::ostream &out, Prog& prog) {
  for (auto i : prog.body)
    out << *i << std::endl;
  return out;
}

} // bx::target

std::map<std::string, target::Dest> table;

int varCounter = 0;

std::list<target::Instr *> instructions;
std::list<target::Dest> symbols;
target::Prog getTargetProg(const source::Prog prog){

  for (auto stmnt : prog){
    if (auto mv = dynamic_cast<source::Move*>(stmnt)){
      if (table.find(mv->dest->label) == table.end()){
        table[mv->dest->label] = ++varCounter;
        symbols.push_back(varCounter);
      }
      tdmunch_expr(mv->source, table[mv->dest->label]);
    }
    else if (auto pr = dynamic_cast<source::Print*>(stmnt)){
      target::Dest fresh = ++varCounter;
      symbols.push_back(varCounter);
      tdmunch_expr(pr->arg, fresh);
      instructions.push_back(new target::Print(fresh));
    }
  }
  return target::Prog(symbols, instructions);
}

void tdmunch_expr(const source::Expr* expr, const target::Dest dest){
  if (auto var = dynamic_cast<const source::Variable*>(expr)){
    instructions.push_back(new target::MoveCp(dest, table[var->label]));
  }
  if (auto imm = dynamic_cast<const source::Immediate*>(expr)){
    instructions.push_back(new target::MoveImm(dest, imm->value));
  }
  if (auto unop = dynamic_cast<const source::UnopApp*>(expr)){
    target::Dest fresh = ++varCounter;
    symbols.push_back(varCounter);
    tdmunch_expr(unop->arg, fresh);
    instructions.push_back(new target::MoveUnop(dest, unop->op, fresh));    
  }
  if (auto binop = dynamic_cast<const source::BinopApp*>(expr)){
    target::Dest fresh1 = ++varCounter;
    symbols.push_back(varCounter);
    target::Dest fresh2 = ++varCounter;
    symbols.push_back(varCounter);
    tdmunch_expr(binop-> left_arg, fresh1);
    tdmunch_expr(binop-> right_arg, fresh2);
    instructions.push_back(new target::MoveBinop(dest, fresh1, binop->op, fresh2));
  }
}

} // bx
