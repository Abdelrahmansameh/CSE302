#include <iostream>
#include <cstdlib>
#include <iomanip>

#include "antlr4-runtime.h"

#include "ast.h"

using namespace bx;

void display_source_program(source::Prog prog) {
  std::cout << "--- START OF AST ---\n";
  for (auto stmt : prog.body) {
    std::cout << *stmt << std::endl;
  }
  std::cout << "--- END OF AST ---\n";
}

int main(int argc, char **argv) {
  std::cout << std::boolalpha;   
  if (argc >= 2) {
    std::string bx_file{argv[1]};

    if (bx_file.size() < 3 ||
        bx_file.substr(bx_file.size() - 3, 3) != ".bx") {
      std::cerr << "Bad file name: " << bx_file << std::endl;
      std::exit(1);
    }

    std::cout << "compiling " << bx_file << "\n";
    auto prog = source::read_program(bx_file);
    std::cout << bx_file << " parsed.\n";
    prog.print(std::cout);

     //target::Prog tprog = getTargetProg(prog);


    //tprog.print(std::cout);
   

    // TODO: comment the following line of code out before submitting; it's only
    // meant for help with debuggin
    //display_source_program(prog);
    auto file_root = bx_file.substr(0, bx_file.size() - 3);
    auto c_file = file_root + ".s";
    auto exe_file = file_root + ".exe";


    target::Prog target_prog = getTargetProg(prog);
    //target_prog.print(std::cout);
    std::cout << "HERE\n";

    int to_alloc = target_prog.symbol_table.size();
    std::ofstream c_out;
    c_out.open(c_file);
    c_out << " .file \" " << file_root << ".bx \" \n";
    c_out << ".section .text\n";
    c_out << ".globl main \n";
    c_out << "main:\n";
    c_out << "pushq %rbp\n";
    c_out << "movq %rsp, %rbp\n";
    c_out << "subq $" << to_alloc * 8 + 8 << ", %rsp \n";
    c_out << "jmp .L1 \n";
    c_out << target_prog;
    c_out << ".Lend:\n";
    c_out << "\t movq %rbp, %rsp\n";
    c_out << "\t popq %rbp\n";
    c_out << "\t movq $0, %rax\n";
    c_out << "\t retq\n";
  
    c_out.close();
    std::cout << c_file << " written.\n";

    std::string cmd = "gcc -o " + exe_file + " " + c_file + " bx0_rt.c";
    std::cout << "Running: " << cmd << std::endl;
    if (std::system(cmd.c_str()) != 0) {
      std::cerr << "Could not run gcc successfully!\n";
      std::exit(2);
    }
    std::cout << exe_file << " created.\n";
  }
}
