class env extends uvm_env;
  `uvm_component_utils(env)
  top_reg_block regblock_inst;
  top_adapter adapter_inst;
  uvm_reg_predictor#(seq_item)predictor_inst;
  agent agnt_h;
  apb_config m_cfg;
 // scoreboard scb_h;
 // subscriber sub_h;
  function new(string name = "env",uvm_component parent);
    super.new(name,parent);
  endfunction
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    regblock_inst = top_reg_block::type_id::create("regblock_inst");
    regblock_inst.build();
    regblock_inst.lock_model();
    adapter_inst = top_adapter::type_id::create("adapter_inst");
    predictor_inst = uvm_reg_predictor#(seq_item)::type_id::create("predictor_inst",this);  
    if(!uvm_config_db#(apb_config)::get(this,"","apb_config",m_cfg))
      `uvm_error("config_error","unable to get config in environment");
    agnt_h=agent::type_id::create("agnt_h",this);
   // scb_h=scoreboard::type_id::create("scb_h",this);
   // sub_h = subscriber::type_id::create("sub_h",this);
  endfunction
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    //connecting monitor with scoreboard
   // agnt_h.mon_h.mon_port.connect(scb_h);
    //connecting monitor with predictor
    //agnt_h.mon_h.mon_port.connect(predictor_inst.bus_in);
    //connecting top_reg_block & sequencer
    regblock_inst.default_map.set_sequencer(.sequencer(agnt_h.seqr),.adapter(adapter_inst));
    regblock_inst.default_map.set_base_addr(0);
    //connecting predictor with top_reg_block & adapter
    //predictor_inst.map = regblock_inst.default_map;
    //predictor_inst.adapter = adapter_inst;
    //Set auto predict to zero as we are not using implicit predictor
   
  endfunction
endclass
