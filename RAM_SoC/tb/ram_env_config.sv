
//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

// extend ram_env_config from uvm_object

class ram_env_config extends uvm_object;



//------------------------------------------
// Data Members
//------------------------------------------
// Whether env analysis components are used:
bit has_functional_coverage = 0;
bit has_wagent_functional_coverage = 0;
bit has_scoreboard = 1;
// Whether the various agents are used:
bit has_wagent = 1;
bit has_ragent = 1;
// Whether the virtual sequencer is used:
bit has_virtual_sequencer = 1;
// LAB :  Declare dynamic array of handles for the sub_components
// ram_wr_agent_config & ram_rd_agent_config as m_wr_agent_cfg
// & m_rd_agent_cfg
ram_wr_agent_config m_wr_agent_cfg[];
ram_rd_agent_config m_rd_agent_cfg[];

// LAB :  Declare variable no_of_duts as int which can be set to the required dut value
int no_of_duts;

`uvm_object_utils(ram_env_config)






//------------------------------------------
// Methods
//------------------------------------------
// Standard UVM Methods:
extern function new(string name = "ram_env_config");

endclass: ram_env_config
//-----------------  constructor new method  -------------------//

function ram_env_config::new(string name = "ram_env_config");
  super.new(name);
endfunction


