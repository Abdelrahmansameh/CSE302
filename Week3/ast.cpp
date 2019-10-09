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
  for (auto stmt: this->statements){
    stmt->print(out);
    //out << "\n";
  }
  return out;
}

std::ostream& ifElse::print(std::ostream& out) const{
  out << "if ";
  this->condition->print(out);
  out << " {\n";
  this->ifBlock->print(out);
  out << "}\n else {\n";
  this->elseBlock->print(out);
  out << "}\n";
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
  std::list<int> conditionPositions;
  std::list<std::list<Stmt*>> blockStack;
public:
  Prog get_prog() { return this->prog; }
  void exitMove(BX0Parser::MoveContext* ctx) override {
    auto dest = new Variable(ctx->VAR()->getText(), types[ctx->VAR()->getText()]);
    auto source = this->expr_stack.back();
    this->expr_stack.pop_back();
    //conditionCounter--;
    auto stmt = new Move(dest, source);
    if (blockStack.size() == 0){
      this->prog.body.push_back(stmt);
    }
    else{
      blockStack.back().push_back(stmt);
    }
  }

  void exitPrint(BX0Parser::PrintContext* ctx) override {
    auto dest = this->expr_stack.back();
    this->expr_stack.pop_back();
    //conditionCounter--;
    auto stmt = new Print(dest);
    if (blockStack.size() == 0){
      this->prog.body.push_back(stmt);
    }
    else{
      blockStack.back().push_back(stmt);
    }
  }
  void exitUnop(BX0Parser::UnopContext* ctx) override {
    Unop op(ctx->op->getText()[0] == '-' ?
                    Unop::Negate :
                    (ctx->op->getText()[0] == '~') ?
                    Unop::BitNot:
                    Unop::boolNot);
    auto arg = this->expr_stack.back();
    this->expr_stack.pop_back();
    //conditionCounter--;
    this->expr_stack.push_back(new UnopApp(op, arg));
    //conditionCounter++;
  }
  
private:
  void processBinop(Binop op) {
    auto right = this->expr_stack.back();
    this->expr_stack.pop_back();
    //conditionCounter--;
    auto left = this->expr_stack.back();
    this->expr_stack.pop_back();
    //conditionCounter--;
    this->expr_stack.push_back(new BinopApp(left, op, right));
    //conditionCounter++;
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
  void printBlockStack(std::string message){}
public:
  void exitBoolop(BX0Parser::BoolopContext * ctx) override { 
    auto right = this->expr_stack.back();
    this->expr_stack.pop_back();
    //conditionCounter--;
    auto left = this->expr_stack.back();
    this->expr_stack.pop_back();
    //conditionCounter--;
    std::string op = ctx->op->getText();
    if (op == "&&"){
      this->expr_stack.push_back(new BinopApp(left, Binop::boolAnd, right));
      //conditionCounter++;
    }
    else{
      this->expr_stack.push_back(new BinopApp(left, Binop::boolOr, right));
      //conditionCounter++;
    }
    
  }
  void exitComparaison(BX0Parser::ComparaisonContext * ctx){
    auto right = this->expr_stack.back();
    this->expr_stack.pop_back();
    //conditionCounter--;
    auto left = this->expr_stack.back();
    this->expr_stack.pop_back();
    //conditionCounter--;
    std::string op = ctx->op->getText();
    if (op == "=="){
      this->expr_stack.push_back(new Comparaison(left, Compop::Equals, right));
      //conditionCounter++;
    }
    else if (op == "<="){
      this->expr_stack.push_back(new Comparaison(left, Compop::Leq, right));
      //conditionCounter++;
    }
    else if (op == "<"){
      this->expr_stack.push_back(new Comparaison(left, Compop::Le, right));
      //conditionCounter++;
    }
    else if (op == ">="){
      this->expr_stack.push_back(new Comparaison(left, Compop::Geq, right));
      //conditionCounter++;
    }
    else if (op == ">"){
      this->expr_stack.push_back(new Comparaison(left, Compop::Ge, right));
      //conditionCounter++;
    }
    else if (op == "!="){
      this->expr_stack.push_back(new Comparaison(left, Compop::Neq, right));
      //conditionCounter++;
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
        //conditionCounter++;
     }
     else{
      this->expr_stack.push_back(new Variable(ctx->VAR()->getText(), types[ctx->VAR()->getText()]));
      //conditionCounter++;
     }
    printStack("VAR " + ctx->getText());
  }
  void exitNumber(BX0Parser::NumberContext* ctx) override {
    this->expr_stack.push_back(new Immediate(std::stoi(ctx->NUM()->getText())));
    printStack("Number " + ctx->getText());
    //conditionCounter++;
  }
  void exitBoolean(BX0Parser::BooleanContext * ctx) override{
    this->expr_stack.push_back(new Bool(ctx->getText() == "true" ? true : false));
    printStack("BOOL " + ctx->getText());
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
      //conditionCounter--;
      VarDecl* tmp = new VarDecl(ctx->VAR()->getText(), Type::INVALID, initValue);
      this->varDeclareBuffer.push_back(tmp);
      this->prog.vars.push_back(tmp);
    }
    printStack("Varinit " + ctx->getText() );
  }
  void exitVardecl(BX0Parser::VardeclContext* ctx) override{
    Type type = ctx->type()->getText() == "bool" ? Type::BOOL: Type::INT;
    for (auto vardecl :  this->varDeclareBuffer){
      vardecl->type = type;
      types[vardecl->label] = vardecl->type;
    }
    varDeclareBuffer.clear();
  }
  void enterIfelse(BX0Parser::IfelseContext * ctx) override{
    /*
    std::cout << (expr_stack.size()) << std::endl;
    std::cout << static_cast<int>(expr_stack.size()) << std::endl;
    */
    conditionPositions.push_back(static_cast<int>(expr_stack.size()));
    blockStack.push_back(std::list<Stmt*>());
  }
  void enterIfelsecont(BX0Parser::IfelsecontContext * ctx) override{
    blockStack.push_back(std::list<Stmt*>());
  }
  void enterWhilee(BX0Parser::WhileeContext * ctx) override{
    conditionPositions.push_back(static_cast<int>(expr_stack.size()));
    blockStack.push_back(std::list<Stmt*>());
  }
  void exitIfelse(BX0Parser::IfelseContext * ctx) override{
    int condPos = conditionPositions.back();
    conditionPositions.pop_back();
    std::list<Expr*>::iterator it = expr_stack.begin();
    std::advance(it, condPos);
    Expr* condition = *it;
    printStack("Ifelse " + ctx->getText());
    std::cout << "Condition (" << condPos <<"): \n";
    condition->print(std::cout);
    std::cout << std::endl;
    Block* ifBlock, *elseBlock;
    if (ctx->ifelsecont() == nullptr){
      ifBlock = new Block(blockStack.back());
      blockStack.pop_back();
      elseBlock = new Block(std::list<Stmt*>());
    }
    else{
      elseBlock = new Block(blockStack.back());
      blockStack.pop_back();
      ifBlock = new Block(blockStack.back());
      blockStack.pop_back();
    }
    if (blockStack.size() == 0){
      prog.body.push_back(new ifElse(condition, ifBlock,elseBlock));
    }
    else{
      blockStack.back().push_back(new ifElse(condition, ifBlock,elseBlock));
    }
  }
  void exitWhilee(BX0Parser::WhileeContext * ctx) override{
    int condPos = conditionPositions.back();
    conditionPositions.pop_back();
    std::list<Expr*>::iterator it = expr_stack.begin();
    std::advance(it, condPos);
    Expr* condition = *it;
      printStack("Whilee" + ctx->getText());
    std::cout << "Condition (" << condPos <<"): \n";
    condition->print(std::cout);
    std::cout << std::endl;
    Block* block = new Block(blockStack.back());
    blockStack.pop_back();
    if (blockStack.size() == 0){
      prog.body.push_back(new Whilee(condition, block));
    }
    else{
      blockStack.back().push_back(new Whilee(condition, block));
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
  /*out << "movq $" << this->imm << ", " << 8 * (this->dest-1) << "(%rsp)\n";
  */return out;
}

std::ostream& MoveCp::print(std::ostream& out) const {
  /*out << "movq " << 8 * (this->source-1) << "(%rsp), %R8\n movq %R8, " << 8 * (this->dest-1) << "(%rsp)\n";
  */return out;
}

std::ostream& MoveBinop::print(std::ostream& out) const {
/*
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
  } */
 return out;
}

std::ostream& MoveUnop::print(std::ostream& out) const {
  /*out << "movq " <<8*(this->source -1) << " (%rsp), %R8\n";
  if (this->op == source::Unop::Negate){out << "negq %R8\n";}
  if (this->op == source::Unop::BitNot){out << "notq %R8\n";}
  out << "movq %R8, " << 8 * (this->dest -1 ) << "(%rsp)";
  */return out;
}

std::ostream& Print::print(std::ostream& out) const {
  /*out << "movq " << 8 * (this->source-1) << "(%rsp), %rdi\n";
  out << "callq bx0_print\n";
  */return out;
}

std::ostream& Comment::print(std::ostream& out) const {
  //out << "#" << this->comment << "\n";
  return out;
}

std::ostream& operator<<(std::ostream &out, Prog& prog) {
  /*for (auto i : prog.body)
    out << *i << std::endl;
  */return out;
}

} // bx::target

std::map<std::string, target::Dest*> table;

int varCounter = 0;
int blockCounter = 0 ;
std::list<target::Instr *> instructions;

std::list<target::Dest*> symbols;

target::Prog getTargetProg(const source::Prog prog){
  for (auto dclr : prog.vars){
      table[dclr->label] = new target::Dest(dclr->type, ++varCounter);
      symbols.push_back(table[dclr->label]);
      if (dclr->initValue != NULL){
        tdmunch_expr(dclr->initValue, table[dclr->label], instructions);
      }
  }
  for (auto stmt : prog.body){
    tdmunch_stmt(stmt, instructions);
  }
  return target::Prog(symbols, instructions);
}

void tdmunch_stmt(source::Stmt* stmt, std::list<target::Instr *>& instrction_list){
    if (auto mv = dynamic_cast<source::Move*>(stmt)){
      /*if (table.find(mv->dest->label) == table.end()){
        table[mv->dest->label] = new target::Dest(mv->dest->getType(), ++varCounter);
        symbols.push_back(table[mv->dest->label]);
      }*/
      tdmunch_expr(mv->source, table[mv->dest->label], instrction_list);
    }
    else if (auto pr = dynamic_cast<source::Print*>(stmt)){
      target::Dest* fresh = new target::Dest(pr->arg->getType(), ++varCounter);
      symbols.push_back(fresh);
      tdmunch_expr(pr->arg, fresh, instrction_list);
      instrction_list.push_back(new target::Print(fresh));
    }
    else if (auto ifels = dynamic_cast<source::ifElse*>(stmt)){
      target::Dest* fresh = new target::Dest(ifels->condition->getType(), ++varCounter);
      symbols.push_back(fresh);
      tdmunch_expr(ifels->condition, fresh, instrction_list);
      std::list<target::Instr *> ifBlock, elseBlock;
      for (auto stmtbis : ifels->ifBlock->statements){
        tdmunch_stmt(stmtbis, ifBlock);
      }
      for (auto stmtbis : ifels->elseBlock->statements){
        tdmunch_stmt(stmtbis, elseBlock);
      }
      std::string lab = "L" + std::to_string(++blockCounter);
      instrction_list.push_back(new jump(iflabel, fresh));

    }
}

void tdmunch_expr(const source::Expr* expr, target::Dest* dest, std::list<target::Instr *>& instrction_list){
  if (auto var = dynamic_cast<const source::Variable*>(expr)){
    instrction_list.push_back(new target::MoveCp(dest, table[var->label]));
  }
  if (auto imm = dynamic_cast<const source::Immediate*>(expr)){
    instrction_list.push_back(new target::MoveImm(dest, imm->value));
  }
  if (auto bol = dynamic_cast<const source::Bool*>(expr)){
    instrction_list.push_back(new target::MoveBool(dest, bol->value));
  }
  if (auto unop = dynamic_cast<const source::UnopApp*>(expr)){
    target::Dest* fresh = new target::Dest(unop->getType(), ++varCounter);
    symbols.push_back(fresh);
    tdmunch_expr(unop->arg, fresh, instrction_list);
    instrction_list.push_back(new target::MoveUnop(dest, unop->op, fresh));    
  }
  if (auto binop = dynamic_cast<const source::BinopApp*>(expr)){
    target::Dest* fresh1 = new target::Dest(binop->getType(), ++varCounter);
    symbols.push_back(fresh1);
    target::Dest* fresh2 = new target::Dest(binop->getType(), ++varCounter);
    symbols.push_back(fresh2);
    tdmunch_expr(binop-> left_arg, fresh1, instrction_list);
    tdmunch_expr(binop-> right_arg, fresh2, instrction_list);
    instrction_list.push_back(new target::MoveBinop(dest, fresh1, binop->op, fresh2));
  }
  if (auto compop = dynamic_cast<const source::Comparaison*>(expr)){
    target::Dest* fresh1 = new target::Dest(source::Type::BOOL, ++varCounter);
    symbols.push_back(fresh1);
    target::Dest* fresh2 = new target::Dest(source::Type::BOOL, ++varCounter);
    symbols.push_back(fresh2);
    tdmunch_expr(compop-> left_arg, fresh1, instrction_list);
    tdmunch_expr(compop-> right_arg, fresh2, instrction_list);
    instrction_list.push_back(new target::Compop(dest, fresh1, compop->op, fresh2));
  }
}

} // bx
