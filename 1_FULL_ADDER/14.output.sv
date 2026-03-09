UVM_INFO testbench.sv(26) @ 0: reporter [TESTBENCH - TOP ]  ------ Start of the testbench
UVM_INFO testbench.sv(28) @ 0: reporter [TESTBENCH - TOP ]  ------ Configuration database of virtual interface has been set
UVM_INFO testbench.sv(36) @ 0: reporter [TESTBENCH -TOP ]  ------ calling run_test task -- test execution starts
UVM_INFO @ 0: reporter [RNTST] Running test fa_test...
UVM_INFO test.sv(31) @ 0: uvm_test_top [TEST] printing topology
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh(594) @ 0: reporter [UVMTOP] UVM testbench topology:
--------------------------------------------------------------
Name                       Type                    Size  Value
--------------------------------------------------------------
uvm_test_top               fa_test                 -     @347 
  env                      fa_environment          -     @360 
    agt                    fa_agent                -     @369 
      drv                  fa_driver               -     @544 
        rsp_port           uvm_analysis_port       -     @563 
        seq_item_port      uvm_seq_item_pull_port  -     @553 
      mon                  fa_monitor              -     @573 
        analysis_port      uvm_analysis_port       -     @584 
      seqr                 fa_sequencer            -     @407 
        rsp_export         uvm_analysis_export     -     @416 
        seq_item_export    uvm_seq_item_pull_imp   -     @534 
        arbitration_queue  array                   0     -    
        lock_queue         array                   0     -    
        num_last_reqs      integral                32    'd1  
        num_last_rsps      integral                32    'd1  
    cov                    fa_coverage             -     @387 
      analysis_imp         uvm_analysis_imp        -     @396 
      analysis_import      uvm_analysis_imp        -     @599 
    scb                    fa_scoreboard           -     @378 
      analysis_import      uvm_analysis_imp        -     @609 
--------------------------------------------------------------

UVM_INFO test.sv(37) @ 0: uvm_test_top [fa_test] Inside the Start of simulation phase
UVM_INFO sequence.sv(20) @ 0: uvm_test_top.env.agt.seqr@@seq [fa_sequence] Inside the pre start
UVM_INFO sequence.sv(25) @ 0: uvm_test_top.env.agt.seqr@@seq [fa_sequence] Inside the pre body
UVM_INFO sequence.sv(30) @ 0: uvm_test_top.env.agt.seqr@@seq [fa_sequence] Starting sequence items generation

UVM_INFO sequence.sv(39) @ 0: uvm_test_top.env.agt.seqr@@seq [fa_sequence] INPUT : a = 0 | b = 0 | c = 0 | OUTPUT : sum = 0 | carry = 0
UVM_INFO driver.sv(50) @ 0: uvm_test_top.env.agt.drv [fa_driver] INPUT : a = 0 | b = 0 | c = 0 | OUTPUT : sum = 0 | carry = 0
UVM_INFO monitor.sv(54) @ 2000: uvm_test_top.env.agt.mon [fa_monitor] INPUT : a = 0 | b = 0 | c = 0 | OUTPUT : sum = 0 | carry = 0
UVM_INFO scoreboard.sv(38) @ 2000: uvm_test_top.env.scb [fa_scoreboard]  received to scoreboard = 
INPUT : a = 0 | b = 0 | c = 0 | OUTPUT : sum = 0 | carry = 0
UVM_INFO scoreboard.sv(61) @ 2000: uvm_test_top.env.scb [fa_scoreboard] ------------------- sum -- PASS -----------------
UVM_INFO scoreboard.sv(68) @ 2000: uvm_test_top.env.scb [fa_scoreboard] ------------------- carry -- PASS -----------------
---------------------------------------------------------- 1

UVM_INFO sequence.sv(39) @ 2000: uvm_test_top.env.agt.seqr@@seq [fa_sequence] INPUT : a = 1 | b = 0 | c = 0 | OUTPUT : sum = 0 | carry = 0
UVM_INFO driver.sv(50) @ 2000: uvm_test_top.env.agt.drv [fa_driver] INPUT : a = 1 | b = 0 | c = 0 | OUTPUT : sum = 0 | carry = 0
UVM_INFO monitor.sv(54) @ 4000: uvm_test_top.env.agt.mon [fa_monitor] INPUT : a = 1 | b = 0 | c = 0 | OUTPUT : sum = 1 | carry = 0
UVM_INFO scoreboard.sv(38) @ 4000: uvm_test_top.env.scb [fa_scoreboard]  received to scoreboard = 
INPUT : a = 1 | b = 0 | c = 0 | OUTPUT : sum = 1 | carry = 0
UVM_INFO scoreboard.sv(61) @ 4000: uvm_test_top.env.scb [fa_scoreboard] ------------------- sum -- PASS -----------------
UVM_INFO scoreboard.sv(68) @ 4000: uvm_test_top.env.scb [fa_scoreboard] ------------------- carry -- PASS -----------------
---------------------------------------------------------- 2

UVM_INFO sequence.sv(39) @ 4000: uvm_test_top.env.agt.seqr@@seq [fa_sequence] INPUT : a = 0 | b = 1 | c = 0 | OUTPUT : sum = 0 | carry = 0
UVM_INFO driver.sv(50) @ 4000: uvm_test_top.env.agt.drv [fa_driver] INPUT : a = 0 | b = 1 | c = 0 | OUTPUT : sum = 0 | carry = 0
UVM_INFO monitor.sv(54) @ 6000: uvm_test_top.env.agt.mon [fa_monitor] INPUT : a = 0 | b = 1 | c = 0 | OUTPUT : sum = 1 | carry = 0
UVM_INFO scoreboard.sv(38) @ 6000: uvm_test_top.env.scb [fa_scoreboard]  received to scoreboard = 
INPUT : a = 0 | b = 1 | c = 0 | OUTPUT : sum = 1 | carry = 0
UVM_INFO scoreboard.sv(61) @ 6000: uvm_test_top.env.scb [fa_scoreboard] ------------------- sum -- PASS -----------------
UVM_INFO scoreboard.sv(68) @ 6000: uvm_test_top.env.scb [fa_scoreboard] ------------------- carry -- PASS -----------------
---------------------------------------------------------- 3

UVM_INFO sequence.sv(39) @ 6000: uvm_test_top.env.agt.seqr@@seq [fa_sequence] INPUT : a = 1 | b = 1 | c = 0 | OUTPUT : sum = 0 | carry = 0
UVM_INFO driver.sv(50) @ 6000: uvm_test_top.env.agt.drv [fa_driver] INPUT : a = 1 | b = 1 | c = 0 | OUTPUT : sum = 0 | carry = 0
UVM_INFO monitor.sv(54) @ 8000: uvm_test_top.env.agt.mon [fa_monitor] INPUT : a = 1 | b = 1 | c = 0 | OUTPUT : sum = 0 | carry = 1
UVM_INFO scoreboard.sv(38) @ 8000: uvm_test_top.env.scb [fa_scoreboard]  received to scoreboard = 
INPUT : a = 1 | b = 1 | c = 0 | OUTPUT : sum = 0 | carry = 1
UVM_INFO scoreboard.sv(61) @ 8000: uvm_test_top.env.scb [fa_scoreboard] ------------------- sum -- PASS -----------------
UVM_INFO scoreboard.sv(68) @ 8000: uvm_test_top.env.scb [fa_scoreboard] ------------------- carry -- PASS -----------------
---------------------------------------------------------- 4

UVM_INFO sequence.sv(39) @ 8000: uvm_test_top.env.agt.seqr@@seq [fa_sequence] INPUT : a = 0 | b = 0 | c = 1 | OUTPUT : sum = 0 | carry = 0
UVM_INFO driver.sv(50) @ 8000: uvm_test_top.env.agt.drv [fa_driver] INPUT : a = 0 | b = 0 | c = 1 | OUTPUT : sum = 0 | carry = 0
UVM_INFO monitor.sv(54) @ 10000: uvm_test_top.env.agt.mon [fa_monitor] INPUT : a = 0 | b = 0 | c = 1 | OUTPUT : sum = 1 | carry = 0
UVM_INFO scoreboard.sv(38) @ 10000: uvm_test_top.env.scb [fa_scoreboard]  received to scoreboard = 
INPUT : a = 0 | b = 0 | c = 1 | OUTPUT : sum = 1 | carry = 0
UVM_INFO scoreboard.sv(61) @ 10000: uvm_test_top.env.scb [fa_scoreboard] ------------------- sum -- PASS -----------------
UVM_INFO scoreboard.sv(68) @ 10000: uvm_test_top.env.scb [fa_scoreboard] ------------------- carry -- PASS -----------------
---------------------------------------------------------- 5

UVM_INFO sequence.sv(39) @ 10000: uvm_test_top.env.agt.seqr@@seq [fa_sequence] INPUT : a = 1 | b = 0 | c = 1 | OUTPUT : sum = 0 | carry = 0
UVM_INFO driver.sv(50) @ 10000: uvm_test_top.env.agt.drv [fa_driver] INPUT : a = 1 | b = 0 | c = 1 | OUTPUT : sum = 0 | carry = 0
UVM_INFO monitor.sv(54) @ 12000: uvm_test_top.env.agt.mon [fa_monitor] INPUT : a = 1 | b = 0 | c = 1 | OUTPUT : sum = 0 | carry = 1
UVM_INFO scoreboard.sv(38) @ 12000: uvm_test_top.env.scb [fa_scoreboard]  received to scoreboard = 
INPUT : a = 1 | b = 0 | c = 1 | OUTPUT : sum = 0 | carry = 1
UVM_INFO scoreboard.sv(61) @ 12000: uvm_test_top.env.scb [fa_scoreboard] ------------------- sum -- PASS -----------------
UVM_INFO scoreboard.sv(68) @ 12000: uvm_test_top.env.scb [fa_scoreboard] ------------------- carry -- PASS -----------------
---------------------------------------------------------- 6

UVM_INFO sequence.sv(39) @ 12000: uvm_test_top.env.agt.seqr@@seq [fa_sequence] INPUT : a = 0 | b = 1 | c = 1 | OUTPUT : sum = 0 | carry = 0
UVM_INFO driver.sv(50) @ 12000: uvm_test_top.env.agt.drv [fa_driver] INPUT : a = 0 | b = 1 | c = 1 | OUTPUT : sum = 0 | carry = 0
UVM_INFO monitor.sv(54) @ 14000: uvm_test_top.env.agt.mon [fa_monitor] INPUT : a = 0 | b = 1 | c = 1 | OUTPUT : sum = 0 | carry = 1
UVM_INFO scoreboard.sv(38) @ 14000: uvm_test_top.env.scb [fa_scoreboard]  received to scoreboard = 
INPUT : a = 0 | b = 1 | c = 1 | OUTPUT : sum = 0 | carry = 1
UVM_INFO scoreboard.sv(61) @ 14000: uvm_test_top.env.scb [fa_scoreboard] ------------------- sum -- PASS -----------------
UVM_INFO scoreboard.sv(68) @ 14000: uvm_test_top.env.scb [fa_scoreboard] ------------------- carry -- PASS -----------------
---------------------------------------------------------- 7

UVM_INFO sequence.sv(39) @ 14000: uvm_test_top.env.agt.seqr@@seq [fa_sequence] INPUT : a = 1 | b = 1 | c = 1 | OUTPUT : sum = 0 | carry = 0
UVM_INFO driver.sv(50) @ 14000: uvm_test_top.env.agt.drv [fa_driver] INPUT : a = 1 | b = 1 | c = 1 | OUTPUT : sum = 0 | carry = 0
UVM_INFO monitor.sv(54) @ 16000: uvm_test_top.env.agt.mon [fa_monitor] INPUT : a = 1 | b = 1 | c = 1 | OUTPUT : sum = 1 | carry = 1
UVM_INFO scoreboard.sv(38) @ 16000: uvm_test_top.env.scb [fa_scoreboard]  received to scoreboard = 
INPUT : a = 1 | b = 1 | c = 1 | OUTPUT : sum = 1 | carry = 1
UVM_INFO scoreboard.sv(61) @ 16000: uvm_test_top.env.scb [fa_scoreboard] ------------------- sum -- PASS -----------------
UVM_INFO scoreboard.sv(68) @ 16000: uvm_test_top.env.scb [fa_scoreboard] ------------------- carry -- PASS -----------------
---------------------------------------------------------- 8

UVM_INFO sequence.sv(39) @ 16000: uvm_test_top.env.agt.seqr@@seq [fa_sequence] INPUT : a = 0 | b = 0 | c = 0 | OUTPUT : sum = 0 | carry = 0
UVM_INFO driver.sv(50) @ 16000: uvm_test_top.env.agt.drv [fa_driver] INPUT : a = 0 | b = 0 | c = 0 | OUTPUT : sum = 0 | carry = 0
UVM_INFO monitor.sv(54) @ 18000: uvm_test_top.env.agt.mon [fa_monitor] INPUT : a = 0 | b = 0 | c = 0 | OUTPUT : sum = 0 | carry = 0
UVM_INFO scoreboard.sv(38) @ 18000: uvm_test_top.env.scb [fa_scoreboard]  received to scoreboard = 
INPUT : a = 0 | b = 0 | c = 0 | OUTPUT : sum = 0 | carry = 0
UVM_INFO scoreboard.sv(61) @ 18000: uvm_test_top.env.scb [fa_scoreboard] ------------------- sum -- PASS -----------------
UVM_INFO scoreboard.sv(68) @ 18000: uvm_test_top.env.scb [fa_scoreboard] ------------------- carry -- PASS -----------------
---------------------------------------------------------- 9

UVM_INFO sequence.sv(39) @ 18000: uvm_test_top.env.agt.seqr@@seq [fa_sequence] INPUT : a = 1 | b = 0 | c = 0 | OUTPUT : sum = 0 | carry = 0
UVM_INFO driver.sv(50) @ 18000: uvm_test_top.env.agt.drv [fa_driver] INPUT : a = 1 | b = 0 | c = 0 | OUTPUT : sum = 0 | carry = 0
UVM_INFO monitor.sv(54) @ 20000: uvm_test_top.env.agt.mon [fa_monitor] INPUT : a = 1 | b = 0 | c = 0 | OUTPUT : sum = 1 | carry = 0
UVM_INFO scoreboard.sv(38) @ 20000: uvm_test_top.env.scb [fa_scoreboard]  received to scoreboard = 
INPUT : a = 1 | b = 0 | c = 0 | OUTPUT : sum = 1 | carry = 0
UVM_INFO scoreboard.sv(61) @ 20000: uvm_test_top.env.scb [fa_scoreboard] ------------------- sum -- PASS -----------------
UVM_INFO scoreboard.sv(68) @ 20000: uvm_test_top.env.scb [fa_scoreboard] ------------------- carry -- PASS -----------------
---------------------------------------------------------- 10

UVM_INFO sequence.sv(56) @ 20000: uvm_test_top.env.agt.seqr@@seq [fa_sequence] Inside the post body
UVM_INFO sequence.sv(51) @ 20000: uvm_test_top.env.agt.seqr@@seq [fa_sequence] Inside the post start
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_objection.svh(1276) @ 21000: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
UVM_INFO environment.sv(39) @ 21000: uvm_test_top.env [fa_environment] Inside the extract phase
UVM_INFO environment.sv(43) @ 21000: uvm_test_top.env [fa_environment] Inside the check phase
UVM_INFO coverage.sv(49) @ 21000: uvm_test_top.env.cov [COVERAGE] ---------------------------------------------------------
UVM_INFO coverage.sv(50) @ 21000: uvm_test_top.env.cov [COVERAGE] Full Adder functional coverage = 100.00%
UVM_INFO coverage.sv(51) @ 21000: uvm_test_top.env.cov [COVERAGE] ---------------------------------------------------------
UVM_INFO environment.sv(47) @ 21000: uvm_test_top.env [fa_environment] Inside the report phase
UVM_INFO environment.sv(51) @ 21000: uvm_test_top.env [fa_environment] Inside the final phase
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_report_server.svh(904) @ 21000: reporter [UVM/REPORT/SERVER] 
--- UVM Report Summary ---

** Report counts by severity
UVM_INFO :   81
UVM_WARNING :    0
UVM_ERROR :    0
UVM_FATAL :    0
** Report counts by id
[COVERAGE]     3
[RNTST]     1
[TEST]     1
[TESTBENCH - TOP ]     2
[TESTBENCH -TOP ]     1
[TEST_DONE]     1
[UVM/RELNOTES]     1
[UVMTOP]     1
[fa_driver]    10
[fa_environment]     4
[fa_monitor]    10
[fa_scoreboard]    30
[fa_sequence]    15
[fa_test]     1

$finish called from file "/apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh", line 532.
$finish at simulation time                21000