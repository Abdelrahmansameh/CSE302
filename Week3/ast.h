#pragma once

#include <iostream>
#include <string>

#include "antlr4-runtime.h"

namespace bx {

////////////////////////////////////////////////////////////////////////////////
// Source AST

namespace source {

using Dest = std::string;

enum class Type{
  INT,
  BOOL,
  INVALID,
};

std::ostream& operator<<(std::ostream&, const Type);

int getSize(const Type);

enum class Binop { 
  Add, 
  Subtract, 
  Multiply,
  Divide,
  Modulus,
  BitAnd,
  BitOr,
  BitXor,
  Lshift,
  Rshift,
  boolAnd,
  boolOr,
};
std::ostream& operator<<(std::ostream&, const Binop);

enum class Unop {
  Negate,
  BitNot,
  boolNot 
};
std::ostream& operator<<(std::ostream& out, const Unop);

enum class Compop{
  Equals,
  Leq,
  Geq,
  Le,
  Ge,
  Neq
};
std::ostream& operator<<(std::ostream&, const Compop);

////////////////////////////////////////////////////////////////////////////////
// AST Nodes

class ASTNode {
public:
  virtual std::ostream& print(std::ostream &out) const = 0;
};
std::ostream& operator<<(std::ostream& out, ASTNode& e);

////////////////////////////////////////////////////////////////////////////////
// Expressions

class Expr : public ASTNode { 
public:
  virtual Type getType() const;
};

class Variable : public Expr {
public:
  const Type type;
  const std::string label;
  Variable(std::string label, Type type) : label(label), type(type) { }
  std::ostream& print(std::ostream& out) const override;
  Type getType() const override;
};

class Immediate : public Expr {
public:
  const int value;
  Immediate(int value) : value(value) { }
  std::ostream& print(std::ostream& out) const override;
  Type getType() const override;
};

class Bool: public Expr{
public:
  const bool value;
  Bool(bool value): value(value){}
  std::ostream& print(std::ostream& out) const override;
  Type getType() const override;
};

class UnopApp : public Expr {
public:
  const Unop op;
  const Expr* arg;
  UnopApp(Unop op, Expr* arg) : op(op), arg(arg) { }
  UnopApp(Unop op, const Expr* arg) : op(op), arg(arg) { }
  std::ostream& print(std::ostream& out) const override;
  Type getType() const override;
};

class BinopApp : public Expr {
public:
  const Binop op;
  const Expr* left_arg;
  const Expr* right_arg;
  BinopApp(Expr *left_arg, Binop op, Expr* right_arg) :
    left_arg(left_arg), op(op), right_arg(right_arg) { }
  BinopApp(const Expr *left_arg, Binop op, const Expr* right_arg) :
    left_arg(left_arg), op(op), right_arg(right_arg) { }
  std::ostream& print(std::ostream& out) const override;
  Type getType() const override;
};

class Comparaison : public Expr{
public:
  const Compop op;
  const Expr* left_arg;
  const Expr* right_arg;
  Comparaison(Expr* left_arg, Compop op, Expr* right_arg) :
    left_arg(left_arg), op(op), right_arg(right_arg) { }
    
  std::ostream& print(std::ostream& out) const override;
  Type getType() const override;
};

////////////////////////////////////////////////////////////////////////////////
// Variable declaration

class VarDecl : public ASTNode{
public:
  const std::string label;
  Type type;
  const Expr* initValue;
  VarDecl(std::string label, Type type, Expr* initValue) : label(label), type(type), initValue(initValue) { };
  std::ostream& print(std::ostream& out) const override;
};
////////////////////////////////////////////////////////////////////////////////
// Statements

class Stmt : public ASTNode { };

class Print : public Stmt {
public:
  const Expr* arg;
  Print(Expr* arg) : arg(arg) { }
  std::ostream& print(std::ostream& out) const override ;
};

class Move : public Stmt {
public:
  const Variable* dest;
  const Expr* source;
  Move(Variable* dest, Expr* source) : dest(dest), source(source) { }
  std::ostream& print(std::ostream& out) const override;
};

class Block : public Stmt{
public:
  const std::list<Stmt*> statements;
  Block(std::list<Stmt*> statements) : statements(statements) { };
  std::ostream& print(std::ostream& out) const override;
};

class ifElse: public Stmt{
public:
  const Expr* condition;
  const Block* ifBlock;
  const Block* elseBlock;
  ifElse(Expr* condition, Block* ifBlock, Block* elseBlock): condition(condition), ifBlock(ifBlock), elseBlock(elseBlock) { };
  std::ostream& print(std::ostream& out) const override;
};

class Whilee: public Stmt{
public:
  const Expr* condition;
  const Block* block;
  Whilee(Expr* condition, Block* block): condition(condition), block(block) {};
  std::ostream& print(std::ostream& out) const override;
};

////////////////////////////////////////////////////////////////////////////////
// Program

class Prog{
public:
  std::list<VarDecl*> vars;
  std::list<Stmt*> body;
  //Prog(std::list<VarDecl*> vars, std::list<Stmt*> body): vars(vars), body(body) {};
  std::ostream& print(std::ostream& out) ;
};

////////////////////////////////////////////////////////////////////////////////
// Parsing

source::Prog read_program(std::string file);

} // bx::source


namespace target {

class Dest{
public: 
  source::Type type;
  int dest;
  Dest(source::Type type, int dest): type(type), dest(dest) {}
};

class Instr {
public:
  int label, outlabel;
  virtual std::ostream& print(std::ostream &out) const = 0;
};
std::ostream& operator<<(std::ostream& out, Instr& i);

class MoveImm : public Instr {
public:
  const int label, outlabel;
  const Dest* dest;
  const int imm;
  MoveImm(Dest* dest, int imm, int label, int outlabel) : dest(dest), imm(imm), 
  outlabel(outlabel), label(label){ }
  std::ostream& print(std::ostream &out) const override; // TODO in ast.cpp
};

class MoveBool: public Instr{
public:
  const int label, outlabel;
  const Dest* dest;
  const bool imm;
  MoveBool(Dest* dest, bool imm, int label, int outlabel): dest(dest), imm(imm),
  outlabel(outlabel), label(label) { }
  std::ostream& print(std::ostream &out) const override; 
};
class MoveCpBool : public Instr{
public:
  const int label, outlabel;
  const Dest* dest, *source;
  MoveCpBool(Dest* dest, Dest* source, bool bol, int label, int outlabel) : dest(dest), source(source), label(label),  
  outlabel(outlabel){ }
  std::ostream& print(std::ostream &out) const override;
};

class MoveCp : public Instr {
public:
  const int label, outlabel;
  const Dest* dest, *source;
  MoveCp(Dest* dest, Dest* source, int label, int outlabel) : dest(dest), source(source), label(label), 
  outlabel(outlabel)  { }
  std::ostream& print(std::ostream &out) const override; // TODO in ast.cpp
};

class MoveBinop : public Instr {
public:
  const int label, outlabel;
  const source::Binop op;
  const Dest* dest;
  const Dest* left_source, *right_source;
  MoveBinop(Dest* dest, Dest* left_source, source::Binop op, Dest* right_source, int label, int outlabel)
    : dest(dest), left_source(left_source), op(op), right_source(right_source), label(label),  
  outlabel(outlabel){ }
  std::ostream& print(std::ostream &out) const override; // TODO in ast.cpp
};

/*class Compop : public Instr {
public:
  const int label, outlabel;
  const source::Compop op;
  const Dest* dest;
  const Dest* left_source, *right_source;
  Compop(Dest* dest, Dest* left_source, source::Compop op, Dest* right_source, int label, int outlabel)
    : dest(dest), left_source(left_source), op(op), right_source(right_source), label(label) 
  outlabel(outlabel), label(label){ }
  std::ostream& print(std::ostream &out) const override; // TODO in ast.cpp
}; */

class MoveUnop : public Instr {
public:
  const int label, outlabel;
  const source::Unop op;
  const Dest* dest;
  const Dest* source;
  MoveUnop(Dest* dest, source::Unop op, Dest* source, int label, int outlabel)
  : dest(dest), op(op), source(source), label(label), 
  outlabel(outlabel){ }
  std::ostream& print(std::ostream &out) const override; // TODO in ast.cpp
};

class Print : public Instr {
public:
  const int label, outlabel;
  const Dest* source;
  Print(Dest* source, int label, int outlabel) : source(source), label(label), 
  outlabel(outlabel){ }
  std::ostream& print(std::ostream &out) const override; // TODO in ast.cpp
};

class UBranch: public Instr{
public:
  const int label, outlabel;
  const int outlabel2;
  const Dest* condition;
  UBranch(Dest* condition, int label, int outlabel, int outlabel2): label(label), outlabel2(outlabel2), outlabel(outlabel),
  condition(condition){}
  std::ostream& print(std::ostream &out) const override;
};

class BBranch: public Instr{
public:
  const int label, outlabel;
  const int outlabel2;
  const source::Compop op;
  const Dest* condition1, *condition2;
  BBranch(Dest* condition1, Dest* condition2, source::Compop op, int label, int outlabel, int outlabel2): label(label), outlabel(outlabel), 
  condition1(condition1), condition2(condition2), outlabel2(outlabel2), op(op) {}
  std::ostream& print(std::ostream &out) const override;
};

class Goto: public Instr{
public:
  const int label, outlabel;
  Goto(int label, int outlabel): label(label), outlabel(outlabel) { }
  std::ostream& print(std::ostream &out) const override;
};

class End: public Instr{
public:
  const int label;
  End(int label): label(label){ }
  std::ostream& print(std::ostream &out) const override;
};

class PrintBool: public Instr{
public:
  const int label, outlabel;
  const bool val;
  PrintBool(bool val, int label, int outlabel): val(val), label(label), outlabel(outlabel){ }
  std::ostream& print(std::ostream &out) const override;
};

/*
class Comment : public Instr {
public:
  const std::string comment;
  Comment(std::string comment) : comment(comment) { }
  std::ostream& print(std::ostream &out) const override; // TODO in ast.cpp
};

class jump: public Instr{
public:
  const Dest* condition;
  const std::string label;
  jump(Dest* condition, std::string label): condition(condition), label(label) {}
  std::ostream& print(std::ostream &out) const override {return out;};
};

class labeledBlock: public Instr{
public:
  const std::string label;
  const std::list<Instr*> block;
  labeledBlock(std::string label, std::list<Instr*> block): label(label), block(block) { }
  std::ostream& print(std::ostream &out) const override {return out;};
};
*/
class Prog {
public:
  const std::list<Dest*> symbol_table;
  const std::list<Instr*> body;
  int start;
  Prog(std::list<Dest*> symbol_table,
       std::list<Instr*> body, int start) :
    symbol_table(symbol_table), body(body), start(start) { }
  std::ostream& print(std::ostream &out) const;
};
std::ostream& operator<<(std::ostream& out, Prog &prog);

} // bx::target

target::Prog getTargetProg(const source::Prog prog);
int tdmunch_stmt(const source::Stmt* stmt, int Lo);
int tdmunch_expr_int(const source::Expr* expr, target::Dest* dest, int Lo);
int tdmunch_expr_bool(const source::Expr* expr, int Lt, int Lf);
} // bx

