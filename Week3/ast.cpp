#include "ast.h"

#include "BX0Lexer.h"
#include "BX0Parser.h"
#include "BX0BaseListener.h"

namespace bx {

namespace source {

std::ostream& operator<<(std::ostream& out, const Type tp){
  switch (tp){
  case Type::INT: return out << "int64";
  case Type::BOOL: return out << "bool" ;
  case Type::INVALID: return out << "invalid"; 
  default: return out << "<?>";
  }
}

int getSize(const Type tp){
  switch (tp){
  case Type::INT: return 64;
  case Type::BOOL: return 8; 
  default: return 0;
  }
}
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
  case Binop::boolAnd: return out << "&&";
  case Binop::boolOr: return out << "||";
  default: return out << "<?>";
  }
}

std::ostream& operator<<(std::ostream& out, const Unop op) {
  switch(op) {
  case Unop::Negate: return out << '-';
  case Unop::BitNot: return out << "~";
  case Unop::boolNot: return out << "!";
  default: return out << "<?>";
  }
}

std::ostream& operator<<(std::ostream& out, const Compop op){
  switch(op) {
  case Compop::Equals: return out << "==";
  case Compop::Leq: return out << "<=";
  case Compop::Geq: return out << ">=";
  case Compop::Ge: return out << ">";
  case Compop::Le: return out << "<";
  case Compop::Neq: return out << "!=";
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

Type Variable::getType() const{
  return this->type;
}

std::ostream& Immediate::print(std::ostream& out) const {
  out << this->value;
  return out;
}

Type Immediate::getType() const{
  return Type::INT;
}

std::ostream& Bool::print(std::ostream& out) const {
  out << this->value;
  return out;
}
Type Bool::getType() const{
  return Type::BOOL;
}
std::ostream& UnopApp::print(std::ostream& out) const {
  out << '(' << this->op << ' ';
  this->arg->print(out);
  return out << ')';
}

Type UnopApp::getType() const{
  switch(this->op) {
  case Unop::Negate: return (this->arg->getType() == Type::INT ) ? Type::INT : Type::INVALID ;
  case Unop::BitNot:  return (this->arg->getType() == Type::INT ) ? Type::INT : Type::INVALID;
  case Unop::boolNot:  return (this->arg->getType() == Type::BOOL ) ? Type::BOOL : Type::INVALID;
  default: return Type::INVALID;
  }
}

std::ostream& BinopApp::print(std::ostream& out) const {
  out << '(';
  this->left_arg->print(out);
  out << ' ' << this->op << ' ';
  this->right_arg->print(out);
  return out << ')';
}

Type BinopApp::getType() const{
  if (this->left_arg->getType() != this->right_arg->getType()){
    return Type::INVALID;
  }
  
  switch(this->op){
    case Binop::Add: return (this->left_arg->getType() == Type::INT ) ? Type::INT : Type::INVALID;
    case Binop::Subtract: return (this->left_arg->getType() == Type::INT ) ? Type::INT : Type::INVALID;
    case Binop::Multiply: return (this->left_arg->getType() == Type::INT ) ? Type::INT : Type::INVALID;
    case Binop::Divide: return (this->left_arg->getType() == Type::INT ) ? Type::INT : Type::INVALID;
    case Binop::Modulus: return (this->left_arg->getType() == Type::INT ) ? Type::INT : Type::INVALID;
    case Binop::BitAnd: return (this->left_arg->getType() == Type::INT ) ? Type::INT : Type::INVALID;
    case Binop::BitOr: return (this->left_arg->getType() == Type::INT ) ? Type::INT : Type::INVALID;
    case Binop::BitXor: return (this->left_arg->getType() == Type::INT ) ? Type::INT : Type::INVALID;
    case Binop::Lshift: return (this->left_arg->getType() == Type::INT ) ? Type::INT : Type::INVALID;
    case Binop::Rshift: return (this->left_arg->getType() == Type::INT ) ? Type::INT : Type::INVALID;
    case Binop::boolAnd: return (this->left_arg->getType() == Type::BOOL ) ? Type::BOOL : Type::INVALID;
    case Binop::boolOr: return (this->left_arg->getType() == Type::BOOL ) ? Type::BOOL : Type::INVALID;
    default: return Type::INVALID;
  }
}

Type Expr::getType() const{
  return Type::INVALID;
}

std::ostream& Comparaison::print(std::ostream& out) const{
  out << '(';
  this->left_arg->print(out);
  out << ' ' << this->op << ' ';
  this->right_arg->print(out);
  return out << ')';
} 

Type Comparaison::getType() const{
  if (this->left_arg->getType() != this->right_arg->getType()){
    return Type::INVALID;
  }
  return Type::BOOL;
}

std::ostream& Print::print(std::ostream& out) const {
  out << "print ";
  return this->arg->print(out) << "; \n";
}

std::ostream& Move::print(std::ostream& out) const {
  this->dest->print(out);
  out << " = ";
  return this->source->print(out) << "; \n";
}

std::ostream& Block::print(std::ostream& out) const{
  out << "{\n";
  for (auto stmt: this->statements){
    stmt->print(out);
  }
  out << "}\n";
  return out;
}

std::ostream& ifElse::print(std::ostream& out) const{
  out << "if ";
  this->condition->print(out);
  this->ifBlock->print(out);
  out << "else";
  this->elseBlock->print(out);
  return out;
}

std::ostream& Whilee::print(std::ostream& out) const{
  out << "while ";
  this->condition->print(out);
  out << "{ \n";
  this->block->print(out);
  out << " \n}\n";
  return out;
}

std::ostream& VarDecl::print(std::ostream& out) const{
    out << this->type;
    out << " ";
    out << this->label;
    if (this->initValue != NULL){
      out << " = ";
      this->initValue->print(out);
    }
    out << "\n";
    return out;
}

std::ostream& Prog::print(std::ostream& out){
  for (std::list<VarDecl*>::iterator it = vars.begin(); it != vars.end(); ++it){
    (*it)->print(out);
  }
  for (auto i : this->body){
    i->print(out);
  }
  return out;

}
class SourceReader : public BX0BaseListener {
private:
  Prog prog;
  std::list<Expr*> expr_stack;
  std::list<VarDecl*> varDeclareBuffer;
  std::map<std::string, Type> types;
  std::list<Stmt*> stmtStack;
public:
  Prog get_prog() { return this->prog; }
  void exitProgram(BX0Parser::ProgramContext * ctx) override{
    this->prog.body =  stmtStack;
  }
  void exitBlock(BX0Parser::BlockContext *ctx) override{
    int nChildren = ctx->statement().size();
    std::list<Stmt* > bl;
    //printStmtStack("Before" + ctx->getText() + std::to_string(nChildren));
    while ( nChildren--  > 0 ) {
      bl.push_front(this->stmtStack.back());
      this->stmtStack.pop_back();
    }
    this->stmtStack.push_back(new Block(bl));
    //printStmtStack("After" + ctx->getText());
  }
  void exitMove(BX0Parser::MoveContext* ctx) override {
    auto dest = new Variable(ctx->VAR()->getText(), types[ctx->VAR()->getText()]);
    auto source = this->expr_stack.back();
    this->expr_stack.pop_back();
    auto stmt = new Move(dest, source);
    this->stmtStack.push_back(stmt);
  }

  void exitPrint(BX0Parser::PrintContext* ctx) override {
    auto dest = this->expr_stack.back();
    this->expr_stack.pop_back();
    auto stmt = new Print(dest);
    this->stmtStack.push_back(stmt);
  }
  void exitUnop(BX0Parser::UnopContext* ctx) override {
    Unop op(ctx->op->getText()[0] == '-' ?
                    Unop::Negate :
                    (ctx->op->getText()[0] == '~') ?
                    Unop::BitNot:
                    Unop::boolNot);
    auto arg = this->expr_stack.back();
    this->expr_stack.pop_back();
    this->expr_stack.push_back(new UnopApp(op, arg));
  }
    void exitVardecl(BX0Parser::VardeclContext* ctx) override{
    Type type = ctx->type()->getText() == "bool" ? Type::BOOL: Type::INT;
    for (auto vardecl :  this->varDeclareBuffer){
      vardecl->type = type;
      types[vardecl->label] = vardecl->type;
    }
    varDeclareBuffer.clear();
  }
  void exitIfelse(BX0Parser::IfelseContext * ctx) override{
    Expr* condition = this->expr_stack.back();
    this->expr_stack.pop_back();
    Block* ifBlock, *elseBlock;
    if (ctx->ifelsecont() == nullptr){
      Stmt* ifStmt = this->stmtStack.back();
      this->stmtStack.pop_back();
      ifBlock = dynamic_cast<Block*>(ifStmt);
      elseBlock = new Block(std::list<Stmt*>());
    }
    else{
      Stmt* elseStmt = this->stmtStack.back();
      this->stmtStack.pop_back();
      Stmt* ifStmt = this->stmtStack.back();
      this->stmtStack.pop_back();
      elseBlock = dynamic_cast<Block*>(elseStmt);
      ifBlock = dynamic_cast<Block*>(ifStmt);
    }
    stmtStack.push_back(new ifElse(condition, ifBlock,elseBlock));
    //printStmtStack("After" + ctx->getText());
  }
  void exitWhilee(BX0Parser::WhileeContext * ctx) override{
    Expr* condition = this->expr_stack.back();
    this->expr_stack.pop_back();
    Stmt* whileStmt = this->stmtStack.back();
    this->stmtStack.pop_back();
    Block* block = dynamic_cast<Block*>(whileStmt);
    this->stmtStack.push_back(new Whilee(condition, block));
  }
private:
  void processBinop(Binop op) {
    auto right = this->expr_stack.back();
    this->expr_stack.pop_back();
    auto left = this->expr_stack.back();
    this->expr_stack.pop_back();
    this->expr_stack.push_back(new BinopApp(left, op, right));
  }
  void printStack(){
    std::cout << "##########################\n";
    std::cout << "Expression stack" << std::endl;
    for (auto i : expr_stack){
      i->print(std::cout);
      std::cout << std::endl;
    }
    std::cout << "##########################\n";
  }
  void printStack(std::string message){
    std::cout << "##########################\n";
    std::cout << "Expression stack at " << message << std::endl;
    for (auto i : expr_stack){
      i->print(std::cout);
      std::cout << " " << i->getType();
      std::cout << std::endl;
    }
    std::cout << "##########################\n";
  }
  void printStmtStack(std::string message){    
    std::cout << "##########################\n";
    std::cout << "Statement stack at " << message << std::endl;
    for (auto i : stmtStack){
      i->print(std::cout);
    }
    std::cout << "##########################\n";
  }
  void printStmtStack(){    
    std::cout << "##########################\n";
    std::cout << "Statement stack" << std::endl;
    for (auto i : stmtStack){
      i->print(std::cout);
    }
    std::cout << "##########################\n";
  }
public:
  void exitBoolop(BX0Parser::BoolopContext * ctx) override { 
    auto right = this->expr_stack.back();
    this->expr_stack.pop_back();
    auto left = this->expr_stack.back();
    this->expr_stack.pop_back();
    std::string op = ctx->op->getText();
    if (op == "&&"){
      this->expr_stack.push_back(new BinopApp(left, Binop::boolAnd, right));
    }
    else{
      this->expr_stack.push_back(new BinopApp(left, Binop::boolOr, right));
    }
    
  }
  void exitComparaison(BX0Parser::ComparaisonContext * ctx){
    auto right = this->expr_stack.back();
    this->expr_stack.pop_back();
    auto left = this->expr_stack.back();
    this->expr_stack.pop_back();
    std::string op = ctx->op->getText();
    if (op == "=="){
      this->expr_stack.push_back(new Comparaison(left, Compop::Equals, right));
    }
    else if (op == "<="){
      this->expr_stack.push_back(new Comparaison(left, Compop::Leq, right));
    }
    else if (op == "<"){
      this->expr_stack.push_back(new Comparaison(left, Compop::Le, right));
    }
    else if (op == ">="){
      this->expr_stack.push_back(new Comparaison(left, Compop::Geq, right));
    }
    else if (op == ">"){
      this->expr_stack.push_back(new Comparaison(left, Compop::Ge, right));
    }
    else if (op == "!="){
      this->expr_stack.push_back(new Comparaison(left, Compop::Neq, right));
    }
  }
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
     if(types.find(ctx->VAR()->getText()) == types.end()){
        this->expr_stack.push_back(new Variable(ctx->VAR()->getText(), Type::INVALID));
     }
     else{
      this->expr_stack.push_back(new Variable(ctx->VAR()->getText(), types[ctx->VAR()->getText()]));
     }
  }
  void exitNumber(BX0Parser::NumberContext* ctx) override {
    this->expr_stack.push_back(new Immediate(std::stoi(ctx->NUM()->getText())));
  }
  void exitBoolean(BX0Parser::BooleanContext * ctx) override{
    this->expr_stack.push_back(new Bool(ctx->getText() == "true" ? true : false));
  }
  void exitVarinit(BX0Parser::VarinitContext * ctx) override {
    if (ctx->expr() == nullptr){
      VarDecl* tmp = new VarDecl(ctx->VAR()->getText(), Type::INVALID, NULL);
      this->varDeclareBuffer.push_back(tmp);
      this->prog.vars.push_back(tmp);
    }
    else{
      auto initValue = expr_stack.back();
      expr_stack.pop_back();
      VarDecl* tmp = new VarDecl(ctx->VAR()->getText(), Type::INVALID, initValue);
      this->varDeclareBuffer.push_back(tmp);
      this->prog.vars.push_back(tmp);
    }
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
  //out << "x" << this->dest->dest << " = " << this->imm << " L" << this->label << " -> L" << this->outlabel << "\n";  
  out << ".L" << this->label << ":\n";
  out << "\t movq $" << this->imm << ", " << 8 * (this->dest->dest-1) << "(%rsp)\n";
  out << "\t jmp .L" << this->outlabel << "\n";
  return out;
}

std::ostream& MoveBool::print(std::ostream& out) const {
  //out << "x" << this->dest->dest << " = " << this->imm << " L" << this->label << " -> L" << this->outlabel << "\n";  
  out << ".L" << this->label << ":\n";
  if (this->imm){
    out << "\t movq $1, ";
  }
  else{
    out << "\t movq $0, ";
  }
  out << 8 * (this->dest->dest-1) << "(%rsp)\n";
  out << "\t jmp .L" << this->outlabel << "\n";
  return out;
}

std::ostream& MoveCp::print(std::ostream& out) const {
  //out << "x" << this->dest->dest << " = " << "x" << this->source->dest << " L" << this->label<< " -> L" << this->outlabel << "\n";  
  out << ".L" << this->label << ":\n";
  out << "\t movq " << 8 * (this->source->dest-1) << "(%rsp), %R8\n \t movq %R8, " << 8 * (this->dest->dest-1) << "(%rsp)\n";
  out << "\t jmp .L" << this->outlabel<< "\n";
  return out;
}

std::ostream& MoveBinop::print(std::ostream& out) const {
  //out << "x" << this->dest->dest << " = " << "x" << this->left_source->dest << this->op << "x" << this->right_source->dest << " L" << this->label<< " -> L" << this->outlabel << "\n";  
  out << ".L" << this->label << ":\n";
  if (this->op != source::Binop::Divide && this->op != source::Binop::Multiply && this->op != source::Binop::Modulus){  
	out << "\t movq " << 8 * (this->right_source->dest - 1) << "(%rsp), %R8\n \t movq " << 8*(this->left_source->dest-1) << "(%rsp), %R9\n";
	switch(this->op) {
  	case source::Binop::Add: out << "\t addq %R8, %R9\n \t movq %R9, " << 8*(this->dest->dest-1) << "(%rsp) \n"; break;
  	case source::Binop::Subtract: out << "\t subq %R8, %R9\n \t movq %R9, " << 8*(this->dest->dest-1) << "(%rsp) \n"; break;
  	//case Binop::Multiply: return out << '*';
  	//case Binop::Divide: return out << '/';
  	//case Binop::Modulus: return out << '%';
  	case source::Binop::BitAnd: out << "\t andq %R8, %R9\n \t movq %R9, " << 8*(this->dest->dest-1) << "(%rsp) \n"; break;
  	case source::Binop::BitOr:  out << "\t orq %R8, %R9\n \t movq %R9, " << 8*(this->dest->dest-1) << "(%rsp) \n";break;
  	case source::Binop::BitXor:  out << "\t xorq %R8, %R9\n \t movq %R9, " << 8*(this->dest->dest-1) << "(%rsp) \n";
  	case source::Binop::Lshift: out << "\t movq %R8, %rcx\n \t salq %cl, %R9\n movq %R9, " << 8*(this->dest->dest-1) << "(%rsp) \n";break;
  	case source::Binop::Rshift:  out << "\t movq %R8, %rcx\n \t sarq %cl, %R9\n movq %R9, " << 8*(this->dest->dest-1) << "(%rsp) \n";break;
    case source::Binop::boolAnd: out << "\t andq %R8, %R9\n \t movq %R9, " << 8*(this->dest->dest-1) << "(%rsp) \n";break;
    case source::Binop::boolOr:  out << "\t orq %R8, %R9\n \t movq %R9, " << 8*(this->dest->dest-1) << "(%rsp) \n";break;
	} 
  }
  else{
	out << "\t movq " << 8 * (this->right_source->dest -1) << "(%rsp), %R8\n \t movq " << 8 * (this->left_source->dest -1 ) << "(%rsp), %rax\n";
	switch(this->op){
    case source::Binop::Multiply:  out << "\t imulq %R8\n \t movq %rax, " << 8 * (this->dest->dest -1) << "(%rsp)\n";break;
    case source::Binop::Divide:  out <<"\t cqo\n idivq %R8\n \t movq %rax, " << 8*(this->dest->dest-1) << "(%rsp)\n";break;
    case source::Binop::Modulus:  out <<"\t cqo\n idivq %R8\n \t movq %rdx, " << 8*(this->dest->dest-1) << "(%rsp)\n";break;
	}
  } 
  out << "\t jmp .L" << this->outlabel << "\n";
  return out;
}

std::ostream& MoveUnop::print(std::ostream& out) const {
  //out << "x" << this->dest->dest << " = " << this->op << "x" << this->source->dest << " L" << this->label<< " -> L" << this->outlabel << "\n";
  out << ".L" << this->label << ":\n";
  out << "\t movq " <<8*(this->source->dest -1) << " (%rsp), %R8\n";
  if (this->op == source::Unop::Negate){out << "\t negq %R8\n";}
  if (this->op == source::Unop::BitNot){out << "\t notq %R8\n";}
  if (this->op == source::Unop::boolNot){out << "\t notq %R8\n" << "\t andq $1, %R8\n";}
  out << "\t movq %R8, " << 8 * (this->dest->dest -1 ) << "(%rsp)\n";
  out << "\t jmp .L" << this->outlabel << "\n";
  return out;
}

std::ostream& Print::print(std::ostream& out) const {
  //out << "print x" << this->source->dest << " L" << this->label << " -> L" << this->outlabel << "\n";
  out << ".L" << this->label << ":\n";
  out << "\t movq " << 8 * (this->source->dest-1) << "(%rsp), %rdi\n";
  out << "\t callq bx0_print\n";
  out << "\t jmp .L" << this->outlabel << "\n";
  return out;
}

/*
std::ostream& Compop::print(std::ostream& out) const{ 
  //out << "x" << this->dest->dest << " = " << "x" << this->left_source->dest << this->op << "x" << this->right_source->dest << " L" << this->label<< "\n";
  out << ".L" << this->label << ":\n";
  out << "\t movq $" << "1" << ", " << 8 * (this->dest->dest-1) << "(%rsp)\n";
  out << "\t movq " << 8 * (this->right_source->dest - 1) << "(%rsp), %R8\n \t movq " << 8*(this->left_source->dest-1) << "(%rsp), %R9\n";
  out << "\t cmpq %R8, %R9\n";
  if (this-> op == source::Compop::Equals){
    out << "\t je .Lend" << this->label << "\n";
  }
  if (this ->op == source::Compop::Neq){
    out << "\t jne .Lend" << this->label << "\n";
  }
  if (this->op == source::Compop::Leq){
    out << "\t jle .Lend" << this->label << "\n";
  }
  if (this->op == source::Compop::Le){
    out << "\t jl .Lend" << this->label << "\n";
  }
  if (this->op == source::Compop::Geq){
    out << "\t jge .Lend" << this->label << "\n";
  }
  if (this->op == source::Compop::Ge){
    out << "\t jg .Lend" << this->label << "\n";
  }
  out << "\t movq $" << "0" << ", " << 8 * (this->dest->dest-1) << "(%rsp)\n";
  out << ".Lend" << this->label << ":\n";
  out << "\t jmp .L" << this->label + 1 << "\n";
  return out;
}
*/

std::ostream& UBranch::print(std::ostream& out) const{
  //out << "ubranch to L" << this->outlabel << " if x" << this->condition->dest << " L" << this->label << "\n";
  out << ".L" << this->label <<":\n";
  out << "\t movq " <<8*(this->condition->dest -1) << "(%rsp), %R8\n";
  out << "\t cmpq $1, %R8\n";
  out << "\t jz .L" << this->outlabel << "\n";
  out << "\t jmp .L" << this->outlabel2 << "\n";
  return out;
}

std::ostream& BBranch::print(std::ostream& out) const{
  out << ".L" << this->label << ":\n";
  out << "\t movq " << 8 * (this->condition1->dest - 1) << "(%rsp), %R8\n \t movq " << 8*(this->condition2->dest-1) << "(%rsp), %R9\n";
  out << "\t cmpq " << "%R9, %R8\n";
  if (this-> op == source::Compop::Equals){
    out << "\t je .L" << this->outlabel << "\n";
  }
  if (this ->op == source::Compop::Neq){
    out << "\t jne .L" << this->outlabel << "\n";
  }
  if (this->op == source::Compop::Leq){
    out << "\t jle .L" << this->outlabel << "\n";
  }
  if (this->op == source::Compop::Le){
    out << "\t jl .L" << this->outlabel << "\n";
  }
  if (this->op == source::Compop::Geq){
    out << "\t jge .L" << this->outlabel << "\n";
  }
  if (this->op == source::Compop::Ge){
    out << "\t jg .L" << this->outlabel << "\n";
  }
  out << "\t jmp .L" << this->outlabel2<< "\n";
  return out;
}

std::ostream& Goto::print(std::ostream& out) const{
  //out << "Goto L" << this->label << "->L" << this->outlabel << "\n";
  out << ".L" << this->label <<":\n";
  out << "\t jmp .L" << this->outlabel<< "\n";
  return out;
}

std::ostream& End::print(std::ostream& out) const{
  //out << "End L" << this->label << "\n";
  out << ".L" << this->label << ":\n";
  out << "\t jmp .Lend\n";
  return out;
}

std::ostream& Start::print(std::ostream& out) const{
  //out << "Start .L" << this->outlabel << "\n";
  out << "jmp .L" << this->outlabel << "\n";
  return out;
}

std::ostream& Prog::print(std::ostream &out) const {
  for (auto i : this->body){
    i->print(std::cout);
  }
  return out;
}
std::ostream& operator<<(std::ostream &out, Prog& prog) {
  for (auto i : prog.body)
    out << *i << std::endl;
  return out;
}

} // bx::target

std::map<std::string, target::Dest*> table;

int varCounter = 0;

int instrCounter = 0;

std::list<target::Instr *> instructions;

std::list<target::Dest*> symbols;

target::Prog getTargetProg(const source::Prog prog){
  for (auto dclr : prog.vars){
      table[dclr->label] = new target::Dest(dclr->type, ++varCounter);
      symbols.push_back(table[dclr->label]);
  }
  int L = instrCounter++;
  int end = L;
  for (auto it = prog.body.rbegin(); it != prog.body.rend(); ++it){
    L = tdmunch_stmt(*it, L);
    std::cout << "L: ";
    (*it)->print(std::cout);
    std::cout << L << std::endl;
    //(*it)->print(std::cout);
  }
  for (auto it = prog.vars.rbegin(); it != prog.vars.rend(); ++it){
      auto dclr = *it;
      if (dclr->initValue != NULL){
        if (dclr->type == source::Type::INT){
          L = tdmunch_expr_int(dclr->initValue, table[dclr->label], L);
        }
        else{
          int Lt = instrCounter++;
          int Lf = instrCounter++;
          std::cout << "L: " << L << std::endl;
          instructions.push_back(new target::MoveBool(table[dclr->label], true, Lt, L));
          instructions.push_back(new target::MoveBool(table[dclr->label], false, Lf, L));
          L = tdmunch_expr_bool(dclr->initValue, Lt, Lf);
        }
      }
      (*it)->print(std::cout);
  }
  instructions.push_back(new target::End(end));
  return target::Prog(symbols, instructions, L);
}

int tdmunch_stmt(const source::Stmt* stmt, int Lo){
    if (auto mv = dynamic_cast<const source::Move*>(stmt)){
      if (mv->source->getType() == source::Type::INT){
        return tdmunch_expr_int(mv->source, table[mv->dest->label], Lo);
      }
      if (mv->source->getType() == source::Type::BOOL){
        int Lt = instrCounter++;
        int Lf = instrCounter++;
        instructions.push_back(new target::MoveBool(table[mv->dest->label], true, Lt, Lo));
        instructions.push_back(new target::MoveBool(table[mv->dest->label], false, Lf, Lo));
        return tdmunch_expr_bool(mv->source, Lt, Lf);
      }
    }
    else if (auto pr = dynamic_cast<const source::Print*>(stmt)){
      target::Dest* fresh = new target::Dest(pr->arg->getType(), ++varCounter);
      symbols.push_back(fresh);
      if (pr->arg->getType() == source::Type::INT){
        int L1 = instrCounter++;
        int Li = tdmunch_expr_int(pr->arg, fresh, L1);
        instructions.push_back(new target::Print(fresh, L1, Lo));
        return Li;
      }
      if (pr->arg->getType() == source::Type::BOOL){
        int L1 = instrCounter++;
        int L2 = instrCounter++;
        int Lt = instrCounter++;
        int Lf = instrCounter++;
        instructions.push_back(new target::MoveBool(fresh, true, Lt, L1));
        instructions.push_back(new target::Print(fresh, L1, Lo));
        instructions.push_back(new target::MoveBool(fresh, false, Lf, L2));
        instructions.push_back(new target::Print(fresh, L2, Lo));
        return tdmunch_expr_bool(pr->arg, Lt, Lf);
      }
    }
    else if (auto blc = dynamic_cast<const source::Block*>(stmt)){
      int Ltmp = Lo;
      for (auto it = blc->statements.rbegin(); it != blc->statements.rend(); ++it){
        Ltmp = tdmunch_stmt(*it, Ltmp);
      }
      return Ltmp;
    }
    else if (auto ifels = dynamic_cast<const source::ifElse*>(stmt)){
      int Lt = tdmunch_stmt(ifels->ifBlock, Lo);
      int Lf = tdmunch_stmt(ifels->elseBlock, Lo);
      return tdmunch_expr_bool(ifels->condition, Lt, Lf);
    }
    else if (auto whil = dynamic_cast<const source::Whilee*>(stmt)){
      int Lend = instrCounter++;
      int Lt = tdmunch_stmt(whil->block, Lend);
      int Li = tdmunch_expr_bool(whil->condition, Lt, Lo);
      std::cout << "Lend" << Lend <<  std::endl;
      instructions.push_back(new target::Goto(Lend, Li));
      return Li;
    }
}


int tdmunch_expr_int(const source::Expr* expr, target::Dest* dest, int Lo){
  //std::cout << "Evaluating: ";
  //expr->print(std::cout);
  //std::cout << "\n";
  if (auto var = dynamic_cast<const source::Variable*>(expr)){
    if (var->getType() == source::Type::INT){
      int Li = instrCounter++;
      instructions.push_back(new target::MoveCp(dest, table[var->label], Li, Lo));
      return Li;
    }
  }
  if (auto imm = dynamic_cast<const source::Immediate*>(expr)){
    int Li = instrCounter++;
    instructions.push_back(new target::MoveImm(dest, imm->value, Li, Lo));
    return Li;
  }
  if (auto unop = dynamic_cast<const source::UnopApp*>(expr)){
    target::Dest* fresh = new target::Dest(unop->getType(), ++varCounter);
    symbols.push_back(fresh);
    int L1 = instrCounter++;
    instructions.push_back(new target::MoveUnop(dest, unop->op, fresh, L1, Lo));
    int Li = tdmunch_expr_int(unop->arg, fresh, L1);
    return Li;    
  }
  if (auto binop = dynamic_cast<const source::BinopApp*>(expr)){
    target::Dest* fresh1 = new target::Dest(binop->getType(), ++varCounter);
    symbols.push_back(fresh1);
    target::Dest* fresh2 = new target::Dest(binop->getType(), ++varCounter);
    symbols.push_back(fresh2);
    int L2 = instrCounter++;
    instructions.push_back(new target::MoveBinop(dest, fresh1, binop->op, fresh2, L2, Lo));
    int L1 = tdmunch_expr_int(binop-> right_arg, fresh2, L2);
    int Li = tdmunch_expr_int(binop-> left_arg, fresh1, L1);
    return Li;
  }
}
int tdmunch_expr_bool(const source::Expr* expr, int Lt, int Lf){
  if (auto var = dynamic_cast<const source::Variable*>(expr)){
    std::cout << "LT LF " << Lt << " " << Lf << std::endl;
    int Li = instrCounter++;
    instructions.push_back(new target::UBranch(table[var->label], Li, Lt, Lf));
    return Li;
  }
  if (auto bol = dynamic_cast<const source::Bool*>(expr)){
    if (bol->value){
      return Lt;
    }
    else{
      return Lf;
    }
  }
  if (auto unop = dynamic_cast<const source::UnopApp*>(expr)){
    return tdmunch_expr_bool(unop->arg, Lf, Lt);
  }
  if (auto binop = dynamic_cast<const source::BinopApp*>(expr)){
    if (binop->op == source::Binop::boolAnd){
      int L1 = tdmunch_expr_bool(binop->right_arg, Lt, Lf);
      return tdmunch_expr_bool(binop->left_arg, L1, Lf);
    }
    if (binop->op == source::Binop::boolOr){
      int L1 = tdmunch_expr_bool(binop->right_arg, Lt, Lf);
      return tdmunch_expr_bool(binop->left_arg, Lt, L1);
    }
  }
  if (auto compop = dynamic_cast<const source::Comparaison*>(expr)){
    if (compop->left_arg->getType() == source::Type::INT){
      int L2 = instrCounter++;
      target::Dest* fresh1 = new target::Dest(source::Type::INT, ++varCounter);
      symbols.push_back(fresh1);
      target::Dest* fresh2 = new target::Dest(source::Type::INT, ++varCounter);
      symbols.push_back(fresh2);
      instructions.push_back(new target::BBranch(fresh1, fresh2, compop->op, L2, Lt, Lf));
      int L1 = tdmunch_expr_int(compop->right_arg, fresh2, L2);
      return tdmunch_expr_int(compop->left_arg, fresh1, L1);
    }
    else{
      //(e1 == e2) ≡ (e1 && e2) || ! (e1 || e2)
      if (compop->op == source::Compop::Equals){
        const source::Expr* e1 = compop->left_arg;
        const source::Expr* e2 = compop->right_arg;
        source::Expr* tmp1 = new source::BinopApp(e1, source::Binop::boolAnd, e2);
        source::Expr* tmp2 = new source::BinopApp(e1, source::Binop::boolOr, e2);
        source::Expr* tmp3 = new source::UnopApp(source::Unop::boolNot, tmp2);
        source::Expr* tmp4 = new source::BinopApp(tmp1, source::Binop::boolOr, tmp3);
        return tdmunch_expr_bool(tmp4, Lt, Lf);
      }
      //(e1 != e2) ≡ ! (e1 && e2) && (e1 || e2)
      else{
        const source::Expr* e1 = compop->left_arg;
        const source::Expr* e2 = compop->right_arg;
        source::Expr* tmp1 = new source::BinopApp(e1, source::Binop::boolAnd, e2);
        source::Expr* tmp2 = new source::BinopApp(e1, source::Binop::boolOr, e2);
        source::Expr* tmp3 = new source::UnopApp(source::Unop::boolNot, tmp1);
        source::Expr* tmp4 = new source::BinopApp(tmp1, source::Binop::boolAnd, tmp3);
        return tdmunch_expr_bool(tmp4, Lt, Lf);
      }
    }
  }
}
} // bx
