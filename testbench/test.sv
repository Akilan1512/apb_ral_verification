class test extends uvm_test;
  `uvm_component_utils(test)
  env env1;
  apb_config m_cfg;
  function new(string name = "test",uvm_component parent);
    super.new(name,parent);
  endfunction
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    m_cfg = apb_config::type_id::create("m_cfg");
    if(!uvm_config_db#(virtual apb_if)::get(this,"","apb_if",m_cfg.vif))
      `uvm_error("config_error","unable to get vif in test");
    uvm_config_db#(apb_config)::set(this,"*","apb_config",m_cfg);
    m_cfg.agnt_is_active = UVM_ACTIVE; 
    env1=env::type_id::create("env1",this);
  endfunction
endclass
//1
class test_1 extends test;
  `uvm_component_utils(test_1)
  wo_reg_seq wo_seq;
  ro_reg_seq ro_seq;
  rw_reg_seq rw_seq; 
  other_reg_seq other_seq; 
  function new(string name = "test_1",uvm_component parent=null); 
    super.new(name,parent);
  endfunction
  task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    fork
    begin
      ro_seq=ro_reg_seq::type_id::create("ro_seq");
      ro_seq.regblock_inst=env1.regblock_inst;
      ro_seq.start(env1.agnt_h.seqr);
    end
    begin
      rw_seq=rw_reg_seq::type_id::create("rw_seq");
      rw_seq.regblock_inst=env1.regblock_inst;
      rw_seq.start(env1.agnt_h.seqr);
    end
    begin
      other_seq=other_reg_seq::type_id::create("other_seq");
      other_seq.regblock_inst=env1.regblock_inst;
      other_seq.start(env1.agnt_h.seqr);
    end
    join
    begin
      wo_seq=wo_reg_seq::type_id::create("wo_seq");
      wo_seq.regblock_inst=env1.regblock_inst;
      wo_seq.start(env1.agnt_h.seqr);
    end
    fork
    begin
      ro_seq=ro_reg_seq::type_id::create("ro_seq");
      ro_seq.regblock_inst=env1.regblock_inst;
      ro_seq.start(env1.agnt_h.seqr);
    end
    begin
      rw_seq=rw_reg_seq::type_id::create("rw_seq");
      rw_seq.regblock_inst=env1.regblock_inst;
      rw_seq.start(env1.agnt_h.seqr);
    end
    begin
      other_seq=other_reg_seq::type_id::create("other_seq");
      other_seq.regblock_inst=env1.regblock_inst;
      other_seq.start(env1.agnt_h.seqr);
    end
    join
    $display("\n========== FUNCTIONAL COVERAGE REPORT =========="); 
    $display("Coverage: %0.2f%%", $get_coverage());
    phase.drop_objection(this);
    phase.phase_done.set_drain_time(this,200);
  endtask
endclass
