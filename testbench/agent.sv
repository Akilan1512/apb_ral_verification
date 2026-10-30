class agent extends uvm_agent;
  
  `uvm_component_utils(agent)
  
  monitor mon;
  driver drv;
  sequencer seqr;
  apb_config m_cfg;
  
  function new(string name = "agent",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    
    super.build_phase(phase);
    
    if(!uvm_config_db#(apb_config)::get(this,"","apb_config",m_cfg))
      `uvm_error("config_error","unable to get config in agent");
    mon=monitor::type_id::create("mon",this);
    
    if(m_cfg.agnt_is_active==UVM_ACTIVE)begin
      drv=driver::type_id::create("drv",this);
      seqr = sequencer::type_id::create("seqr",this);
    end
    
  endfunction
  
  function void connect_phase(uvm_phase phase);
    
    super.connect_phase(phase);
    
    if(m_cfg.agnt_is_active==UVM_ACTIVE)
      drv.seq_item_port.connect(seqr.seq_item_export);
    
  endfunction
        
endclass
 
