UVM_INFO testbench.sv(27) @ 0: reporter [TESTBENCH] START OF THE TESTBENCH
UVM_INFO @ 0: reporter [RNTST] Running test dff_test...
UVM_INFO test.sv(38) @ 0: uvm_test_top [TEST] printing topology
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh(594) @ 0: reporter [UVMTOP] UVM testbench topology:
--------------------------------------------------------------
Name                       Type                    Size  Value
--------------------------------------------------------------
uvm_test_top               dff_test                -     @347 
  env                      dff_environment         -     @360 
    agt                    dff_agent               -     @369 
      drv                  dff_driver              -     @544 
        rsp_port           uvm_analysis_port       -     @563 
        seq_item_port      uvm_seq_item_pull_port  -     @553 
      mon                  dff_monitor             -     @573 
        analysis_port      uvm_analysis_port       -     @584 
      seqr                 dff_sequencer           -     @407 
        rsp_export         uvm_analysis_export     -     @416 
        seq_item_export    uvm_seq_item_pull_imp   -     @534 
        arbitration_queue  array                   0     -    
        lock_queue         array                   0     -    
        num_last_reqs      integral                32    'd1  
        num_last_rsps      integral                32    'd1  
    cov                    dff_coverage            -     @387 
      analysis_imp         uvm_analysis_imp        -     @396 
      analysis_import      uvm_analysis_imp        -     @599 
    scb                    dff_scoreboard          -     @378 
      analysis_import      uvm_analysis_imp        -     @609 
--------------------------------------------------------------

UVM_INFO driver.sv(49) @ 0: uvm_test_top.env.agt.drv [dff_driver] INPUT rst = 0 | d = 0 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO sequence.sv(28) @ 0: uvm_test_top.env.agt.seqr@@seq [dff_sequence] INPUT rst = 0 | d = 0 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO monitor.sv(50) @ 5000: uvm_test_top.env.agt.mon [dff_monitor] INPUT rst = 0 | d = 0 | OUTPUT: q = 0 | q_bar = 1
UVM_INFO scoreboard.sv(39) @ 5000: uvm_test_top.env.scb [dff_scoreboard] INPUT rst = 0 | d = 0 | OUTPUT: q = 0 | q_bar = 1
UVM_INFO scoreboard.sv(64) @ 5000: uvm_test_top.env.scb [dff_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 1

UVM_INFO driver.sv(49) @ 10000: uvm_test_top.env.agt.drv [dff_driver] INPUT rst = 1 | d = 0 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO sequence.sv(28) @ 10000: uvm_test_top.env.agt.seqr@@seq [dff_sequence] INPUT rst = 1 | d = 0 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO monitor.sv(50) @ 15000: uvm_test_top.env.agt.mon [dff_monitor] INPUT rst = 1 | d = 0 | OUTPUT: q = 0 | q_bar = 1
UVM_INFO scoreboard.sv(39) @ 15000: uvm_test_top.env.scb [dff_scoreboard] INPUT rst = 1 | d = 0 | OUTPUT: q = 0 | q_bar = 1
UVM_INFO scoreboard.sv(64) @ 15000: uvm_test_top.env.scb [dff_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 2

UVM_INFO driver.sv(49) @ 20000: uvm_test_top.env.agt.drv [dff_driver] INPUT rst = 0 | d = 1 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO sequence.sv(28) @ 20000: uvm_test_top.env.agt.seqr@@seq [dff_sequence] INPUT rst = 0 | d = 1 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO monitor.sv(50) @ 25000: uvm_test_top.env.agt.mon [dff_monitor] INPUT rst = 0 | d = 1 | OUTPUT: q = 1 | q_bar = 0
UVM_INFO scoreboard.sv(39) @ 25000: uvm_test_top.env.scb [dff_scoreboard] INPUT rst = 0 | d = 1 | OUTPUT: q = 1 | q_bar = 0
UVM_INFO scoreboard.sv(64) @ 25000: uvm_test_top.env.scb [dff_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 3

UVM_INFO driver.sv(49) @ 30000: uvm_test_top.env.agt.drv [dff_driver] INPUT rst = 0 | d = 1 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO sequence.sv(28) @ 30000: uvm_test_top.env.agt.seqr@@seq [dff_sequence] INPUT rst = 0 | d = 1 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO monitor.sv(50) @ 35000: uvm_test_top.env.agt.mon [dff_monitor] INPUT rst = 0 | d = 1 | OUTPUT: q = 1 | q_bar = 0
UVM_INFO scoreboard.sv(39) @ 35000: uvm_test_top.env.scb [dff_scoreboard] INPUT rst = 0 | d = 1 | OUTPUT: q = 1 | q_bar = 0
UVM_INFO scoreboard.sv(64) @ 35000: uvm_test_top.env.scb [dff_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 4

UVM_INFO driver.sv(49) @ 40000: uvm_test_top.env.agt.drv [dff_driver] INPUT rst = 0 | d = 1 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO sequence.sv(28) @ 40000: uvm_test_top.env.agt.seqr@@seq [dff_sequence] INPUT rst = 0 | d = 1 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO monitor.sv(50) @ 45000: uvm_test_top.env.agt.mon [dff_monitor] INPUT rst = 0 | d = 1 | OUTPUT: q = 1 | q_bar = 0
UVM_INFO scoreboard.sv(39) @ 45000: uvm_test_top.env.scb [dff_scoreboard] INPUT rst = 0 | d = 1 | OUTPUT: q = 1 | q_bar = 0
UVM_INFO scoreboard.sv(64) @ 45000: uvm_test_top.env.scb [dff_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 5

UVM_INFO driver.sv(49) @ 50000: uvm_test_top.env.agt.drv [dff_driver] INPUT rst = 0 | d = 0 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO sequence.sv(28) @ 50000: uvm_test_top.env.agt.seqr@@seq [dff_sequence] INPUT rst = 0 | d = 0 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO monitor.sv(50) @ 55000: uvm_test_top.env.agt.mon [dff_monitor] INPUT rst = 0 | d = 0 | OUTPUT: q = 0 | q_bar = 1
UVM_INFO scoreboard.sv(39) @ 55000: uvm_test_top.env.scb [dff_scoreboard] INPUT rst = 0 | d = 0 | OUTPUT: q = 0 | q_bar = 1
UVM_INFO scoreboard.sv(64) @ 55000: uvm_test_top.env.scb [dff_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 6

UVM_INFO driver.sv(49) @ 60000: uvm_test_top.env.agt.drv [dff_driver] INPUT rst = 0 | d = 1 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO sequence.sv(28) @ 60000: uvm_test_top.env.agt.seqr@@seq [dff_sequence] INPUT rst = 0 | d = 1 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO monitor.sv(50) @ 65000: uvm_test_top.env.agt.mon [dff_monitor] INPUT rst = 0 | d = 1 | OUTPUT: q = 1 | q_bar = 0
UVM_INFO scoreboard.sv(39) @ 65000: uvm_test_top.env.scb [dff_scoreboard] INPUT rst = 0 | d = 1 | OUTPUT: q = 1 | q_bar = 0
UVM_INFO scoreboard.sv(64) @ 65000: uvm_test_top.env.scb [dff_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 7

UVM_INFO driver.sv(49) @ 70000: uvm_test_top.env.agt.drv [dff_driver] INPUT rst = 1 | d = 1 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO sequence.sv(28) @ 70000: uvm_test_top.env.agt.seqr@@seq [dff_sequence] INPUT rst = 1 | d = 1 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO monitor.sv(50) @ 75000: uvm_test_top.env.agt.mon [dff_monitor] INPUT rst = 1 | d = 1 | OUTPUT: q = 0 | q_bar = 1
UVM_INFO scoreboard.sv(39) @ 75000: uvm_test_top.env.scb [dff_scoreboard] INPUT rst = 1 | d = 1 | OUTPUT: q = 0 | q_bar = 1
UVM_INFO scoreboard.sv(64) @ 75000: uvm_test_top.env.scb [dff_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 8

UVM_INFO driver.sv(49) @ 80000: uvm_test_top.env.agt.drv [dff_driver] INPUT rst = 0 | d = 0 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO sequence.sv(28) @ 80000: uvm_test_top.env.agt.seqr@@seq [dff_sequence] INPUT rst = 0 | d = 0 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO monitor.sv(50) @ 85000: uvm_test_top.env.agt.mon [dff_monitor] INPUT rst = 0 | d = 0 | OUTPUT: q = 0 | q_bar = 1
UVM_INFO scoreboard.sv(39) @ 85000: uvm_test_top.env.scb [dff_scoreboard] INPUT rst = 0 | d = 0 | OUTPUT: q = 0 | q_bar = 1
UVM_INFO scoreboard.sv(64) @ 85000: uvm_test_top.env.scb [dff_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 9

UVM_INFO driver.sv(49) @ 90000: uvm_test_top.env.agt.drv [dff_driver] INPUT rst = 0 | d = 0 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO sequence.sv(28) @ 90000: uvm_test_top.env.agt.seqr@@seq [dff_sequence] INPUT rst = 0 | d = 0 | OUTPUT: q = 0 | q_bar = 0
UVM_INFO monitor.sv(50) @ 95000: uvm_test_top.env.agt.mon [dff_monitor] INPUT rst = 0 | d = 0 | OUTPUT: q = 0 | q_bar = 1
UVM_INFO scoreboard.sv(39) @ 95000: uvm_test_top.env.scb [dff_scoreboard] INPUT rst = 0 | d = 0 | OUTPUT: q = 0 | q_bar = 1
UVM_INFO scoreboard.sv(64) @ 95000: uvm_test_top.env.scb [dff_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 10

UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_objection.svh(1276) @ 100000: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
UVM_INFO coverage.sv(44) @ 100000: uvm_test_top.env.cov [COVERAGE] ---------------------------------------------------------
UVM_INFO coverage.sv(45) @ 100000: uvm_test_top.env.cov [COVERAGE] D flip flop functional coverage = 100.00%
UVM_INFO coverage.sv(46) @ 100000: uvm_test_top.env.cov [COVERAGE] ---------------------------------------------------------
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_report_server.svh(904) @ 100000: reporter [UVM/REPORT/SERVER] 
--- UVM Report Summary ---

** Report counts by severity
UVM_INFO :   59
UVM_WARNING :    0
UVM_ERROR :    0
UVM_FATAL :    0
** Report counts by id
[COVERAGE]     3
[RNTST]     1
[TEST]     1
[TESTBENCH]     1
[TEST_DONE]     1
[UVM/RELNOTES]     1
[UVMTOP]     1
[dff_driver]    10
[dff_monitor]    10
[dff_scoreboard]    20
[dff_sequence]    10

$finish at simulation time               100000