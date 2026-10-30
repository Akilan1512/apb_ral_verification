// RO
class ro_reg_seq extends uvm_sequence#(seq_item);
  
  `uvm_object_utils(ro_reg_seq)
  
  top_reg_block regblock_inst;
  
  function new(string name = "ro_reg_seq");
    super.new(name);
  endfunction
  
  task body();
    
    uvm_status_e status;
    uvm_reg_data_t des, mir;
    
    bit[`DATA_W-1:0]r_data;
    bit[`DATA_W-1:0]w_data=32'd5;
    regblock_inst.lock.write(status, 32'hA5A5C3C3);
    
    //write
    
    //ro_reg_1
    regblock_inst.device_id.write(status,w_data);
    des=regblock_inst.device_id.get();
    mir=regblock_inst.device_id.get_mirrored_value();
    `uvm_info("|ro_reg_1|device_id",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
    
    //ro_reg_2
    regblock_inst.version.write(status,w_data);
    des=regblock_inst.version.get();
    mir=regblock_inst.version.get_mirrored_value();
    `uvm_info("|ro_reg_2|version",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
    
    //ro_reg_3
    regblock_inst.switch_status.write(status,w_data);
    des=regblock_inst.switch_status.get();
    mir=regblock_inst.switch_status.get_mirrored_value();
    `uvm_info("|ro_reg_3|switch_status",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
   
    //ro_reg_4
    regblock_inst.port_status.write(status,w_data);
    des=regblock_inst.port_status.get();
    mir=regblock_inst.port_status.get_mirrored_value();
    `uvm_info("|ro_reg_4|port_status",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
    
    //ro_reg_5
    regblock_inst.gen_status.write(status,w_data);
    des=regblock_inst.gen_status.get();
    mir=regblock_inst.gen_status.get_mirrored_value();
    `uvm_info("|ro_reg_5|gen_status",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
    
    //ro_reg_6
    regblock_inst.stat_rx.write(status,w_data);
    des=regblock_inst.stat_rx.get();
    mir=regblock_inst.stat_rx.get_mirrored_value();
    `uvm_info("|ro_reg_6|stat_rx",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
   
    //ro_reg_7
    regblock_inst.stat_tx.write(status,w_data);
    des=regblock_inst.stat_tx.get();
    mir=regblock_inst.stat_tx.get_mirrored_value();
    `uvm_info("|ro_reg_7|stat_tx",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
    
    //ro_reg_8
    regblock_inst.stat_drop.write(status,w_data);
    des=regblock_inst.stat_drop.get();
    mir=regblock_inst.stat_drop.get_mirrored_value();
    `uvm_info("|ro_reg_8|stat_drop",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
    
    //ro_reg_9
    regblock_inst.err_count.write(status,w_data);
    des=regblock_inst.err_count.get();
    mir=regblock_inst.err_count.get_mirrored_value();
    `uvm_info("|ro_reg_22|err_count",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
   
    //ro_reg_10
    regblock_inst.err_info.write(status,w_data);
    des=regblock_inst.err_info.get();
    mir=regblock_inst.err_info.get_mirrored_value();
    `uvm_info("|ro_reg_23|err_info",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);

    
    //read 
    
    //ro_reg_1
    regblock_inst.device_id.read(status,r_data);
    `uvm_info("|ro_reg_1|device_id",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    //ro_reg_2
    regblock_inst.version.read(status,r_data);
    `uvm_info("|ro_reg_2|version",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    //ro_reg_3
    regblock_inst.switch_status.read(status,r_data);
    `uvm_info("|ro_reg_3|switch_status",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    //ro_reg_4
    regblock_inst.port_status.read(status,r_data);
    `uvm_info("|ro_reg_4|port_status",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    //ro_reg_5
    regblock_inst.gen_status.read(status,r_data);
    `uvm_info("|ro_reg_5|gen_status",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    //ro_reg_6
    regblock_inst.stat_rx.read(status,r_data);
    `uvm_info("|ro_reg_6|stat_rx",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    //ro_reg_7
    regblock_inst.stat_tx.read(status,r_data);
    `uvm_info("|ro_reg_7|stat_tx",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    //ro_reg_8
    regblock_inst.stat_drop.read(status,r_data);
    `uvm_info("|ro_reg_8|stat_drop",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    //ro_reg_9
    regblock_inst.err_count.read(status,r_data);
    `uvm_info("|ro_reg_22|err_count",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    //ro_reg_10
    regblock_inst.err_info.read(status,r_data);
    `uvm_info("|ro_reg_23|err_info",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
  endtask
  
endclass

// WO
class wo_reg_seq extends uvm_sequence#(seq_item);
  
  `uvm_object_utils(wo_reg_seq)
  
  top_reg_block regblock_inst;
  
  function new(string name = "wo_reg_seq");
    super.new(name);
  endfunction
  
  task body();
    
    uvm_status_e status;
    uvm_reg_data_t des, mir;
    
    bit[`DATA_W-1:0]r_data;
    bit[`DATA_W-1:0]w_data=32'd5;
    
    //unlock configuration
    regblock_inst.lock.write(status, 32'hA5A5_C3C3);
    //enable all four ports
    regblock_inst.port_enable.write(status, 32'h0000_000F);
    //allow all destinations
    regblock_inst.fwd_enable.write(status, 32'h0000_000F);
    //enable switch & global interrupt
    regblock_inst.switch_ctrl.write(status, 32'h0000_0009);
    //seed(10),length(4),source(0),destination(1)
    regblock_inst.gen_pkt_cfg.write(status, 32'h0010_0401);
    //2_cycle inter packet gap
    regblock_inst.gen_interval.write(status, 32'h0000_0002);
    //generate four packets
    regblock_inst.gen_count.write(status, 32'h0000_0004);
    //enable gen_done & start_ack interrupts
    regblock_inst.irq_enable.write(status, 32'h0000_0041);
    //set enbale & pulse start
    regblock_inst.gen_ctrl.write(status, 32'h0000_0003);

    
    //write
    
    //wo_reg_1

    regblock_inst.irq_force.write(status,w_data);
    des=regblock_inst.irq_force.get();
    mir=regblock_inst.irq_force.get_mirrored_value();
    `uvm_info("|wo_reg_18|device_id",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
    
    //wo_reg_2
    regblock_inst.err_inject.write(status,w_data);
    des=regblock_inst.err_inject.get();
    mir=regblock_inst.err_inject.get_mirrored_value();
    `uvm_info("|wo_reg_21|device_id",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
    
    //wo_reg_3
    regblock_inst.soft_reset.write(status,w_data);
    des=regblock_inst.soft_reset.get();
    mir=regblock_inst.soft_reset.get_mirrored_value();
    `uvm_info("|wo_reg_25|device_id",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
    
    //read 
    
    //wo_reg_1
    regblock_inst.irq_force.read(status,r_data);
    `uvm_info("|wo_reg_18|irq_force",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    //wo_reg_2
    regblock_inst.err_inject.read(status,r_data);
    `uvm_info("|wo_reg_21|err_inject",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    //wo_reg_3
    regblock_inst.soft_reset.read(status,r_data);
    `uvm_info("|wo_reg_25|soft_reset",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
  endtask
  
endclass

// RW
class rw_reg_seq extends uvm_sequence#(seq_item);
  
  `uvm_object_utils(rw_reg_seq)
  
  top_reg_block regblock_inst;
  
  function new(string name = "rw_reg_seq");
    super.new(name);
  endfunction
  
  task body();
    
    uvm_status_e status;
    uvm_reg_data_t des, mir;
    
    bit[`DATA_W-1:0]r_data;
    bit[`DATA_W-1:0]w_data=32'd5;
    
    regblock_inst.lock.write(status, 32'hA5A5C3C3);
    
    //write
    
    //rw_reg_1
    regblock_inst.port_enable.write(status,w_data);
    des=regblock_inst.port_enable.get();
    mir=regblock_inst.port_enable.get_mirrored_value();
    `uvm_info("|rw_reg_10|port_enable",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
    
    //rw_reg_2
    regblock_inst.fwd_enable.write(status,w_data);
    des=regblock_inst.fwd_enable.get();
    mir=regblock_inst.fwd_enable.get_mirrored_value();
    `uvm_info("|rw_reg_11|fwd_enable",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
    
    //rw_reg_3
    regblock_inst.gen_pkt_cfg.write(status,w_data);
    des=regblock_inst.gen_pkt_cfg.get();
    mir=regblock_inst.gen_pkt_cfg.get_mirrored_value();
    `uvm_info("|rw_reg_13||gen_pkt_cfg",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
   
    //rw_reg_4
    regblock_inst.gen_interval.write(status,w_data);
    des=regblock_inst.gen_interval.get();
    mir=regblock_inst.gen_interval.get_mirrored_value();
    `uvm_info("|rw_reg_14|gen_interval",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
    
    //rw_reg_5
    regblock_inst.gen_count.write(status,w_data);
    des=regblock_inst.gen_count.get();
    mir=regblock_inst.gen_count.get_mirrored_value();
    `uvm_info("|rw_reg_15|gen_count",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
    
    //rw_reg_6
    regblock_inst.irq_enable.write(status,w_data);
    des=regblock_inst.irq_enable.get();
    mir=regblock_inst.irq_enable.get_mirrored_value();
    `uvm_info("|rw_reg_17|irq_enable",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
   
    //rw_reg_7
    regblock_inst.err_enable.write(status,w_data);
    des=regblock_inst.err_enable.get();
    mir=regblock_inst.err_enable.get_mirrored_value();
    `uvm_info("|rw_reg_20|err_enable",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
 
    //read
    
    //rw_reg_1
    regblock_inst.port_enable.read(status,r_data);
    `uvm_info("|rw_reg_10|port_enable",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    //rw_reg_2
    regblock_inst.fwd_enable.read(status,r_data);
    `uvm_info("|rw_reg_11|fwd_enable",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    //rw_reg_3
    regblock_inst.gen_pkt_cfg.read(status,r_data);
    `uvm_info("|rw_reg_13|gen_pkt_cfg",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    //rw_reg_4
    regblock_inst.gen_interval.read(status,r_data);
    `uvm_info("|rw_reg_14|gen_interval",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    //rw_reg_5
    regblock_inst.gen_status.read(status,r_data);
    `uvm_info("|rw_reg_15|gen_status",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    //rw_reg_6
    regblock_inst.irq_enable.read(status,r_data);
    `uvm_info("|rw_reg_17|irq_enable",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    //rw_reg_7
    regblock_inst.err_enable.read(status,r_data);
    `uvm_info("|rw_reg_20|err_enable",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
 
  endtask
  
endclass

// other regsiter 
class other_reg_seq extends uvm_sequence#(seq_item);
  
  `uvm_object_utils(other_reg_seq)
  
  top_reg_block regblock_inst;
  
  function new(string name = "other_reg_seq");
    super.new(name);
  endfunction
  
  task body();
    
    uvm_status_e status;
    uvm_reg_data_t des, mir;
    
    bit[`DATA_W-1:0]r_data;
    bit[`DATA_W-1:0]w_data=32'd5;
    
    regblock_inst.lock.write(status, 32'hA5A5C3C3);
    //write
    
    // rw/wo_reg_1
    regblock_inst.switch_ctrl.write(status,w_data);
    des=regblock_inst.switch_ctrl.get();
    mir=regblock_inst.switch_ctrl.get_mirrored_value();
    `uvm_info("|rw/wo_reg_9|switch_ctrl",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
    
    // rw/wo_reg_2
    regblock_inst.gen_ctrl.write(status,w_data);
    des=regblock_inst.gen_ctrl.get();
    mir=regblock_inst.gen_ctrl.get_mirrored_value();
    `uvm_info("|rw/wo_reg_12|gen_ctrl",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
    
    // w1c_reg_3
    regblock_inst.irq_status.write(status,w_data);
    des=regblock_inst.irq_status.get();
    mir=regblock_inst.irq_status.get_mirrored_value();
    `uvm_info("|w1c_reg_16|irq_status",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
   
    // w1c_reg_4
    regblock_inst.err_status.write(status,w_data);
    des=regblock_inst.err_status.get();
    mir=regblock_inst.err_status.get_mirrored_value();
    `uvm_info("|w1c_reg_19|err_status",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);
    
    // key_w/ro_reg_5
    regblock_inst.lock.write(status,w_data);
    des=regblock_inst.lock.get();
    mir=regblock_inst.lock.get_mirrored_value();
    `uvm_info("|key_w/ro_reg_24|lock",$sformatf("write Tx to DUT -> Desired_value : %0h | Mirror_value : %0h | w_data : %0h | status : %0s",des,mir,w_data,status),UVM_NONE);

    //read
    
    // rw/wo_reg_1
    regblock_inst.switch_ctrl.read(status,r_data);
    `uvm_info("|rw/wo_reg_9|switch_ctrl",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    // rw/wo_reg_2
    regblock_inst.gen_ctrl.read(status,r_data);
    `uvm_info("|rw/wo_reg_12|gen_ctrl",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    // w1c_reg_3
    regblock_inst.irq_status.read(status,r_data);
    `uvm_info("|w1c_reg_16|irq_status",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    // w1c_reg_4
    regblock_inst.err_status.read(status,r_data);
    `uvm_info("|w1c_reg_19|err_status",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
    // key_w/ro_reg_5
    regblock_inst.lock.read(status,r_data);
    `uvm_info("|key_w/ro_reg_24|lock",$sformatf("Read Rx from DUT -> r_data : %0h | status : %0s",r_data,status),UVM_NONE);
    
  endtask
  
endclass



/*class device_id_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(device_id_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="device_id_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.device_id.read(status,rdata);
      if (rdata != 32'h2A55357)`uvm_error("DEV_ID", "DEV_ID reset value ERROR")
      else`uvm_info("DEV_ID", $sformatf("DEV_ID after reset -> Read from DEV_ID: 0x%08h (EXP:0x2A55357)", rdata), UVM_LOW)
      reg_block.device_id.write(status,8'hFF);
      reg_block.device_id.read(status,rdata);

      if (rdata != 32'h2A55357) `uvm_error("DEV_ID", "DEV_ID reset value ERROR")
      else`uvm_info("DEV_ID", $sformatf("DEV_ID after write 8'hFF -> Read from DEV_ID: 0x%08h (EXP:0x2A55357)", rdata), UVM_LOW)
    endtask
endclass  
//Version id
class version_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(version_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="version_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.version.read(status,rdata);

      if (rdata != 32'h10200) `uvm_error("version", "version reset value ERROR")
        else `uvm_info("VERSION", $sformatf("version after reset -> Read from VER: 0x%08h (EXP:0x00010200)", rdata), UVM_LOW)
        reg_block.version.write(status,8'hFF);
        reg_block.version.read(status,rdata);
      if (rdata != 32'h10200) `uvm_error("DEV_ID", "VER reset value ERROR")
      else `uvm_info("VER", $sformatf("VER after write 8'hFF -> Read from VER: 0x%08h (EXP:0x00010200)", rdata), UVM_LOW)
    endtask
endclass
class switch_status_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(switch_status_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="switch_status_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.switch_status.read(status,rdata);

      if (rdata != 32'hF9) `uvm_error("SWITCH_STATUS", "switch_status reset value ERROR")
      else `uvm_info("SWITCH_STATUS", $sformatf("switch_status after reset -> Read from SWITCH_STATUS: 0x%08h (EXP:0x000000F9)", rdata), UVM_LOW)
        reg_block.switch_status.write(status,8'hFF);
        reg_block.switch_status.read(status,rdata);
      if (rdata != 32'hF9) `uvm_error("SWITCH_STATUS", "switch_status reset value ERROR")
        else `uvm_info("SWITCH_STATUS", $sformatf("switch_status after write 8'hFF -> Read from SWITCH_STATUS: 0x%08h (EXP:0x000000F9)", rdata), UVM_LOW)
    endtask
endclass
class port_status_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(port_status_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="port_status_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.port_status.read(status,rdata);

      if (rdata != 32'h0) `uvm_error("PORT_STATUS", "port_status reset value ERROR")
        else `uvm_info("PORT_STATUS", $sformatf("port_status after reset -> Read from PORT_STATUS: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
        reg_block.port_status.write(status,8'hFF);
        reg_block.port_status.read(status,rdata);
      if (rdata != 32'h0) `uvm_error("PORT_STATUS", "port_status reset value ERROR")
        else `uvm_info("PORT_STATUS", $sformatf("port_status after write 8'hFF -> Read from PORT_STATUS: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
    endtask
endclass
class gen_status_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(gen_status_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="gen_status_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.gen_status.read(status,rdata);

      if (rdata != 32'h0) `uvm_error("GEN_STATUS", "gen_status reset value ERROR")
        else `uvm_info("GEN_STATUS", $sformatf("gen_status after reset -> Read from GEN_STATUS: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
        reg_block.gen_status.write(status,8'hFF);
        reg_block.gen_status.read(status,rdata);
      if (rdata != 32'h0) `uvm_error("GEN_STATUS", "gen_status reset value ERROR")
        else `uvm_info("GEN_STATUS", $sformatf("gen_status after write 8'hFF -> Read from GEN_STATUS: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
    endtask
endclass
class stat_rx_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(stat_rx_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="stat_rx_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.stat_rx.read(status,rdata);

      if (rdata != 32'h0) `uvm_error("GEN_STATUS", "gen_status reset value ERROR")
        else `uvm_info("GEN_STATUS", $sformatf("gen_status after reset -> Read from GEN_STATUS: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
        reg_block.stat_rx.write(status,8'hFF);
        reg_block.stat_rx.read(status,rdata);
      if (rdata != 32'h0) `uvm_error("GEN_STATUS", "gen_status reset value ERROR")
        else `uvm_info("GEN_STATUS", $sformatf("gen_status after write 8'hFF -> Read from GEN_STATUS: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
    endtask
endclass
class stat_tx_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(stat_tx_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="stat_tx_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.stat_tx.read(status,rdata);

      if (rdata != 32'h0) `uvm_error("STAT_TX", "stat_tx reset value ERROR")
        else `uvm_info("STAT_TX", $sformatf("stat_tx after reset -> Read from STAT_TX: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
        reg_block.stat_tx.write(status,8'hFF);
        reg_block.stat_tx.read(status,rdata);
      if (rdata != 32'h0) `uvm_error("STAT_TX", "stat_tx reset value ERROR")
        else `uvm_info("STAT_TX", $sformatf("stat_tx after write 8'hFF -> Read from STAT_TX: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
    endtask
endclass
 
class stat_drop_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(stat_drop_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="stat_drop_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.stat_drop.read(status,rdata);

      if (rdata != 32'h0) `uvm_error("STAT_DROP", "stat_drop reset value ERROR")
        else `uvm_info("STAT_DROP", $sformatf("stat_drop after reset -> Read from STAT_DROP: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
        reg_block.stat_drop.write(status,8'hFF);
        reg_block.stat_drop.read(status,rdata);
      if (rdata != 32'h0) `uvm_error("STAT_DROP", "stat_drop reset value ERROR")
        else `uvm_info("STAT_DROP", $sformatf("stat_drop after write 8'hFF -> Read from STAT_DROP: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
    endtask
endclass
 
class switch_ctrl_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(switch_ctrl_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="switch_ctrl_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.switch_ctrl.read(status,rdata);
      if (rdata != 32'h0) `uvm_error("SWITCH_CTRL", "switch_ctrl reset value ERROR")
        else `uvm_info("SWITCH_CTRL", $sformatf("switch_ctrl after reset -> Read from SWITCH_CTRL: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
          reg_block.switch_ctrl.write(status,8'h09);
          reg_block.switch_ctrl.read(status,rdata);
      if (rdata == 32'h09) `uvm_error("SWITCH_CTRL", "switch_ctrl read value ERROR before unlock")
        else `uvm_info("SWITCH_CTRL", $sformatf("switch_ctrl after write 8'h09 and before unlock -> Read from SWITCH_CTRL: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
          reg_block.lock.write(status,32'hA5A5C3C3);
          reg_block.switch_ctrl.write(status,8'h09);
          reg_block.switch_ctrl.read(status,rdata);
      if (rdata != 32'h09) `uvm_error("SWITCH_CTRL", "switch_ctrl read value ERROR after unlock")
        else `uvm_info("SWITCH_CTRL", $sformatf("switch_ctrl after write 8'h09, after unlock -> Read from SWITCH_CTRL: 0x%08h (EXP:0x00000009)", rdata), UVM_LOW)
    endtask
endclass
 
class port_enable_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(port_enable_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="port_enable_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.port_enable.read(status,rdata);
      if (rdata != 32'hF) `uvm_error("PORT_ENABLE", "port_enable reset value ERROR")
        else `uvm_info("PORT_ENABLE", $sformatf("port_enable after reset -> Read from PORT_ENABLE: 0x%08h (EXP:0x0000000F)", rdata), UVM_LOW)
        reg_block.port_enable.write(status,8'hB);
        reg_block.port_enable.read(status,rdata);
      if (rdata == 32'hB) `uvm_error("PORT_ENABLE", "port_enable reset value ERROR before unlock")
        else `uvm_info("PORT_ENABLE", $sformatf("port_enable after write 8'hB, before unlock -> Read from PORT_ENABLE: 0x%08h (EXP:0x0000000F)", rdata), UVM_LOW)
          reg_block.lock.write(status,32'hA5A5C3C3); 
      reg_block.port_enable.write(status,8'hB);
      reg_block.port_enable.read(status,rdata);
      if (rdata != 32'hB) `uvm_error("PORT_ENABLE", "port_enable reset value ERROR after unlock")
        else `uvm_info("PORT_ENABLE", $sformatf("port_enable after write 8'hB, after unlock -> Read from PORT_ENABLE: 0x%08h (EXP:0x0000000B)", rdata), UVM_LOW)
    endtask
endclass
 
class fwd_enable_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(fwd_enable_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="fwd_enable_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.fwd_enable.read(status,rdata);

      if (rdata != 32'h0000000F) `uvm_error("FWD_ENABLE", "fwd_enable reset value ERROR")
        else `uvm_info("FWD_ENABLE", $sformatf("fwd_enable after reset -> Read from FWD_ENABLE: 0x%08h (EXP:0x0000000F)", rdata), UVM_LOW)
          reg_block.fwd_enable.write(status,8'hD);
        reg_block.fwd_enable.read(status,rdata);
      if (rdata == 32'h0000000D) `uvm_error("FWD_ENABLE", "fwd_enable reset value ERROR before unlock")
        else `uvm_info("FWD_ENABLE", $sformatf("fwd_enable after write 8'hD,before unlock -> Read from FWD_ENABLE: 0x%08h (EXP:0x0000000F)", rdata), UVM_LOW)
          reg_block.lock.write(status,32'hA5A5C3C3);
      reg_block.fwd_enable.write(status,8'hD);
      reg_block.fwd_enable.read(status,rdata);
      if (rdata != 32'h0000000D) `uvm_error("FWD_ENABLE", "fwd_enable reset value ERROR after unlock")
        else `uvm_info("FWD_ENABLE", $sformatf("fwd_enable after write 8'hD,before after -> Read from FWD_ENABLE: 0x%08h (EXP:0x0000000D)", rdata), UVM_LOW)
    endtask
endclass
 
class gen_ctrl_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(gen_ctrl_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="gen_ctrl_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.gen_ctrl.read(status,rdata);

      if (rdata != 32'h0) `uvm_error("GEN_CTRL", "gen_ctrl reset value ERROR")
        else `uvm_info("GEN_CTRL", $sformatf("gen_ctrl after reset -> Read from GEN_CTRL: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
        reg_block.gen_ctrl.write(status,8'hFF);
        reg_block.gen_ctrl.read(status,rdata);
      if (rdata == 32'h09) `uvm_error("GEN_CTRL", "gen_ctrl reset value ERROR before unlock")
        else `uvm_info("GEN_CTRL", $sformatf("gen_ctrl after write 8'hFF, before unlock -> Read from GEN_CTRL: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
          reg_block.lock.write(status,32'hA5A5C3C3);
      reg_block.gen_ctrl.write(status,8'hFF);
      reg_block.gen_ctrl.read(status,rdata);
      if (rdata != 32'h09) `uvm_error("GEN_CTRL", "gen_ctrl reset value ERROR")
        else `uvm_info("GEN_CTRL", $sformatf("gen_ctrl after write 8'hFF -> Read from GEN_CTRL: 0x%08h (EXP:0x00000009)", rdata), UVM_LOW)
    endtask
endclass
 
class gen_pkt_cfg_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(gen_pkt_cfg_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="gen_pkt_cfg_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.gen_pkt_cfg.read(status,rdata);

      if (rdata != 32'h00000401) `uvm_error("GEN_PKT_CFG", "gen_pkt_cfg reset value ERROR")
        else `uvm_info("GEN_PKT_CFG", $sformatf("gen_pkt_cfg after reset -> Read from GEN_PKT_CFG: 0x%08h (EXP:0x00000401)", rdata), UVM_LOW)
          reg_block.gen_pkt_cfg.write(status,32'hFFFF0F);
        reg_block.gen_pkt_cfg.read(status,rdata);
      if (rdata == 32'h0000001B) `uvm_error("GEN_PKT_CFG", "gen_pkt_cfg reset value ERROR before unlock")
        else `uvm_info("GEN_PKT_CFG", $sformatf("gen_pkt_cfg after write 32'hFFFF0F, before unlock -> Read from GEN_PKT_CFG: 0x%08h (EXP:0x00000401)", rdata), UVM_LOW)
          reg_block.lock.write(status,32'hA5A5C3C3);
      reg_block.gen_pkt_cfg.write(status,32'hFFFF0F);
        reg_block.gen_pkt_cfg.read(status,rdata);
      if (rdata != 32'hFFFF0F) `uvm_error("GEN_PKT_CFG", "gen_pkt_cfg reset value ERROR after unlock")
        else `uvm_info("GEN_PKT_CFG", $sformatf("gen_pkt_cfg after write 32'hFFFF0F, before unlock -> Read from GEN_PKT_CFG: 0x%08h (EXP:0x00FFFF0F)", rdata), UVM_LOW)
    endtask
endclass
 
class gen_interval_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(gen_interval_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="gen_interval_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.gen_interval.read(status,rdata);

      if (rdata != 32'h00000002) `uvm_error("GEN_INTERVAL", "gen_interval reset value ERROR")
        else `uvm_info("GEN_INTERVAL", $sformatf("gen_interval after reset -> Read from GEN_INTERVAL: 0x%08h (EXP:0x00000002)", rdata), UVM_LOW)
          reg_block.gen_interval.write(status,32'hFFFF);
        reg_block.gen_interval.read(status,rdata);
      if (rdata == 32'hFFFF) `uvm_error("GEN_INTERVAL", "gen_interval reset value ERROR before unlock")
        else `uvm_info("GEN_INTERVAL", $sformatf("gen_interval after write 32'hFFFF before unlock -> Read from GEN_INTERVAL: 0x%08h (EXP:0x00000002)", rdata), UVM_LOW)

      reg_block.lock.write(status,32'hA5A5C3C3);
      reg_block.gen_interval.write(status,32'hFFFF);
      reg_block.gen_interval.read(status,rdata);
      if (rdata != 32'hFFFF) `uvm_error("GEN_INTERVAL", "gen_interval reset value ERROR after unlock")
        else `uvm_info("GEN_INTERVAL", $sformatf("gen_interval after write 32'hFFFF after unlock -> Read from GEN_INTERVAL: 0x%08h (EXP:0x0000FFFF)", rdata), UVM_LOW)
    endtask
endclass
 
class gen_count_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(gen_count_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="gen_count_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.gen_count.read(status,rdata);

      if (rdata != 32'h00000004) `uvm_error("GEN_COUNT", "gen_count reset value ERROR")
        else `uvm_info("GEN_COUNT", $sformatf("gen_count after reset -> Read from GEN_COUNT: 0x%08h (EXP:0x00000004)", rdata), UVM_LOW)
          reg_block.gen_count.write(status,32'hFFFF);
        reg_block.gen_count.read(status,rdata);
      if (rdata == 32'h0000FFFF) `uvm_error("GEN_COUNT", "gen_count reset value ERROR before unlock")
        else `uvm_info("GEN_COUNT", $sformatf("gen_count after write 32'hFFFF before unlock -> Read from GEN_COUNT: 0x%08h (EXP:0x00000004)", rdata), UVM_LOW)
          reg_block.lock.write(status,32'hA5A5C3C3);
      reg_block.gen_count.write(status,32'hFFFF);
        reg_block.gen_count.read(status,rdata);
      if (rdata != 32'h0000FFFF) `uvm_error("GEN_COUNT", "gen_count reset value ERROR after unlock")
        else `uvm_info("GEN_COUNT", $sformatf("gen_count after write 32'hFFFF after unlock -> Read from GEN_COUNT: 0x%08h (EXP:0x0000FFFF)", rdata), UVM_LOW)
    endtask
endclass
 
class irq_status_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(irq_status_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="irq_status_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.irq_status.read(status,rdata);

      if (rdata != 32'h0) `uvm_error("IRQ_STATUS", "irq_status reset value ERROR")
        else `uvm_info("IRQ_STATUS", $sformatf("irq_status after reset -> Read from IRQ_STATUS: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
        reg_block.irq_status.write(status,8'hFF);
        reg_block.irq_status.read(status,rdata);
      if (rdata != 32'h0) `uvm_error("IRQ_STATUS", "irq_status reset value ERROR")
        else `uvm_info("IRQ_STATUS", $sformatf("irq_status after write 8'hFF -> Read from IRQ_STATUS: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
    endtask
endclass
 
class irq_enable_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(irq_enable_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="irq_enable_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.irq_enable.read(status,rdata);

      if (rdata != 32'h0) `uvm_error("IRQ_ENABLE", "irq_enable reset value ERROR")
        else `uvm_info("IRQ_ENABLE", $sformatf("irq_enable after reset -> Read from IRQ_ENABLE: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
        reg_block.irq_enable.write(status,8'hFF);
        reg_block.irq_enable.read(status,rdata);
      if (rdata == 32'h000000FF) `uvm_error("IRQ_ENABLE", "irq_enable reset value ERROR before unlock")
        else `uvm_info("IRQ_ENABLE", $sformatf("irq_enable after write 8'hFF unlock -> Read from IRQ_ENABLE: 0x%08h (EXP:0x000000FF)", rdata), UVM_LOW)
          reg_block.lock.write(status,32'hA5A5C3C3);
      reg_block.irq_enable.write(status,8'hFF);
        reg_block.irq_enable.read(status,rdata);
      if (rdata != 32'h000000FF) `uvm_error("IRQ_ENABLE", "irq_enable reset value ERROR")
        else `uvm_info("IRQ_ENABLE", $sformatf("irq_enable after write 8'hFF -> Read from IRQ_ENABLE: 0x%08h (EXP:0x000000FF)", rdata), UVM_LOW)
    endtask
endclass
 
class irq_force_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(irq_force_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="irq_force_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.irq_force.read(status,rdata);

      if (rdata != 32'h0) `uvm_error("IRQ_FORCE", "irq_force reset value ERROR")
        else `uvm_info("IRQ_FORCE", $sformatf("irq_force after reset -> Read from IRQ_FORCE: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
        reg_block.irq_force.write(status,8'hFF);
        reg_block.irq_force.read(status,rdata);
      if (rdata != 32'h0) `uvm_error("IRQ_FORCE", "irq_force reset value ERROR")
        else `uvm_info("IRQ_FORCE", $sformatf("irq_force after write 8'hFF -> Read from IRQ_FORCE: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
    endtask
endclass
 
class err_status_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(err_status_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="err_status_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.err_status.read(status,rdata);

      if (rdata != 32'h0) `uvm_error("ERR_STATUS", "err_status reset value ERROR")
        else `uvm_info("ERR_STATUS", $sformatf("err_status after reset -> Read from ERR_STATUS: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
        reg_block.err_status.write(status,8'hFF);
        reg_block.err_status.read(status,rdata);
      if (rdata != 32'h0) `uvm_error("ERR_STATUS", "err_status reset value ERROR")
        else `uvm_info("ERR_STATUS", $sformatf("err_status after write 8'hFF -> Read from ERR_STATUS: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
    endtask
endclass
 
class err_enable_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(err_enable_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="err_enable_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.err_enable.read(status,rdata);

      if (rdata != 32'h0) `uvm_error("ERR_ENABLE", "err_enable reset value ERROR")
        else `uvm_info("ERR_ENABLE", $sformatf("err_enable after reset -> Read from ERR_ENABLE: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
        reg_block.err_enable.write(status,8'hFF);
        reg_block.err_enable.read(status,rdata);
      if (rdata == 32'h000000FF) `uvm_error("ERR_ENABLE", "err_enable reset value ERROR before unlock")
        else `uvm_info("ERR_ENABLE", $sformatf("err_enable after write 8'hFF before unlock -> Read from ERR_ENABLE: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
          reg_block.lock.write(status,32'hA5A5C3C3);
      reg_block.err_enable.write(status,8'hFF);
        reg_block.err_enable.read(status,rdata);
      if (rdata != 32'h000000FF) `uvm_error("ERR_ENABLE", "err_enable reset value ERROR after unlock")
        else `uvm_info("ERR_ENABLE", $sformatf("err_enable after write 8'hFF after unlock -> Read from ERR_ENABLE: 0x%08h (EXP:0x000000FF)", rdata), UVM_LOW)
    endtask
endclass
 
class err_inject_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(err_inject_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="err_inject_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.err_inject.read(status,rdata);

      if (rdata != 32'h0) `uvm_error("ERR_INJECT", "err_inject reset value ERROR")
        else `uvm_info("ERR_INJECT", $sformatf("err_inject after reset -> Read from ERR_INJECT: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
      reg_block.err_inject.write(status,8'hFF);
      reg_block.err_inject.read(status,rdata);
      if (rdata != 32'h0) `uvm_error("ERR_INJECT", "err_inject reset value ERROR")
        else `uvm_info("ERR_INJECT", $sformatf("err_inject after write 8'hFF -> Read from ERR_INJECT: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
    endtask
endclass
 
class err_count_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(err_count_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="err_count_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.err_count.read(status,rdata);

      if(rdata != 32'h0) `uvm_error("ERR_COUNT", "err_count reset value ERROR")
        else `uvm_info("ERR_COUNT", $sformatf("err_count after reset -> Read from ERR_COUNT: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
        reg_block.err_count.write(status,8'hFF);
        reg_block.err_count.read(status,rdata);
      if (rdata != 32'h0) `uvm_error("ERR_COUNT", "err_count reset value ERROR")
        else `uvm_info("ERR_COUNT", $sformatf("err_count after write 8'hFF -> Read from ERR_COUNT: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
    endtask
endclass
 
class err_info_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(err_info_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="err_info_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.err_info.read(status,rdata);

      if (rdata != 32'h0) `uvm_error("ERR_INFO", "err_info reset value ERROR")
        else `uvm_info("ERR_INFO", $sformatf("err_info after reset -> Read from ERR_INFO: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
        reg_block.err_info.write(status,8'hFF);
        reg_block.err_info.read(status,rdata);
      if (rdata != 32'h0) `uvm_error("ERR_INFO", "err_info reset value ERROR")
        else `uvm_info("ERR_INFO", $sformatf("err_info after write 8'hFF -> Read from ERR_INFO: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
    endtask
endclass
 
class lock_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(lock_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="lock_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.lock.read(status,rdata);

      if(rdata != 32'h00000001) `uvm_error("LOCK", "lock reset value ERROR")
        else `uvm_info("LOCK", $sformatf("lock after reset -> Read from LOCK: 0x%08h (EXP:0x00000001)", rdata), UVM_LOW)
        reg_block.lock.write(status,8'hFF);
        reg_block.lock.read(status,rdata);
      if(rdata != 32'h00000001) `uvm_error("LOCK", "lock reset value ERROR")
        else `uvm_info("LOCK", $sformatf("lock after write 8'hFF -> Read from LOCK: 0x%08h (EXP:0x00000001)", rdata), UVM_LOW)
    endtask
endclass
 
class soft_reset_seq extends uvm_sequence #(seq_item);
    `uvm_object_utils(soft_reset_seq)
    top_reg_block reg_block;
    uvm_status_e status;
    uvm_reg_data_t rdata;
    function new(string name="soft_reset_seq");
      super.new(name);
    endfunction
    virtual task body();
      reg_block.reset();
      reg_block.soft_reset.read(status,rdata);

      if (rdata != 32'h0) `uvm_error("SOFT_RESET", "soft_reset reset value ERROR")
        else `uvm_info("SOFT_RESET", $sformatf("soft_reset after reset -> Read from SOFT_RESET: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
        reg_block.soft_reset.write(status,8'hFF);
        reg_block.soft_reset.read(status,rdata);
      if (rdata != 32'h0) `uvm_error("SOFT_RESET", "soft_reset reset value ERROR")
        else `uvm_info("SOFT_RESET", $sformatf("soft_reset after write 8'hFF -> Read from SOFT_RESET: 0x%08h (EXP:0x00000000)", rdata), UVM_LOW)
    endtask
endclass*/
