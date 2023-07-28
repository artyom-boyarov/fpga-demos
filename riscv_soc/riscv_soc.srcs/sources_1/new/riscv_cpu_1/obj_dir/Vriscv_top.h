// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VRISCV_TOP_H_
#define _VRISCV_TOP_H_  // guard

#include "verilated.h"

//==========

class Vriscv_top__Syms;
class Vriscv_top_VerilatedVcd;


//----------

VL_MODULE(Vriscv_top) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clk,0,0);
    VL_IN8(reset,0,0);
    VL_IN(instruction,31,0);
    VL_OUT(imem_addr,31,0);
    VL_OUT(x1,31,0);
    VL_OUT(x2,31,0);
    VL_OUT(x3,31,0);
    VL_OUT(x4,31,0);
    VL_OUT(x5,31,0);
    VL_OUT(x6,31,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    CData/*0:0*/ riscv_top__DOT__regfile_we;
    CData/*4:0*/ riscv_top__DOT__regfile_regA;
    CData/*0:0*/ riscv_top__DOT__alu_A_sel;
    CData/*0:0*/ riscv_top__DOT__alu_B_sel;
    CData/*0:0*/ riscv_top__DOT__alu_sel1;
    CData/*2:0*/ riscv_top__DOT__aluop;
    CData/*2:0*/ riscv_top__DOT__branch_op;
    CData/*0:0*/ riscv_top__DOT__mem_we;
    CData/*0:0*/ riscv_top__DOT__pc_sel;
    CData/*1:0*/ riscv_top__DOT__wb_sel;
    CData/*2:0*/ riscv_top__DOT__imm_sel;
    CData/*6:0*/ riscv_top__DOT__Control__DOT__opcode;
    IData/*31:0*/ riscv_top__DOT__pc;
    IData/*31:0*/ riscv_top__DOT__write_back;
    IData/*31:0*/ riscv_top__DOT__regfile_dataA;
    IData/*31:0*/ riscv_top__DOT__regfile_dataB;
    IData/*31:0*/ riscv_top__DOT__alu_dataA;
    IData/*31:0*/ riscv_top__DOT__alu_dataB;
    IData/*31:0*/ riscv_top__DOT__alu_result;
    IData/*31:0*/ riscv_top__DOT__immediate;
    IData/*31:0*/ riscv_top__DOT__write_addr;
    IData/*31:0*/ riscv_top__DOT__data;
    IData/*31:0*/ riscv_top__DOT__read_addr;
    IData/*31:0*/ riscv_top__DOT__mem_out;
    IData/*31:0*/ riscv_top__DOT__wb_to_pc_sel;
    IData/*31:0*/ riscv_top__DOT__RegFile__DOT__regs[32];
    IData/*31:0*/ riscv_top__DOT__dmem__DOT__dmem[64];
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*0:0*/ __Vclklast__TOP__clk;
    CData/*0:0*/ __Vm_traceActivity[3];
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    Vriscv_top__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vriscv_top);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    Vriscv_top(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vriscv_top();
    /// Trace signals in the model; called by application code
    void trace(VerilatedVcdC* tfp, int levels, int options = 0);
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval() { eval_step(); }
    /// Evaluate when calling multiple units/models per time step.
    void eval_step();
    /// Evaluate at end of a timestep for tracing, when using eval_step().
    /// Application must call after all eval() and before time changes.
    void eval_end_step() {}
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(Vriscv_top__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(Vriscv_top__Syms* symsp, bool first);
  private:
    static QData _change_request(Vriscv_top__Syms* __restrict vlSymsp);
    static QData _change_request_1(Vriscv_top__Syms* __restrict vlSymsp);
  public:
    static void _combo__TOP__3(Vriscv_top__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(Vriscv_top__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(Vriscv_top__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(Vriscv_top__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__1(Vriscv_top__Syms* __restrict vlSymsp);
    static void _settle__TOP__2(Vriscv_top__Syms* __restrict vlSymsp) VL_ATTR_COLD;
  private:
    static void traceChgSub0(void* userp, VerilatedVcd* tracep);
    static void traceChgTop0(void* userp, VerilatedVcd* tracep);
    static void traceCleanup(void* userp, VerilatedVcd* /*unused*/);
    static void traceFullSub0(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceFullTop0(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceInitSub0(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceInitTop(void* userp, VerilatedVcd* tracep) VL_ATTR_COLD;
    void traceRegister(VerilatedVcd* tracep) VL_ATTR_COLD;
    static void traceInit(void* userp, VerilatedVcd* tracep, uint32_t code) VL_ATTR_COLD;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
