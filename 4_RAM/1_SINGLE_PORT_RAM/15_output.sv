// UVM -- SRAM OUTPUT 


UVM_INFO @ 0: reporter [RNTST] Running test sr_test...
UVM_INFO test.sv(24) @ 0: uvm_test_top [TEST] printing topology
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh(594) @ 0: reporter [UVMTOP] UVM testbench topology:
--------------------------------------------------------------
Name                       Type                    Size  Value
--------------------------------------------------------------
uvm_test_top               sr_test                 -     @341 
  env                      sr_environment          -     @354 
    agt                    sr_agent                -     @363 
      drv                  sr_driver               -     @548 
        rsp_port           uvm_analysis_port       -     @567 
        seq_item_port      uvm_seq_item_pull_port  -     @557 
      mon                  sr_monitor              -     @577 
        analysis_port      uvm_analysis_port       -     @588 
      seqr                 sr_sequencer            -     @411 
        rsp_export         uvm_analysis_export     -     @420 
        seq_item_export    uvm_seq_item_pull_imp   -     @538 
        arbitration_queue  array                   0     -    
        lock_queue         array                   0     -    
        num_last_reqs      integral                32    'd1  
        num_last_rsps      integral                32    'd1  
    cov                    sr_coverage             -     @391 
      analysis_imp         uvm_analysis_imp        -     @400 
    scb                    sr_scoreboard           -     @372 
      analysis_import      uvm_analysis_imp        -     @381 
--------------------------------------------------------------

UVM_INFO sequence.sv(16) @ 0: uvm_test_top.env.agt.seqr@@seq [SEQUENCE] Starting sequence items generation
driver : 0 | en = 1 | wr_en = 0 | data_in = 91 | addr = 5 | data_out = 0	-- write enable OFF
monitor : 5000 | en = 1 | wr_en = 0 | data_in = 91 | addr = 5 | data_out = 0
UVM_INFO scoreboard.sv(37) @ 5000: uvm_test_top.env.scb [SCOREBOARD]  received to scoreboard = 
---------------------------------------
Name        Type            Size  Value
---------------------------------------
trans       sr_transaction  -     @616 
  en        integral        1     'b1  
  wr_en     integral        1     'h0  
  data_in   integral        8     'h91 
  addr      integral        3     'h5  
  data_out  integral        8     'h0  
---------------------------------------

UVM_INFO scoreboard.sv(78) @ 5000: uvm_test_top.env.scb [sr_scoreboard] ------------------- PASS -----------------

driver : 10000 | en = 1 | wr_en = 1 | data_in = d1 | addr = 5 | data_out = 0	-- enable and write enable ON
monitor : 15000 | en = 1 | wr_en = 1 | data_in = d1 | addr = 5 | data_out = 0
UVM_INFO scoreboard.sv(37) @ 15000: uvm_test_top.env.scb [SCOREBOARD]  received to scoreboard = 
---------------------------------------
Name        Type            Size  Value
---------------------------------------
trans       sr_transaction  -     @671 
  en        integral        1     'b1  
  wr_en     integral        1     'h1  
  data_in   integral        8     'hd1 
  addr      integral        3     'h5  
  data_out  integral        8     'h0  
---------------------------------------

UVM_INFO scoreboard.sv(78) @ 15000: uvm_test_top.env.scb [sr_scoreboard] ------------------- PASS -----------------

driver : 20000 | en = 1 | wr_en = 0 | data_in = cf | addr = 2 | data_out = 0	-- write enable OFF
monitor : 25000 | en = 1 | wr_en = 0 | data_in = cf | addr = 2 | data_out = 0
UVM_INFO scoreboard.sv(37) @ 25000: uvm_test_top.env.scb [SCOREBOARD]  received to scoreboard = 
---------------------------------------
Name        Type            Size  Value
---------------------------------------
trans       sr_transaction  -     @683 
  en        integral        1     'b1  
  wr_en     integral        1     'h0  
  data_in   integral        8     'hcf 
  addr      integral        3     'h2  
  data_out  integral        8     'h0  
---------------------------------------

UVM_INFO scoreboard.sv(78) @ 25000: uvm_test_top.env.scb [sr_scoreboard] ------------------- PASS -----------------

driver : 30000 | en = 1 | wr_en = 1 | data_in = 42 | addr = 0 | data_out = 0	-- enable and write enable ON
monitor : 35000 | en = 1 | wr_en = 1 | data_in = 42 | addr = 0 | data_out = 0
UVM_INFO scoreboard.sv(37) @ 35000: uvm_test_top.env.scb [SCOREBOARD]  received to scoreboard = 
---------------------------------------
Name        Type            Size  Value
---------------------------------------
trans       sr_transaction  -     @695 
  en        integral        1     'b1  
  wr_en     integral        1     'h1  
  data_in   integral        8     'h42 
  addr      integral        3     'h0  
  data_out  integral        8     'h0  
---------------------------------------

UVM_INFO scoreboard.sv(78) @ 35000: uvm_test_top.env.scb [sr_scoreboard] ------------------- PASS -----------------

driver : 40000 | en = 1 | wr_en = 0 | data_in = 87 | addr = 2 | data_out = 0	-- write enable OFF
monitor : 45000 | en = 1 | wr_en = 0 | data_in = 87 | addr = 2 | data_out = 0
UVM_INFO scoreboard.sv(37) @ 45000: uvm_test_top.env.scb [SCOREBOARD]  received to scoreboard = 
---------------------------------------
Name        Type            Size  Value
---------------------------------------
trans       sr_transaction  -     @707 
  en        integral        1     'b1  
  wr_en     integral        1     'h0  
  data_in   integral        8     'h87 
  addr      integral        3     'h2  
  data_out  integral        8     'h0  
---------------------------------------

UVM_INFO scoreboard.sv(78) @ 45000: uvm_test_top.env.scb [sr_scoreboard] ------------------- PASS -----------------

driver : 50000 | en = 1 | wr_en = 0 | data_in = e0 | addr = 3 | data_out = 0	-- write enable OFF
monitor : 55000 | en = 1 | wr_en = 0 | data_in = e0 | addr = 3 | data_out = 0
UVM_INFO scoreboard.sv(37) @ 55000: uvm_test_top.env.scb [SCOREBOARD]  received to scoreboard = 
---------------------------------------
Name        Type            Size  Value
---------------------------------------
trans       sr_transaction  -     @719 
  en        integral        1     'b1  
  wr_en     integral        1     'h0  
  data_in   integral        8     'he0 
  addr      integral        3     'h3  
  data_out  integral        8     'h0  
---------------------------------------

UVM_INFO scoreboard.sv(78) @ 55000: uvm_test_top.env.scb [sr_scoreboard] ------------------- PASS -----------------

driver : 60000 | en = 1 | wr_en = 1 | data_in = e0 | addr = 3 | data_out = 0	-- enable and write enable ON
monitor : 65000 | en = 1 | wr_en = 1 | data_in = e0 | addr = 3 | data_out = 0
UVM_INFO scoreboard.sv(37) @ 65000: uvm_test_top.env.scb [SCOREBOARD]  received to scoreboard = 
---------------------------------------
Name        Type            Size  Value
---------------------------------------
trans       sr_transaction  -     @731 
  en        integral        1     'b1  
  wr_en     integral        1     'h1  
  data_in   integral        8     'he0 
  addr      integral        3     'h3  
  data_out  integral        8     'h0  
---------------------------------------

UVM_INFO scoreboard.sv(78) @ 65000: uvm_test_top.env.scb [sr_scoreboard] ------------------- PASS -----------------

driver : 70000 | en = 1 | wr_en = 1 | data_in = d5 | addr = 0 | data_out = 0	-- enable and write enable ON
monitor : 75000 | en = 1 | wr_en = 1 | data_in = d5 | addr = 0 | data_out = 42
UVM_INFO scoreboard.sv(37) @ 75000: uvm_test_top.env.scb [SCOREBOARD]  received to scoreboard = 
---------------------------------------
Name        Type            Size  Value
---------------------------------------
trans       sr_transaction  -     @743 
  en        integral        1     'b1  
  wr_en     integral        1     'h1  
  data_in   integral        8     'hd5 
  addr      integral        3     'h0  
  data_out  integral        8     'h42 
---------------------------------------

UVM_INFO scoreboard.sv(78) @ 75000: uvm_test_top.env.scb [sr_scoreboard] ------------------- PASS -----------------

driver : 80000 | en = 1 | wr_en = 1 | data_in = b4 | addr = 7 | data_out = 0	-- enable and write enable ON
monitor : 85000 | en = 1 | wr_en = 1 | data_in = b4 | addr = 7 | data_out = 0
UVM_INFO scoreboard.sv(37) @ 85000: uvm_test_top.env.scb [SCOREBOARD]  received to scoreboard = 
---------------------------------------
Name        Type            Size  Value
---------------------------------------
trans       sr_transaction  -     @755 
  en        integral        1     'b1  
  wr_en     integral        1     'h1  
  data_in   integral        8     'hb4 
  addr      integral        3     'h7  
  data_out  integral        8     'h0  
---------------------------------------

UVM_INFO scoreboard.sv(78) @ 85000: uvm_test_top.env.scb [sr_scoreboard] ------------------- PASS -----------------

driver : 90000 | en = 0 | wr_en = 1 | data_in = ef | addr = 2 | data_out = 0	-- enable OFF
monitor : 95000 | en = 0 | wr_en = 1 | data_in = ef | addr = 2 | data_out = 0
UVM_INFO scoreboard.sv(37) @ 95000: uvm_test_top.env.scb [SCOREBOARD]  received to scoreboard = 
---------------------------------------
Name        Type            Size  Value
---------------------------------------
trans       sr_transaction  -     @767 
  en        integral        1     'b0  
  wr_en     integral        1     'h1  
  data_in   integral        8     'hef 
  addr      integral        3     'h2  
  data_out  integral        8     'h0  
---------------------------------------

UVM_INFO scoreboard.sv(78) @ 95000: uvm_test_top.env.scb [sr_scoreboard] ------------------- PASS -----------------

UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_objection.svh(1276) @ 100000: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
UVM_INFO coverage.sv(42) @ 100000: uvm_test_top.env.cov [COVERAGE] ---------------------------------------------------------
UVM_INFO coverage.sv(43) @ 100000: uvm_test_top.env.cov [COVERAGE] SRAM functional coverage = 81.25%
UVM_INFO coverage.sv(44) @ 100000: uvm_test_top.env.cov [COVERAGE] ---------------------------------------------------------
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_report_server.svh(904) @ 100000: reporter [UVM/REPORT/SERVER] 
--- UVM Report Summary ---

** Report counts by severity
UVM_INFO :   29
UVM_WARNING :    0
UVM_ERROR :    0
UVM_FATAL :    0
** Report counts by id
[COVERAGE]     3
[RNTST]     1
[SCOREBOARD]    10
[SEQUENCE]     1
[TEST]     1
[TEST_DONE]     1
[UVM/RELNOTES]     1
[UVMTOP]     1
[sr_scoreboard]    10

$finish at simulation time               100000
