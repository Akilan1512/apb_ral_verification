`include "defines.svh"
`include "uvm_macros.svh"
`include "apb_if.sv"
//`include "apb_config.sv"
`include "test_pkg.sv"
import uvm_pkg::*;
import test_pkg::*;
`timescale 1ns/1ps
module top;
  bit pclk;
  bit presetn;
  apb_if DUV_IF(pclk,presetn);
  initial begin
    pclk=0;
    forever #5 pclk = ~pclk;
  end
  apb_pkt_switch duv(.pclk(pclk),
      .presetn(DUV_IF.presetn),
      .psel(DUV_IF.psel),
      .penable(DUV_IF.penable),
      .pwrite(DUV_IF.pwrite),
      .paddr(DUV_IF.paddr),
                     .pwdata(DUV_IF.pwdata),
      .prdata(DUV_IF.prdata),
      .pready(DUV_IF.pready),
      .pslverr(DUV_IF.pslverr),
      .irq(DUV_IF.irq)
     );
  initial begin
    uvm_config_db#(virtual apb_if)::set(null,"*","apb_if",DUV_IF);
    $dumpfile("waves.fsdb");
    $dumpvars;
    run_test("test_1");
  end
  initial begin
    presetn=1'b0;
    #15
    presetn=1'b1;
  end
endmodule
