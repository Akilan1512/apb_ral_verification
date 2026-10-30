class top_adapter extends uvm_reg_adapter;  
  `uvm_object_utils(top_adapter)
  function new(string name = "top_adapter");
    super.new(name);
  endfunction 
  virtual function uvm_sequence_item reg2bus(const ref uvm_reg_bus_op rw);
    seq_item tr;
    tr=seq_item::type_id::create("tr");
    //tr.penable = rw.byte_en;
    tr.pwrite  = (rw.kind == UVM_WRITE);
    tr.paddr   = rw.addr;
    tr.pslverr = rw.status;
    if(tr.pwrite)
      tr.pwdata  = rw.data;
//     tr.presetn = rw.presetn;
//     tr.psel    = rw.psel;
//     tr.penable = rw.penable;
//     tr.pwrite  = rw.pwrite ;
//     tr.paddr   = rw.paddr;
//     tr.pwdata  = rw.pwdata;
    return tr;
  endfunction
  //////bus2reg
  virtual function void bus2reg(uvm_sequence_item bus_item, ref uvm_reg_bus_op rw);
    seq_item tr;
    if(!$cast(tr, bus_item))
      `uvm_fatal("ADAPTER", "Failed to cast bus_item")
    rw.kind    = (tr.pwrite) ? UVM_WRITE : UVM_READ;
    rw.data    = (tr.pwrite) ? tr.pwdata : tr.prdata;
    rw.addr    = tr.paddr;
    rw.status = tr.pslverr?UVM_NOT_OK:UVM_IS_OK;
    $display("rw.data=%0h",rw.data);
//     rw.psel    = tr.psel;
//     rw.penable = tr.penable;
//     rw.pwrite  = tr.pwrite;
//     rw.paddr   = tr.paddr;
//     rw.pwdata  = tr.pwdata;
//     rw.presetn = tr.presetn;
  endfunction
endclass
