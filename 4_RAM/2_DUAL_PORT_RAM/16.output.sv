UVM_INFO @ 0: reporter [RNTST] Running test dr_test...
UVM_INFO test.sv(24) @ 0: uvm_test_top [TEST] printing topology
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh(594) @ 0: reporter [UVMTOP] UVM testbench topology:
--------------------------------------------------------------
Name                       Type                    Size  Value
--------------------------------------------------------------
uvm_test_top               dr_test                 -     @350 
  env                      dr_environment          -     @363 
    agt                    sr_agent                -     @372 
      drv                  dr_driver               -     @576 
        rsp_port           uvm_analysis_port       -     @595 
        seq_item_port      uvm_seq_item_pull_port  -     @585 
      mon                  dr_monitor              -     @605 
        analysis_port      uvm_analysis_port       -     @617 
        dr_analysis_port   uvm_analysis_port       -     @628 
      seqr                 sr_sequencer            -     @439 
        rsp_export         uvm_analysis_export     -     @448 
        seq_item_export    uvm_seq_item_pull_imp   -     @566 
        arbitration_queue  array                   0     -    
        lock_queue         array                   0     -    
        num_last_reqs      integral                32    'd1  
        num_last_rsps      integral                32    'd1  
    cov                    dr_coverage             -     @400 
      analysis_imp         uvm_analysis_imp        -     @409 
    dr_scb                 dr_scoreboard           -     @419 
      analysis_import      uvm_analysis_imp        -     @428 
    scb                    sr_scoreboard           -     @381 
      analysis_import      uvm_analysis_imp        -     @390 
--------------------------------------------------------------

UVM_INFO sequence.sv(16) @ 0: uvm_test_top.env.agt.seqr@@seq [SEQUENCE] Starting sequence items generation
extended driver : 0 | en = 1 | wr_en = 0 | data_in = f | addr = 5 | data_out = 0b_en = 1 | b_wr_en = 0 | b_data_in = 9 | b_addr = 2 | b_data_out = 0extended monitor : 5000 | en = 1 | wr_en = 0 | data_in = f | addr = 5 | data_out = 0
 b_en = 1 | b_wr_en = 0 | b_data_in = 9 | b_addr = 2 | b_data_out = 0scoreboard mode0 : 5000 | en = 1 | wr_en = 0 | data_in = f | addr = 5 | data_out = 0
| en = 1 | b_wr_en = 0 | b_data_in = 9 | b_addr = 2 | b_data_out = 0-------------------------------------------------------------
UVM_INFO dr_scoreboard.sv(144) @ 5000: uvm_test_top.env.dr_scb [dr_scoreboard]              PORT A - PASS                   
-------------------------------------------------------------
-------------------------------------------------------------
UVM_INFO dr_scoreboard.sv(156) @ 5000: uvm_test_top.env.dr_scb [dr_scoreboard]              PORT B - PASS                   
-------------------------------------------------------------
extended driver : 10000 | en = 0 | wr_en = 1 | data_in = 6 | addr = 7 | data_out = 0b_en = 1 | b_wr_en = 1 | b_data_in = 4 | b_addr = 3 | b_data_out = 0	-- enable and port B write enable ON
extended monitor : 15000 | en = 0 | wr_en = 1 | data_in = 6 | addr = 7 | data_out = 0
 b_en = 1 | b_wr_en = 1 | b_data_in = 4 | b_addr = 3 | b_data_out = 0scoreboard mode0 : 15000 | en = 0 | wr_en = 1 | data_in = 6 | addr = 7 | data_out = 0
| en = 1 | b_wr_en = 1 | b_data_in = 4 | b_addr = 3 | b_data_out = 0-------------------------------------------------------------
UVM_INFO dr_scoreboard.sv(144) @ 15000: uvm_test_top.env.dr_scb [dr_scoreboard]              PORT A - PASS                   
-------------------------------------------------------------
-------------------------------------------------------------
UVM_INFO dr_scoreboard.sv(156) @ 15000: uvm_test_top.env.dr_scb [dr_scoreboard]              PORT B - PASS                   
-------------------------------------------------------------
extended driver : 20000 | en = 0 | wr_en = 1 | data_in = 6 | addr = 4 | data_out = 0b_en = 1 | b_wr_en = 1 | b_data_in = 9 | b_addr = 5 | b_data_out = 0	-- enable and port B write enable ON
extended monitor : 25000 | en = 0 | wr_en = 1 | data_in = 6 | addr = 4 | data_out = 0
 b_en = 1 | b_wr_en = 1 | b_data_in = 9 | b_addr = 5 | b_data_out = 0scoreboard mode0 : 25000 | en = 0 | wr_en = 1 | data_in = 6 | addr = 4 | data_out = 0
| en = 1 | b_wr_en = 1 | b_data_in = 9 | b_addr = 5 | b_data_out = 0-------------------------------------------------------------
UVM_INFO dr_scoreboard.sv(144) @ 25000: uvm_test_top.env.dr_scb [dr_scoreboard]              PORT A - PASS                   
-------------------------------------------------------------
-------------------------------------------------------------
UVM_INFO dr_scoreboard.sv(156) @ 25000: uvm_test_top.env.dr_scb [dr_scoreboard]              PORT B - PASS                   
-------------------------------------------------------------
extended driver : 30000 | en = 0 | wr_en = 1 | data_in = e | addr = 6 | data_out = 0b_en = 1 | b_wr_en = 1 | b_data_in = 6 | b_addr = 7 | b_data_out = 0	-- enable and port B write enable ON
extended monitor : 35000 | en = 0 | wr_en = 1 | data_in = e | addr = 6 | data_out = 0
 b_en = 1 | b_wr_en = 1 | b_data_in = 6 | b_addr = 7 | b_data_out = 0scoreboard mode0 : 35000 | en = 0 | wr_en = 1 | data_in = e | addr = 6 | data_out = 0
| en = 1 | b_wr_en = 1 | b_data_in = 6 | b_addr = 7 | b_data_out = 0-------------------------------------------------------------
UVM_INFO dr_scoreboard.sv(144) @ 35000: uvm_test_top.env.dr_scb [dr_scoreboard]              PORT A - PASS                   
-------------------------------------------------------------
-------------------------------------------------------------
UVM_INFO dr_scoreboard.sv(156) @ 35000: uvm_test_top.env.dr_scb [dr_scoreboard]              PORT B - PASS                   
-------------------------------------------------------------
extended driver : 40000 | en = 1 | wr_en = 0 | data_in = 3 | addr = 7 | data_out = 0b_en = 1 | b_wr_en = 1 | b_data_in = 3 | b_addr = 2 | b_data_out = 0	-- enable and port B write enable ON
extended monitor : 45000 | en = 1 | wr_en = 0 | data_in = 3 | addr = 7 | data_out = 0
 b_en = 1 | b_wr_en = 1 | b_data_in = 3 | b_addr = 2 | b_data_out = 0scoreboard mode0 : 45000 | en = 1 | wr_en = 0 | data_in = 3 | addr = 7 | data_out = 0
| en = 1 | b_wr_en = 1 | b_data_in = 3 | b_addr = 2 | b_data_out = 0-------------------------------------------------------------
UVM_INFO dr_scoreboard.sv(144) @ 45000: uvm_test_top.env.dr_scb [dr_scoreboard]              PORT A - PASS                   
-------------------------------------------------------------
-------------------------------------------------------------
UVM_INFO dr_scoreboard.sv(156) @ 45000: uvm_test_top.env.dr_scb [dr_scoreboard]              PORT B - PASS                   
-------------------------------------------------------------
extended driver : 50000 | en = 0 | wr_en = 0 | data_in = 0 | addr = 0 | data_out = 0b_en = 1 | b_wr_en = 1 | b_data_in = 4 | b_addr = 1 | b_data_out = 0	-- enable and port B write enable ON
extended monitor : 55000 | en = 0 | wr_en = 0 | data_in = 0 | addr = 0 | data_out = 0
 b_en = 1 | b_wr_en = 1 | b_data_in = 4 | b_addr = 1 | b_data_out = 0scoreboard mode0 : 55000 | en = 0 | wr_en = 0 | data_in = 0 | addr = 0 | data_out = 0
| en = 1 | b_wr_en = 1 | b_data_in = 4 | b_addr = 1 | b_data_out = 0-------------------------------------------------------------
UVM_INFO dr_scoreboard.sv(144) @ 55000: uvm_test_top.env.dr_scb [dr_scoreboard]              PORT A - PASS                   
-------------------------------------------------------------
-------------------------------------------------------------
UVM_INFO dr_scoreboard.sv(156) @ 55000: uvm_test_top.env.dr_scb [dr_scoreboard]              PORT B - PASS                   
-------------------------------------------------------------
extended driver : 60000 | en = 0 | wr_en = 1 | data_in = e | addr = 4 | data_out = 0b_en = 1 | b_wr_en = 1 | b_data_in = 4 | b_addr = 3 | b_data_out = 0	-- enable and port B write enable ON
extended monitor : 65000 | en = 0 | wr_en = 1 | data_in = e | addr = 4 | data_out = 0
 b_en = 1 | b_wr_en = 1 | b_data_in = 4 | b_addr = 3 | b_data_out = 0scoreboard mode0 : 65000 | en = 0 | wr_en = 1 | data_in = e | addr = 4 | data_out = 0
| en = 1 | b_wr_en = 1 | b_data_in = 4 | b_addr = 3 | b_data_out = 0-------------------------------------------------------------
UVM_INFO dr_scoreboard.sv(144) @ 65000: uvm_test_top.env.dr_scb [dr_scoreboard]              PORT A - PASS                   
-------------------------------------------------------------
-------------------------------------------------------------
UVM_INFO dr_scoreboard.sv(156) @ 65000: uvm_test_top.env.dr_scb [dr_scoreboard]              PORT B - PASS                   
-------------------------------------------------------------
extended driver : 70000 | en = 1 | wr_en = 1 | data_in = 8 | addr = 5 | data_out = 0b_en = 1 | b_wr_en = 1 | b_data_in = 2 | b_addr = 2 | b_data_out = 0	-- enable and port A write enable ON
extended monitor : 75000 | en = 1 | wr_en = 1 | data_in = 8 | addr = 5 | data_out = 0
 b_en = 1 | b_wr_en = 1 | b_data_in = 2 | b_addr = 2 | b_data_out = 3scoreboard mode0 : 75000 | en = 1 | wr_en = 1 | data_in = 8 | addr = 5 | data_out = 0
| en = 1 | b_wr_en = 1 | b_data_in = 2 | b_addr = 2 | b_data_out = 3-------------------------------------------------------------
UVM_INFO dr_scoreboard.sv(144) @ 75000: uvm_test_top.env.dr_scb [dr_scoreboard]              PORT A - PASS                   
-------------------------------------------------------------
-------------------------------------------------------------
UVM_INFO dr_scoreboard.sv(156) @ 75000: uvm_test_top.env.dr_scb [dr_scoreboard]              PORT B - PASS                   
-------------------------------------------------------------

UVM_INFO coverage.sv(127) @ 80000: uvm_test_top.env.cov [COVERAGE] ---------------------------------------------------------
  UVM_INFO coverage.sv(128) @ 80000: uvm_test_top.env.cov [COVERAGE] DPRAM functional coverage = 100.00%
UVM_INFO coverage.sv(129) @ 80000: uvm_test_top.env.cov [COVERAGE] ---------------------------------------------------------
--- UVM Report Summary ---

** Report counts by severity
UVM_INFO :   28
UVM_WARNING :    0
UVM_ERROR :    0
UVM_FATAL :    0
** Report counts by id
[COVERAGE]     6
[RNTST]     1
[SEQUENCE]     1
[TEST]     1
[TEST_DONE]     1
[UVM/RELNOTES]     1
[UVMTOP]     1
[dr_scoreboard]    16

$finish called from file "/apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh", line 532.
$finish at simulation time                80000
