UVM_INFO testbench.sv(35) @ 0: reporter [TESTBENCH] START OF THE TESTBENCH
UVM_INFO @ 0: reporter [RNTST] Running test cnt_test...
UVM_INFO test.sv(38) @ 0: uvm_test_top [TEST] printing topology
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh(594) @ 0: reporter [UVMTOP] UVM testbench topology:
--------------------------------------------------------------
Name                       Type                    Size  Value
--------------------------------------------------------------
uvm_test_top               cnt_test                -     @347 
  env                      cnt_environment         -     @360 
    agt                    cnt_agent               -     @369 
      drv                  cnt_driver              -     @544 
        rsp_port           uvm_analysis_port       -     @563 
        seq_item_port      uvm_seq_item_pull_port  -     @553 
      mon                  cnt_monitor             -     @573 
        analysis_port      uvm_analysis_port       -     @584 
      seqr                 cnt_sequencer           -     @407 
        rsp_export         uvm_analysis_export     -     @416 
        seq_item_export    uvm_seq_item_pull_imp   -     @534 
        arbitration_queue  array                   0     -    
        lock_queue         array                   0     -    
        num_last_reqs      integral                32    'd1  
        num_last_rsps      integral                32    'd1  
    cov                    cnt_coverage            -     @387 
      analysis_imp         uvm_analysis_imp        -     @396 
    scb                    cnt_scoreboard          -     @378 
      analysis_import      uvm_analysis_imp        -     @599 
--------------------------------------------------------------

	-------------------------- pure random ------------------------
UVM_INFO driver.sv(55) @ 0: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 1 | enable = 0 | mod_n = 88 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 0: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 1 | enable = 0 | mod_n = 88 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 5000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 1 | enable = 0 | mod_n = 88 | up_down = 1 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(43) @ 5000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 1 | enable = 0 | mod_n = 88 | up_down = 1 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(63) @ 5000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 1

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 10000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 238 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 10000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 238 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 15000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 238 | up_down = 1 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(43) @ 15000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 238 | up_down = 1 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(63) @ 15000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 2

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 20000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 110 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 20000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 110 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 25000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 110 | up_down = 1 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(43) @ 25000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 110 | up_down = 1 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(63) @ 25000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 3

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 30000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 10 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 30000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 10 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 35000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 10 | up_down = 1 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(43) @ 35000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 10 | up_down = 1 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(63) @ 35000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 4

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 40000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 232 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 40000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 232 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 45000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 232 | up_down = 1 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(43) @ 45000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 232 | up_down = 1 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(63) @ 45000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 5

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 50000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 4 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 50000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 4 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 55000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 4 | up_down = 1 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(43) @ 55000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 4 | up_down = 1 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(63) @ 55000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 6

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 60000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 141 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 60000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 141 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 65000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 141 | up_down = 1 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(43) @ 65000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 141 | up_down = 1 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(63) @ 65000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 7

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 70000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 53 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 70000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 53 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 75000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 53 | up_down = 1 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(43) @ 75000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 53 | up_down = 1 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(63) @ 75000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 8

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 80000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 174 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 80000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 174 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 85000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 174 | up_down = 1 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(43) @ 85000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 174 | up_down = 1 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(63) @ 85000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 9

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 90000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 167 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 90000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 167 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 95000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 167 | up_down = 1 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(43) @ 95000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 167 | up_down = 1 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(63) @ 95000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 10

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 100000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 112 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 100000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 112 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 105000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 112 | up_down = 1 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(43) @ 105000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 112 | up_down = 1 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(63) @ 105000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 11

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 110000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 85 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 110000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 85 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 115000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 85 | up_down = 1 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(43) @ 115000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 85 | up_down = 1 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(63) @ 115000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 12

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 120000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 190 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 120000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 190 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 125000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 190 | up_down = 1 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(43) @ 125000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 190 | up_down = 1 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(63) @ 125000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 13

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 130000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 130000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 135000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 1 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(43) @ 135000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 1 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(63) @ 135000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 14

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 140000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 61 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 140000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 61 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 145000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 61 | up_down = 1 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(43) @ 145000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 61 | up_down = 1 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(63) @ 145000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 15

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 150000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 168 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 150000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 168 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 155000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 168 | up_down = 1 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(43) @ 155000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 168 | up_down = 1 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(63) @ 155000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 16

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 160000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 164 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 160000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 164 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 165000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 164 | up_down = 1 | OUTPUT: q = 10
UVM_INFO scoreboard.sv(43) @ 165000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 164 | up_down = 1 | OUTPUT: q = 10
UVM_INFO scoreboard.sv(63) @ 165000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 17

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 170000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 176 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 170000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 176 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 175000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 176 | up_down = 1 | OUTPUT: q = 11
UVM_INFO scoreboard.sv(43) @ 175000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 176 | up_down = 1 | OUTPUT: q = 11
UVM_INFO scoreboard.sv(63) @ 175000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 18

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 180000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 201 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 180000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 201 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 185000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 201 | up_down = 1 | OUTPUT: q = 12
UVM_INFO scoreboard.sv(43) @ 185000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 201 | up_down = 1 | OUTPUT: q = 12
UVM_INFO scoreboard.sv(63) @ 185000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 19

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 190000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 31 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 190000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 31 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 195000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 31 | up_down = 1 | OUTPUT: q = 13
UVM_INFO scoreboard.sv(43) @ 195000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 31 | up_down = 1 | OUTPUT: q = 13
UVM_INFO scoreboard.sv(63) @ 195000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 20

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 200000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 112 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 200000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 112 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 205000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 112 | up_down = 1 | OUTPUT: q = 14
UVM_INFO scoreboard.sv(43) @ 205000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 112 | up_down = 1 | OUTPUT: q = 14
UVM_INFO scoreboard.sv(63) @ 205000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 21

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 210000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 154 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 210000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 154 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 215000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 154 | up_down = 1 | OUTPUT: q = 15
UVM_INFO scoreboard.sv(43) @ 215000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 154 | up_down = 1 | OUTPUT: q = 15
UVM_INFO scoreboard.sv(63) @ 215000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 22

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 220000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 227 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 220000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 227 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 225000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 227 | up_down = 1 | OUTPUT: q = 16
UVM_INFO scoreboard.sv(43) @ 225000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 227 | up_down = 1 | OUTPUT: q = 16
UVM_INFO scoreboard.sv(63) @ 225000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 23

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 230000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 126 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 230000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 126 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 235000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 126 | up_down = 1 | OUTPUT: q = 17
UVM_INFO scoreboard.sv(43) @ 235000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 126 | up_down = 1 | OUTPUT: q = 17
UVM_INFO scoreboard.sv(63) @ 235000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 24

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 240000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 12 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 240000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 12 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 245000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 12 | up_down = 1 | OUTPUT: q = 18
UVM_INFO scoreboard.sv(43) @ 245000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 12 | up_down = 1 | OUTPUT: q = 18
UVM_INFO scoreboard.sv(63) @ 245000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 25

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 250000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 148 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 250000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 148 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 255000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 148 | up_down = 1 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(43) @ 255000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 148 | up_down = 1 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(63) @ 255000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 26

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 260000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 230 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 260000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 230 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 265000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 230 | up_down = 1 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(43) @ 265000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 230 | up_down = 1 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(63) @ 265000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 27

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 270000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 108 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 270000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 108 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 275000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 108 | up_down = 1 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(43) @ 275000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 108 | up_down = 1 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(63) @ 275000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 28

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 280000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 28 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 280000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 28 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 285000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 28 | up_down = 1 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(43) @ 285000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 28 | up_down = 1 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(63) @ 285000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 29

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 290000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 7 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 290000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 7 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 295000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 7 | up_down = 1 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(43) @ 295000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 7 | up_down = 1 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(63) @ 295000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 30

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 300000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 25 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 300000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 25 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 305000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 25 | up_down = 1 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(43) @ 305000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 25 | up_down = 1 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(63) @ 305000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 31

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 310000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 210 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 310000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 210 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 315000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 210 | up_down = 1 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(43) @ 315000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 210 | up_down = 1 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(63) @ 315000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 32

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 320000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 221 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 320000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 221 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 325000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 221 | up_down = 1 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(43) @ 325000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 221 | up_down = 1 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(63) @ 325000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 33

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 330000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 144 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 330000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 144 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 335000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 144 | up_down = 1 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(43) @ 335000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 144 | up_down = 1 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(63) @ 335000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 34

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 340000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 249 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 340000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 249 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 345000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 249 | up_down = 1 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(43) @ 345000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 249 | up_down = 1 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(63) @ 345000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 35

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 350000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 29 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 350000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 29 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 355000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 29 | up_down = 1 | OUTPUT: q = 10
UVM_INFO scoreboard.sv(43) @ 355000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 29 | up_down = 1 | OUTPUT: q = 10
UVM_INFO scoreboard.sv(63) @ 355000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 36

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 360000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 179 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 360000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 179 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 365000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 179 | up_down = 1 | OUTPUT: q = 11
UVM_INFO scoreboard.sv(43) @ 365000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 179 | up_down = 1 | OUTPUT: q = 11
UVM_INFO scoreboard.sv(63) @ 365000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 37

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 370000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 37 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 370000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 37 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 375000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 37 | up_down = 1 | OUTPUT: q = 12
UVM_INFO scoreboard.sv(43) @ 375000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 37 | up_down = 1 | OUTPUT: q = 12
UVM_INFO scoreboard.sv(63) @ 375000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 38

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 380000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 185 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 380000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 185 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 385000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 185 | up_down = 1 | OUTPUT: q = 13
UVM_INFO scoreboard.sv(43) @ 385000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 185 | up_down = 1 | OUTPUT: q = 13
UVM_INFO scoreboard.sv(63) @ 385000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 39

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 390000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 158 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 390000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 158 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 395000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 158 | up_down = 1 | OUTPUT: q = 14
UVM_INFO scoreboard.sv(43) @ 395000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 158 | up_down = 1 | OUTPUT: q = 14
UVM_INFO scoreboard.sv(63) @ 395000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 40

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 400000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 113 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 400000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 113 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 405000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 113 | up_down = 1 | OUTPUT: q = 15
UVM_INFO scoreboard.sv(43) @ 405000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 113 | up_down = 1 | OUTPUT: q = 15
UVM_INFO scoreboard.sv(63) @ 405000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 41

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 410000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 201 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 410000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 201 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 415000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 201 | up_down = 1 | OUTPUT: q = 16
UVM_INFO scoreboard.sv(43) @ 415000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 201 | up_down = 1 | OUTPUT: q = 16
UVM_INFO scoreboard.sv(63) @ 415000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 42

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 420000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 45 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 420000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 45 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 425000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 45 | up_down = 1 | OUTPUT: q = 17
UVM_INFO scoreboard.sv(43) @ 425000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 45 | up_down = 1 | OUTPUT: q = 17
UVM_INFO scoreboard.sv(63) @ 425000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 43

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 430000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 101 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 430000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 101 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 435000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 101 | up_down = 1 | OUTPUT: q = 18
UVM_INFO scoreboard.sv(43) @ 435000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 101 | up_down = 1 | OUTPUT: q = 18
UVM_INFO scoreboard.sv(63) @ 435000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 44

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 440000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 95 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 440000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 95 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 445000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 95 | up_down = 1 | OUTPUT: q = 19
UVM_INFO scoreboard.sv(43) @ 445000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 95 | up_down = 1 | OUTPUT: q = 19
UVM_INFO scoreboard.sv(63) @ 445000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 45

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 450000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 186 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 450000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 186 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 455000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 186 | up_down = 1 | OUTPUT: q = 20
UVM_INFO scoreboard.sv(43) @ 455000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 186 | up_down = 1 | OUTPUT: q = 20
UVM_INFO scoreboard.sv(63) @ 455000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 46

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 460000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 252 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 460000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 252 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 465000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 252 | up_down = 1 | OUTPUT: q = 21
UVM_INFO scoreboard.sv(43) @ 465000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 252 | up_down = 1 | OUTPUT: q = 21
UVM_INFO scoreboard.sv(63) @ 465000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 47

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 470000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 5 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 470000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 5 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 475000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 5 | up_down = 1 | OUTPUT: q = 22
UVM_INFO scoreboard.sv(43) @ 475000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 5 | up_down = 1 | OUTPUT: q = 22
UVM_INFO scoreboard.sv(63) @ 475000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 48

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 480000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 237 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 480000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 237 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 485000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 237 | up_down = 1 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(43) @ 485000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 237 | up_down = 1 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(63) @ 485000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 49

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 490000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 150 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 490000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 150 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 495000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 150 | up_down = 1 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(43) @ 495000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 150 | up_down = 1 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(63) @ 495000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 50

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 500000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 20 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 500000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 20 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 505000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 20 | up_down = 1 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(43) @ 505000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 20 | up_down = 1 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(63) @ 505000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 51

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 510000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 252 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 510000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 252 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 515000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 252 | up_down = 1 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(43) @ 515000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 252 | up_down = 1 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(63) @ 515000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 52

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 520000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 69 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 520000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 69 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 525000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 69 | up_down = 1 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(43) @ 525000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 69 | up_down = 1 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(63) @ 525000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 53

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 530000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 149 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 530000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 149 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 535000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 149 | up_down = 1 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(43) @ 535000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 149 | up_down = 1 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(63) @ 535000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 54

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 540000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 96 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 540000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 96 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 545000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 96 | up_down = 1 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(43) @ 545000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 96 | up_down = 1 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(63) @ 545000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 55

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 550000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 229 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 550000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 229 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 555000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 229 | up_down = 1 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(43) @ 555000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 229 | up_down = 1 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(63) @ 555000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 56

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 560000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 8 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 560000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 8 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 565000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 8 | up_down = 1 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(43) @ 565000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 8 | up_down = 1 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(63) @ 565000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 57

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 570000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 110 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 570000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 110 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 575000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 110 | up_down = 1 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(43) @ 575000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 110 | up_down = 1 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(63) @ 575000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 58

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 580000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 140 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 580000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 140 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 585000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 140 | up_down = 1 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(43) @ 585000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 140 | up_down = 1 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(63) @ 585000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 59

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 590000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 79 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 590000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 79 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 595000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 79 | up_down = 1 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(43) @ 595000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 79 | up_down = 1 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(63) @ 595000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 60

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 600000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 237 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 600000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 237 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 605000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 237 | up_down = 1 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(43) @ 605000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 237 | up_down = 1 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(63) @ 605000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 61

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 610000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 153 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 610000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 153 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 615000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 153 | up_down = 1 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(43) @ 615000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 153 | up_down = 1 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(63) @ 615000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 62

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 620000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 231 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 620000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 231 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 625000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 231 | up_down = 1 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(43) @ 625000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 231 | up_down = 1 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(63) @ 625000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 63

	-------------------------- up stable ------------------------
UVM_INFO driver.sv(55) @ 630000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 184 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 630000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 184 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 635000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 184 | up_down = 1 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(43) @ 635000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 184 | up_down = 1 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(63) @ 635000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 64

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 640000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 60 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 640000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 60 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 645000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 60 | up_down = 0 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(43) @ 645000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 60 | up_down = 0 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(63) @ 645000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 65

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 650000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 197 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 650000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 197 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 655000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 197 | up_down = 0 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(43) @ 655000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 197 | up_down = 0 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(63) @ 655000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 66

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 660000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 255 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 660000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 255 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 665000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 255 | up_down = 0 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(43) @ 665000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 255 | up_down = 0 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(63) @ 665000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 67

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 670000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 195 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 670000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 195 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 675000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 195 | up_down = 0 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(43) @ 675000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 195 | up_down = 0 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(63) @ 675000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 68

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 680000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 70 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 680000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 70 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 685000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 70 | up_down = 0 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(43) @ 685000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 70 | up_down = 0 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(63) @ 685000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 69

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 690000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 248 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 690000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 248 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 695000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 248 | up_down = 0 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(43) @ 695000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 248 | up_down = 0 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(63) @ 695000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 70

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 700000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 190 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 700000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 190 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 705000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 190 | up_down = 0 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(43) @ 705000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 190 | up_down = 0 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(63) @ 705000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 71

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 710000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 88 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 710000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 88 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 715000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 88 | up_down = 0 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(43) @ 715000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 88 | up_down = 0 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(63) @ 715000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 72

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 720000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 130 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 720000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 130 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 725000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 130 | up_down = 0 | OUTPUT: q = 87
UVM_INFO scoreboard.sv(43) @ 725000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 130 | up_down = 0 | OUTPUT: q = 87
UVM_INFO scoreboard.sv(63) @ 725000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 73

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 730000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 216 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 730000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 216 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 735000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 216 | up_down = 0 | OUTPUT: q = 86
UVM_INFO scoreboard.sv(43) @ 735000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 216 | up_down = 0 | OUTPUT: q = 86
UVM_INFO scoreboard.sv(63) @ 735000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 74

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 740000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 135 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 740000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 135 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 745000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 135 | up_down = 0 | OUTPUT: q = 85
UVM_INFO scoreboard.sv(43) @ 745000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 135 | up_down = 0 | OUTPUT: q = 85
UVM_INFO scoreboard.sv(63) @ 745000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 75

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 750000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 35 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 750000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 35 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 755000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 35 | up_down = 0 | OUTPUT: q = 84
UVM_INFO scoreboard.sv(43) @ 755000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 35 | up_down = 0 | OUTPUT: q = 84
UVM_INFO scoreboard.sv(63) @ 755000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 76

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 760000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 4 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 760000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 4 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 765000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 4 | up_down = 0 | OUTPUT: q = 34
UVM_INFO scoreboard.sv(43) @ 765000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 4 | up_down = 0 | OUTPUT: q = 34
UVM_INFO scoreboard.sv(63) @ 765000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 77

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 770000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 236 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 770000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 236 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 775000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 236 | up_down = 0 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(43) @ 775000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 236 | up_down = 0 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(63) @ 775000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 78

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 780000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 113 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 780000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 113 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 785000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 113 | up_down = 0 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(43) @ 785000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 113 | up_down = 0 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(63) @ 785000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 79

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 790000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 207 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 790000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 207 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 795000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 207 | up_down = 0 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(43) @ 795000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 207 | up_down = 0 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(63) @ 795000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 80

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 800000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 154 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 800000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 154 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 805000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 154 | up_down = 0 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(43) @ 805000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 154 | up_down = 0 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(63) @ 805000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 81

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 810000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 188 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 810000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 188 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 815000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 188 | up_down = 0 | OUTPUT: q = 153
UVM_INFO scoreboard.sv(43) @ 815000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 188 | up_down = 0 | OUTPUT: q = 153
UVM_INFO scoreboard.sv(63) @ 815000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 82

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 820000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 45 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 820000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 45 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 825000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 45 | up_down = 0 | OUTPUT: q = 152
UVM_INFO scoreboard.sv(43) @ 825000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 45 | up_down = 0 | OUTPUT: q = 152
UVM_INFO scoreboard.sv(63) @ 825000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 83

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 830000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 40 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 830000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 40 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 835000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 40 | up_down = 0 | OUTPUT: q = 44
UVM_INFO scoreboard.sv(43) @ 835000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 40 | up_down = 0 | OUTPUT: q = 44
UVM_INFO scoreboard.sv(63) @ 835000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 84

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 840000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 7 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 840000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 7 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 845000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 7 | up_down = 0 | OUTPUT: q = 39
UVM_INFO scoreboard.sv(43) @ 845000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 7 | up_down = 0 | OUTPUT: q = 39
UVM_INFO scoreboard.sv(63) @ 845000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 85

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 850000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 123 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 850000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 123 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 855000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 123 | up_down = 0 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(43) @ 855000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 123 | up_down = 0 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(63) @ 855000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 86

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 860000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 860000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 865000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 0 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(43) @ 865000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 0 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(63) @ 865000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 87

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 870000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 13 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 870000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 13 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 875000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 13 | up_down = 0 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(43) @ 875000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 13 | up_down = 0 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(63) @ 875000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 88

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 880000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 4 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 880000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 4 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 885000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 4 | up_down = 0 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(43) @ 885000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 4 | up_down = 0 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(63) @ 885000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 89

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 890000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 143 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 890000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 143 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 895000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 143 | up_down = 0 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(43) @ 895000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 143 | up_down = 0 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(63) @ 895000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 90

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 900000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 239 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 900000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 239 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 905000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 239 | up_down = 0 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(43) @ 905000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 239 | up_down = 0 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(63) @ 905000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 91

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 910000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 236 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 910000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 236 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 915000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 236 | up_down = 0 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(43) @ 915000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 236 | up_down = 0 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(63) @ 915000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 92

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 920000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 121 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 920000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 121 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 925000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 121 | up_down = 0 | OUTPUT: q = 235
UVM_INFO scoreboard.sv(43) @ 925000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 121 | up_down = 0 | OUTPUT: q = 235
UVM_INFO scoreboard.sv(63) @ 925000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 93

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 930000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 110 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 930000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 110 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 935000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 110 | up_down = 0 | OUTPUT: q = 120
UVM_INFO scoreboard.sv(43) @ 935000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 110 | up_down = 0 | OUTPUT: q = 120
UVM_INFO scoreboard.sv(63) @ 935000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 94

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 940000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 208 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 940000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 208 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 945000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 208 | up_down = 0 | OUTPUT: q = 109
UVM_INFO scoreboard.sv(43) @ 945000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 208 | up_down = 0 | OUTPUT: q = 109
UVM_INFO scoreboard.sv(63) @ 945000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 95

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 950000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 135 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 950000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 135 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 955000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 135 | up_down = 0 | OUTPUT: q = 108
UVM_INFO scoreboard.sv(43) @ 955000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 135 | up_down = 0 | OUTPUT: q = 108
UVM_INFO scoreboard.sv(63) @ 955000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 96

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 960000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 66 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 960000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 66 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 965000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 66 | up_down = 0 | OUTPUT: q = 107
UVM_INFO scoreboard.sv(43) @ 965000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 66 | up_down = 0 | OUTPUT: q = 107
UVM_INFO scoreboard.sv(63) @ 965000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 97

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 970000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 252 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 970000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 252 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 975000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 252 | up_down = 0 | OUTPUT: q = 65
UVM_INFO scoreboard.sv(43) @ 975000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 252 | up_down = 0 | OUTPUT: q = 65
UVM_INFO scoreboard.sv(63) @ 975000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 98

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 980000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 213 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 980000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 213 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 985000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 213 | up_down = 0 | OUTPUT: q = 64
UVM_INFO scoreboard.sv(43) @ 985000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 213 | up_down = 0 | OUTPUT: q = 64
UVM_INFO scoreboard.sv(63) @ 985000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 99

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 990000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 248 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 990000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 248 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 995000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 248 | up_down = 0 | OUTPUT: q = 63
UVM_INFO scoreboard.sv(43) @ 995000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 248 | up_down = 0 | OUTPUT: q = 63
UVM_INFO scoreboard.sv(63) @ 995000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 100

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1000000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 106 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1000000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 106 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1005000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 106 | up_down = 0 | OUTPUT: q = 62
UVM_INFO scoreboard.sv(43) @ 1005000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 106 | up_down = 0 | OUTPUT: q = 62
UVM_INFO scoreboard.sv(63) @ 1005000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 101

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1010000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 171 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1010000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 171 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1015000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 171 | up_down = 0 | OUTPUT: q = 61
UVM_INFO scoreboard.sv(43) @ 1015000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 171 | up_down = 0 | OUTPUT: q = 61
UVM_INFO scoreboard.sv(63) @ 1015000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 102

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1020000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 33 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1020000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 33 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1025000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 33 | up_down = 0 | OUTPUT: q = 60
UVM_INFO scoreboard.sv(43) @ 1025000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 33 | up_down = 0 | OUTPUT: q = 60
UVM_INFO scoreboard.sv(63) @ 1025000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 103

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1030000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 222 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1030000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 222 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1035000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 222 | up_down = 0 | OUTPUT: q = 32
UVM_INFO scoreboard.sv(43) @ 1035000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 222 | up_down = 0 | OUTPUT: q = 32
UVM_INFO scoreboard.sv(63) @ 1035000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 104

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1040000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 60 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1040000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 60 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1045000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 60 | up_down = 0 | OUTPUT: q = 31
UVM_INFO scoreboard.sv(43) @ 1045000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 60 | up_down = 0 | OUTPUT: q = 31
UVM_INFO scoreboard.sv(63) @ 1045000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 105

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1050000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 136 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1050000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 136 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1055000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 136 | up_down = 0 | OUTPUT: q = 30
UVM_INFO scoreboard.sv(43) @ 1055000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 136 | up_down = 0 | OUTPUT: q = 30
UVM_INFO scoreboard.sv(63) @ 1055000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 106

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1060000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 31 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1060000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 31 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1065000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 31 | up_down = 0 | OUTPUT: q = 29
UVM_INFO scoreboard.sv(43) @ 1065000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 31 | up_down = 0 | OUTPUT: q = 29
UVM_INFO scoreboard.sv(63) @ 1065000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 107

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1070000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 175 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1070000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 175 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1075000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 175 | up_down = 0 | OUTPUT: q = 28
UVM_INFO scoreboard.sv(43) @ 1075000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 175 | up_down = 0 | OUTPUT: q = 28
UVM_INFO scoreboard.sv(63) @ 1075000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 108

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1080000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1080000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1085000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 0 | OUTPUT: q = 27
UVM_INFO scoreboard.sv(43) @ 1085000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 0 | OUTPUT: q = 27
UVM_INFO scoreboard.sv(63) @ 1085000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 109

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1090000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 142 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1090000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 142 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1095000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 142 | up_down = 0 | OUTPUT: q = 26
UVM_INFO scoreboard.sv(43) @ 1095000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 142 | up_down = 0 | OUTPUT: q = 26
UVM_INFO scoreboard.sv(63) @ 1095000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 110

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1100000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 207 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1100000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 207 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1105000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 207 | up_down = 0 | OUTPUT: q = 25
UVM_INFO scoreboard.sv(43) @ 1105000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 207 | up_down = 0 | OUTPUT: q = 25
UVM_INFO scoreboard.sv(63) @ 1105000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 111

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1110000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 20 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1110000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 20 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1115000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 20 | up_down = 0 | OUTPUT: q = 24
UVM_INFO scoreboard.sv(43) @ 1115000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 20 | up_down = 0 | OUTPUT: q = 24
UVM_INFO scoreboard.sv(63) @ 1115000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 112

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1120000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 8 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1120000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 8 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1125000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 8 | up_down = 0 | OUTPUT: q = 19
UVM_INFO scoreboard.sv(43) @ 1125000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 8 | up_down = 0 | OUTPUT: q = 19
UVM_INFO scoreboard.sv(63) @ 1125000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 113

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1130000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 76 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1130000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 76 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1135000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 76 | up_down = 0 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(43) @ 1135000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 76 | up_down = 0 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(63) @ 1135000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 114

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1140000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 9 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1140000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 9 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1145000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 9 | up_down = 0 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(43) @ 1145000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 9 | up_down = 0 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(63) @ 1145000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 115

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1150000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 161 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1150000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 161 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1155000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 161 | up_down = 0 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(43) @ 1155000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 161 | up_down = 0 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(63) @ 1155000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 116

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1160000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 79 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1160000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 79 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1165000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 79 | up_down = 0 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(43) @ 1165000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 79 | up_down = 0 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(63) @ 1165000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 117

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1170000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 97 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1170000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 97 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1175000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 97 | up_down = 0 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(43) @ 1175000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 97 | up_down = 0 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(63) @ 1175000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 118

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1180000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 187 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1180000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 187 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1185000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 187 | up_down = 0 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(43) @ 1185000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 187 | up_down = 0 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(63) @ 1185000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 119

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1190000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 91 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1190000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 91 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1195000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 91 | up_down = 0 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(43) @ 1195000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 91 | up_down = 0 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(63) @ 1195000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 120

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1200000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 253 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1200000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 253 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1205000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 253 | up_down = 0 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(43) @ 1205000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 253 | up_down = 0 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(63) @ 1205000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 121

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1210000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 167 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1210000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 167 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1215000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 167 | up_down = 0 | OUTPUT: q = 252
UVM_INFO scoreboard.sv(43) @ 1215000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 167 | up_down = 0 | OUTPUT: q = 252
UVM_INFO scoreboard.sv(63) @ 1215000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 122

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1220000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 205 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1220000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 205 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1225000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 205 | up_down = 0 | OUTPUT: q = 166
UVM_INFO scoreboard.sv(43) @ 1225000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 205 | up_down = 0 | OUTPUT: q = 166
UVM_INFO scoreboard.sv(63) @ 1225000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 123

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1230000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 247 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1230000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 247 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1235000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 247 | up_down = 0 | OUTPUT: q = 165
UVM_INFO scoreboard.sv(43) @ 1235000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 247 | up_down = 0 | OUTPUT: q = 165
UVM_INFO scoreboard.sv(63) @ 1235000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 124

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1240000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 6 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1240000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 6 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1245000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 6 | up_down = 0 | OUTPUT: q = 164
UVM_INFO scoreboard.sv(43) @ 1245000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 6 | up_down = 0 | OUTPUT: q = 164
UVM_INFO scoreboard.sv(63) @ 1245000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 125

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1250000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 197 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1250000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 197 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1255000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 197 | up_down = 0 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(43) @ 1255000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 197 | up_down = 0 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(63) @ 1255000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 126

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1260000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 149 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1260000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 149 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1265000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 149 | up_down = 0 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(43) @ 1265000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 149 | up_down = 0 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(63) @ 1265000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 127

	-------------------------- down stable ------------------------
UVM_INFO driver.sv(55) @ 1270000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 111 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1270000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 111 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1275000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 111 | up_down = 0 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(43) @ 1275000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 111 | up_down = 0 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(63) @ 1275000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 128

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1280000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 193 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1280000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 193 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1285000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 193 | up_down = 1 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(43) @ 1285000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 193 | up_down = 1 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(63) @ 1285000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 129

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1290000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 158 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1290000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 158 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1295000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 158 | up_down = 1 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(43) @ 1295000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 158 | up_down = 1 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(63) @ 1295000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 130

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1300000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 29 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1300000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 29 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1305000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 29 | up_down = 1 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(43) @ 1305000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 29 | up_down = 1 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(63) @ 1305000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 131

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1310000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 36 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1310000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 36 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1315000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 36 | up_down = 1 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(43) @ 1315000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 36 | up_down = 1 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(63) @ 1315000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 132

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1320000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 122 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1320000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 122 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1325000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 122 | up_down = 1 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(43) @ 1325000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 122 | up_down = 1 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(63) @ 1325000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 133

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1330000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 201 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1330000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 201 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1335000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 201 | up_down = 1 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(43) @ 1335000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 201 | up_down = 1 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(63) @ 1335000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 134

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1340000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1340000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1345000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 1 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(43) @ 1345000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 1 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(63) @ 1345000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 135

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1350000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 42 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1350000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 42 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1355000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 42 | up_down = 1 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(43) @ 1355000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 42 | up_down = 1 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(63) @ 1355000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 136

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1360000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 69 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1360000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 69 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1365000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 69 | up_down = 1 | OUTPUT: q = 10
UVM_INFO scoreboard.sv(43) @ 1365000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 69 | up_down = 1 | OUTPUT: q = 10
UVM_INFO scoreboard.sv(63) @ 1365000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 137

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1370000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 250 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1370000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 250 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1375000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 250 | up_down = 1 | OUTPUT: q = 11
UVM_INFO scoreboard.sv(43) @ 1375000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 250 | up_down = 1 | OUTPUT: q = 11
UVM_INFO scoreboard.sv(63) @ 1375000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 138

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1380000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 246 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1380000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 246 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1385000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 246 | up_down = 1 | OUTPUT: q = 12
UVM_INFO scoreboard.sv(43) @ 1385000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 246 | up_down = 1 | OUTPUT: q = 12
UVM_INFO scoreboard.sv(63) @ 1385000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 139

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1390000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 183 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1390000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 183 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1395000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 183 | up_down = 1 | OUTPUT: q = 13
UVM_INFO scoreboard.sv(43) @ 1395000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 183 | up_down = 1 | OUTPUT: q = 13
UVM_INFO scoreboard.sv(63) @ 1395000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 140

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1400000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 132 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1400000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 132 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1405000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 132 | up_down = 1 | OUTPUT: q = 14
UVM_INFO scoreboard.sv(43) @ 1405000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 132 | up_down = 1 | OUTPUT: q = 14
UVM_INFO scoreboard.sv(63) @ 1405000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 141

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1410000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 168 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1410000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 168 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1415000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 168 | up_down = 1 | OUTPUT: q = 15
UVM_INFO scoreboard.sv(43) @ 1415000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 168 | up_down = 1 | OUTPUT: q = 15
UVM_INFO scoreboard.sv(63) @ 1415000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 142

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1420000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 144 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1420000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 144 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1425000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 144 | up_down = 1 | OUTPUT: q = 16
UVM_INFO scoreboard.sv(43) @ 1425000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 144 | up_down = 1 | OUTPUT: q = 16
UVM_INFO scoreboard.sv(63) @ 1425000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 143

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1430000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 154 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1430000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 154 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1435000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 154 | up_down = 1 | OUTPUT: q = 17
UVM_INFO scoreboard.sv(43) @ 1435000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 154 | up_down = 1 | OUTPUT: q = 17
UVM_INFO scoreboard.sv(63) @ 1435000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 144

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1440000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 42 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1440000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 42 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1445000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 42 | up_down = 1 | OUTPUT: q = 18
UVM_INFO scoreboard.sv(43) @ 1445000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 42 | up_down = 1 | OUTPUT: q = 18
UVM_INFO scoreboard.sv(63) @ 1445000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 145

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1450000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 43 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1450000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 43 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1455000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 43 | up_down = 1 | OUTPUT: q = 19
UVM_INFO scoreboard.sv(43) @ 1455000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 43 | up_down = 1 | OUTPUT: q = 19
UVM_INFO scoreboard.sv(63) @ 1455000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 146

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1460000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 114 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1460000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 114 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1465000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 114 | up_down = 1 | OUTPUT: q = 20
UVM_INFO scoreboard.sv(43) @ 1465000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 114 | up_down = 1 | OUTPUT: q = 20
UVM_INFO scoreboard.sv(63) @ 1465000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 147

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1470000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 91 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1470000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 91 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1475000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 91 | up_down = 1 | OUTPUT: q = 21
UVM_INFO scoreboard.sv(43) @ 1475000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 91 | up_down = 1 | OUTPUT: q = 21
UVM_INFO scoreboard.sv(63) @ 1475000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 148

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1480000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 189 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1480000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 189 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1485000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 189 | up_down = 1 | OUTPUT: q = 22
UVM_INFO scoreboard.sv(43) @ 1485000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 189 | up_down = 1 | OUTPUT: q = 22
UVM_INFO scoreboard.sv(63) @ 1485000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 149

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1490000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 94 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1490000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 94 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1495000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 94 | up_down = 1 | OUTPUT: q = 23
UVM_INFO scoreboard.sv(43) @ 1495000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 94 | up_down = 1 | OUTPUT: q = 23
UVM_INFO scoreboard.sv(63) @ 1495000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 150

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1500000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 131 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1500000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 131 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1505000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 131 | up_down = 1 | OUTPUT: q = 24
UVM_INFO scoreboard.sv(43) @ 1505000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 131 | up_down = 1 | OUTPUT: q = 24
UVM_INFO scoreboard.sv(63) @ 1505000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 151

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1510000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 18 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1510000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 18 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1515000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 18 | up_down = 1 | OUTPUT: q = 25
UVM_INFO scoreboard.sv(43) @ 1515000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 18 | up_down = 1 | OUTPUT: q = 25
UVM_INFO scoreboard.sv(63) @ 1515000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 152

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1520000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 59 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1520000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 59 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1525000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 59 | up_down = 1 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(43) @ 1525000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 59 | up_down = 1 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(63) @ 1525000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 153

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1530000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 184 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1530000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 184 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1535000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 184 | up_down = 1 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(43) @ 1535000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 184 | up_down = 1 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(63) @ 1535000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 154

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1540000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 46 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1540000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 46 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1545000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 46 | up_down = 1 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(43) @ 1545000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 46 | up_down = 1 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(63) @ 1545000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 155

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1550000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 213 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1550000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 213 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1555000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 213 | up_down = 1 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(43) @ 1555000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 213 | up_down = 1 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(63) @ 1555000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 156

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1560000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 74 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1560000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 74 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1565000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 74 | up_down = 1 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(43) @ 1565000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 74 | up_down = 1 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(63) @ 1565000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 157

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1570000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 167 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1570000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 167 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1575000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 167 | up_down = 1 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(43) @ 1575000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 167 | up_down = 1 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(63) @ 1575000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 158

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1580000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 173 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1580000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 173 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1585000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 173 | up_down = 1 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(43) @ 1585000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 173 | up_down = 1 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(63) @ 1585000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 159

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1590000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 151 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1590000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 151 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1595000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 151 | up_down = 1 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(43) @ 1595000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 151 | up_down = 1 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(63) @ 1595000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 160

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1600000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 151 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1600000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 151 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1605000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 151 | up_down = 1 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(43) @ 1605000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 151 | up_down = 1 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(63) @ 1605000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 161

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1610000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 102 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1610000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 102 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1615000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 102 | up_down = 1 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(43) @ 1615000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 102 | up_down = 1 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(63) @ 1615000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 162

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1620000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 105 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1620000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 105 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1625000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 105 | up_down = 1 | OUTPUT: q = 10
UVM_INFO scoreboard.sv(43) @ 1625000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 105 | up_down = 1 | OUTPUT: q = 10
UVM_INFO scoreboard.sv(63) @ 1625000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 163

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1630000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 249 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1630000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 249 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1635000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 249 | up_down = 1 | OUTPUT: q = 11
UVM_INFO scoreboard.sv(43) @ 1635000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 249 | up_down = 1 | OUTPUT: q = 11
UVM_INFO scoreboard.sv(63) @ 1635000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 164

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1640000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 49 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1640000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 49 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1645000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 49 | up_down = 1 | OUTPUT: q = 12
UVM_INFO scoreboard.sv(43) @ 1645000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 49 | up_down = 1 | OUTPUT: q = 12
UVM_INFO scoreboard.sv(63) @ 1645000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 165

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1650000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 29 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1650000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 29 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1655000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 29 | up_down = 1 | OUTPUT: q = 13
UVM_INFO scoreboard.sv(43) @ 1655000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 29 | up_down = 1 | OUTPUT: q = 13
UVM_INFO scoreboard.sv(63) @ 1655000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 166

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1660000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 31 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1660000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 31 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1665000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 31 | up_down = 1 | OUTPUT: q = 14
UVM_INFO scoreboard.sv(43) @ 1665000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 31 | up_down = 1 | OUTPUT: q = 14
UVM_INFO scoreboard.sv(63) @ 1665000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 167

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1670000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 116 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1670000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 116 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1675000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 116 | up_down = 1 | OUTPUT: q = 15
UVM_INFO scoreboard.sv(43) @ 1675000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 116 | up_down = 1 | OUTPUT: q = 15
UVM_INFO scoreboard.sv(63) @ 1675000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 168

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1680000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 255 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1680000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 255 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1685000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 255 | up_down = 1 | OUTPUT: q = 16
UVM_INFO scoreboard.sv(43) @ 1685000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 255 | up_down = 1 | OUTPUT: q = 16
UVM_INFO scoreboard.sv(63) @ 1685000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 169

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1690000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 84 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1690000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 84 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1695000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 84 | up_down = 1 | OUTPUT: q = 17
UVM_INFO scoreboard.sv(43) @ 1695000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 84 | up_down = 1 | OUTPUT: q = 17
UVM_INFO scoreboard.sv(63) @ 1695000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 170

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1700000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 212 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1700000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 212 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1705000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 212 | up_down = 1 | OUTPUT: q = 18
UVM_INFO scoreboard.sv(43) @ 1705000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 212 | up_down = 1 | OUTPUT: q = 18
UVM_INFO scoreboard.sv(63) @ 1705000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 171

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1710000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 101 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1710000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 101 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1715000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 101 | up_down = 1 | OUTPUT: q = 19
UVM_INFO scoreboard.sv(43) @ 1715000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 101 | up_down = 1 | OUTPUT: q = 19
UVM_INFO scoreboard.sv(63) @ 1715000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 172

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1720000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 88 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1720000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 88 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1725000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 88 | up_down = 1 | OUTPUT: q = 20
UVM_INFO scoreboard.sv(43) @ 1725000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 88 | up_down = 1 | OUTPUT: q = 20
UVM_INFO scoreboard.sv(63) @ 1725000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 173

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1730000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 140 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1730000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 140 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1735000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 140 | up_down = 1 | OUTPUT: q = 21
UVM_INFO scoreboard.sv(43) @ 1735000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 140 | up_down = 1 | OUTPUT: q = 21
UVM_INFO scoreboard.sv(63) @ 1735000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 174

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1740000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 142 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1740000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 142 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1745000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 142 | up_down = 1 | OUTPUT: q = 22
UVM_INFO scoreboard.sv(43) @ 1745000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 142 | up_down = 1 | OUTPUT: q = 22
UVM_INFO scoreboard.sv(63) @ 1745000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 175

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1750000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 202 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1750000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 202 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1755000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 202 | up_down = 1 | OUTPUT: q = 23
UVM_INFO scoreboard.sv(43) @ 1755000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 202 | up_down = 1 | OUTPUT: q = 23
UVM_INFO scoreboard.sv(63) @ 1755000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 176

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1760000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 64 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1760000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 64 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1765000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 64 | up_down = 1 | OUTPUT: q = 24
UVM_INFO scoreboard.sv(43) @ 1765000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 64 | up_down = 1 | OUTPUT: q = 24
UVM_INFO scoreboard.sv(63) @ 1765000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 177

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1770000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 241 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1770000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 241 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1775000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 241 | up_down = 1 | OUTPUT: q = 25
UVM_INFO scoreboard.sv(43) @ 1775000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 241 | up_down = 1 | OUTPUT: q = 25
UVM_INFO scoreboard.sv(63) @ 1775000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 178

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1780000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 29 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1780000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 29 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1785000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 29 | up_down = 1 | OUTPUT: q = 26
UVM_INFO scoreboard.sv(43) @ 1785000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 29 | up_down = 1 | OUTPUT: q = 26
UVM_INFO scoreboard.sv(63) @ 1785000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 179

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1790000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 21 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1790000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 21 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1795000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 21 | up_down = 1 | OUTPUT: q = 27
UVM_INFO scoreboard.sv(43) @ 1795000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 21 | up_down = 1 | OUTPUT: q = 27
UVM_INFO scoreboard.sv(63) @ 1795000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 180

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1800000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 101 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1800000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 101 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1805000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 101 | up_down = 1 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(43) @ 1805000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 101 | up_down = 1 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(63) @ 1805000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 181

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1810000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 157 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1810000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 157 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1815000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 157 | up_down = 1 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(43) @ 1815000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 157 | up_down = 1 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(63) @ 1815000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 182

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1820000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 176 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1820000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 176 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1825000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 176 | up_down = 1 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(43) @ 1825000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 176 | up_down = 1 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(63) @ 1825000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 183

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1830000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 104 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1830000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 104 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1835000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 104 | up_down = 1 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(43) @ 1835000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 104 | up_down = 1 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(63) @ 1835000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 184

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1840000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 61 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1840000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 61 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1845000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 61 | up_down = 1 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(43) @ 1845000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 61 | up_down = 1 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(63) @ 1845000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 185

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1850000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 101 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1850000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 101 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1855000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 101 | up_down = 1 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(43) @ 1855000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 101 | up_down = 1 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(63) @ 1855000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 186

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1860000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 56 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1860000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 56 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1865000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 56 | up_down = 1 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(43) @ 1865000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 56 | up_down = 1 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(63) @ 1865000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 187

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1870000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 247 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1870000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 247 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1875000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 247 | up_down = 1 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(43) @ 1875000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 247 | up_down = 1 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(63) @ 1875000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 188

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1880000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 237 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1880000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 237 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1885000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 237 | up_down = 1 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(43) @ 1885000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 237 | up_down = 1 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(63) @ 1885000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 189

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1890000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 98 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1890000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 98 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1895000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 98 | up_down = 1 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(43) @ 1895000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 98 | up_down = 1 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(63) @ 1895000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 190

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1900000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 27 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1900000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 27 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1905000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 27 | up_down = 1 | OUTPUT: q = 10
UVM_INFO scoreboard.sv(43) @ 1905000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 27 | up_down = 1 | OUTPUT: q = 10
UVM_INFO scoreboard.sv(63) @ 1905000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 191

	-------------------------- up variable ------------------------
UVM_INFO driver.sv(55) @ 1910000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 107 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1910000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 107 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1915000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 107 | up_down = 1 | OUTPUT: q = 11
UVM_INFO scoreboard.sv(43) @ 1915000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 107 | up_down = 1 | OUTPUT: q = 11
UVM_INFO scoreboard.sv(63) @ 1915000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 192

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 1920000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 85 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1920000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 85 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1925000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 85 | up_down = 0 | OUTPUT: q = 12
UVM_INFO scoreboard.sv(43) @ 1925000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 85 | up_down = 0 | OUTPUT: q = 12
UVM_INFO scoreboard.sv(63) @ 1925000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 193

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 1930000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 121 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1930000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 121 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1935000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 121 | up_down = 0 | OUTPUT: q = 11
UVM_INFO scoreboard.sv(43) @ 1935000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 121 | up_down = 0 | OUTPUT: q = 11
UVM_INFO scoreboard.sv(63) @ 1935000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 194

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 1940000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 80 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1940000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 80 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1945000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 80 | up_down = 0 | OUTPUT: q = 10
UVM_INFO scoreboard.sv(43) @ 1945000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 80 | up_down = 0 | OUTPUT: q = 10
UVM_INFO scoreboard.sv(63) @ 1945000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 195

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 1950000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 68 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1950000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 68 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1955000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 68 | up_down = 0 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(43) @ 1955000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 68 | up_down = 0 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(63) @ 1955000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 196

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 1960000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 154 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1960000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 154 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1965000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 154 | up_down = 0 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(43) @ 1965000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 154 | up_down = 0 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(63) @ 1965000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 197

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 1970000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 155 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1970000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 155 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1975000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 155 | up_down = 0 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(43) @ 1975000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 155 | up_down = 0 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(63) @ 1975000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 198

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 1980000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 33 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1980000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 33 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1985000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 33 | up_down = 0 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(43) @ 1985000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 33 | up_down = 0 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(63) @ 1985000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 199

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 1990000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 195 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 1990000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 195 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 1995000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 195 | up_down = 0 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(43) @ 1995000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 195 | up_down = 0 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(63) @ 1995000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 200

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2000000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 133 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2000000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 133 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2005000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 133 | up_down = 0 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(43) @ 2005000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 133 | up_down = 0 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(63) @ 2005000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 201

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2010000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 85 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2010000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 85 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2015000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 85 | up_down = 0 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(43) @ 2015000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 85 | up_down = 0 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(63) @ 2015000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 202

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2020000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 14 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2020000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 14 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2025000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 14 | up_down = 0 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(43) @ 2025000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 14 | up_down = 0 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(63) @ 2025000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 203

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2030000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 218 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2030000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 218 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2035000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 218 | up_down = 0 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(43) @ 2035000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 218 | up_down = 0 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(63) @ 2035000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 204

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2040000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 227 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2040000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 227 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2045000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 227 | up_down = 0 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(43) @ 2045000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 227 | up_down = 0 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(63) @ 2045000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 205

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2050000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 24 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2050000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 24 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2055000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 24 | up_down = 0 | OUTPUT: q = 226
UVM_INFO scoreboard.sv(43) @ 2055000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 24 | up_down = 0 | OUTPUT: q = 226
UVM_INFO scoreboard.sv(63) @ 2055000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 206

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2060000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 218 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2060000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 218 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2065000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 218 | up_down = 0 | OUTPUT: q = 23
UVM_INFO scoreboard.sv(43) @ 2065000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 218 | up_down = 0 | OUTPUT: q = 23
UVM_INFO scoreboard.sv(63) @ 2065000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 207

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2070000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 132 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2070000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 132 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2075000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 132 | up_down = 0 | OUTPUT: q = 22
UVM_INFO scoreboard.sv(43) @ 2075000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 132 | up_down = 0 | OUTPUT: q = 22
UVM_INFO scoreboard.sv(63) @ 2075000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 208

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2080000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 153 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2080000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 153 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2085000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 153 | up_down = 0 | OUTPUT: q = 21
UVM_INFO scoreboard.sv(43) @ 2085000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 153 | up_down = 0 | OUTPUT: q = 21
UVM_INFO scoreboard.sv(63) @ 2085000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 209

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2090000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 150 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2090000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 150 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2095000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 150 | up_down = 0 | OUTPUT: q = 20
UVM_INFO scoreboard.sv(43) @ 2095000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 150 | up_down = 0 | OUTPUT: q = 20
UVM_INFO scoreboard.sv(63) @ 2095000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 210

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2100000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 127 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2100000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 127 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2105000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 127 | up_down = 0 | OUTPUT: q = 19
UVM_INFO scoreboard.sv(43) @ 2105000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 127 | up_down = 0 | OUTPUT: q = 19
UVM_INFO scoreboard.sv(63) @ 2105000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 211

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2110000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 178 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2110000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 178 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2115000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 178 | up_down = 0 | OUTPUT: q = 18
UVM_INFO scoreboard.sv(43) @ 2115000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 178 | up_down = 0 | OUTPUT: q = 18
UVM_INFO scoreboard.sv(63) @ 2115000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 212

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2120000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 148 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2120000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 148 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2125000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 148 | up_down = 0 | OUTPUT: q = 17
UVM_INFO scoreboard.sv(43) @ 2125000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 148 | up_down = 0 | OUTPUT: q = 17
UVM_INFO scoreboard.sv(63) @ 2125000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 213

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2130000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 156 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2130000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 156 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2135000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 156 | up_down = 0 | OUTPUT: q = 16
UVM_INFO scoreboard.sv(43) @ 2135000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 156 | up_down = 0 | OUTPUT: q = 16
UVM_INFO scoreboard.sv(63) @ 2135000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 214

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2140000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 125 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2140000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 125 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2145000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 125 | up_down = 0 | OUTPUT: q = 15
UVM_INFO scoreboard.sv(43) @ 2145000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 125 | up_down = 0 | OUTPUT: q = 15
UVM_INFO scoreboard.sv(63) @ 2145000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 215

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2150000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 90 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2150000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 90 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2155000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 90 | up_down = 0 | OUTPUT: q = 14
UVM_INFO scoreboard.sv(43) @ 2155000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 90 | up_down = 0 | OUTPUT: q = 14
UVM_INFO scoreboard.sv(63) @ 2155000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 216

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2160000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 71 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2160000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 71 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2165000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 71 | up_down = 0 | OUTPUT: q = 13
UVM_INFO scoreboard.sv(43) @ 2165000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 71 | up_down = 0 | OUTPUT: q = 13
UVM_INFO scoreboard.sv(63) @ 2165000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 217

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2170000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 11 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2170000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 11 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2175000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 11 | up_down = 0 | OUTPUT: q = 12
UVM_INFO scoreboard.sv(43) @ 2175000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 11 | up_down = 0 | OUTPUT: q = 12
UVM_INFO scoreboard.sv(63) @ 2175000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 218

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2180000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 175 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2180000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 175 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2185000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 175 | up_down = 0 | OUTPUT: q = 10
UVM_INFO scoreboard.sv(43) @ 2185000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 175 | up_down = 0 | OUTPUT: q = 10
UVM_INFO scoreboard.sv(63) @ 2185000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 219

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2190000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 39 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2190000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 39 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2195000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 39 | up_down = 0 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(43) @ 2195000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 39 | up_down = 0 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(63) @ 2195000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 220

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2200000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 222 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2200000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 222 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2205000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 222 | up_down = 0 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(43) @ 2205000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 222 | up_down = 0 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(63) @ 2205000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 221

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2210000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 126 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2210000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 126 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2215000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 126 | up_down = 0 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(43) @ 2215000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 126 | up_down = 0 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(63) @ 2215000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 222

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2220000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 109 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2220000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 109 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2225000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 109 | up_down = 0 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(43) @ 2225000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 109 | up_down = 0 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(63) @ 2225000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 223

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2230000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 192 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2230000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 192 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2235000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 192 | up_down = 0 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(43) @ 2235000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 192 | up_down = 0 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(63) @ 2235000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 224

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2240000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 107 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2240000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 107 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2245000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 107 | up_down = 0 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(43) @ 2245000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 107 | up_down = 0 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(63) @ 2245000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 225

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2250000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 78 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2250000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 78 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2255000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 78 | up_down = 0 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(43) @ 2255000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 78 | up_down = 0 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(63) @ 2255000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 226

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2260000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 147 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2260000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 147 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2265000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 147 | up_down = 0 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(43) @ 2265000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 147 | up_down = 0 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(63) @ 2265000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 227

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2270000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 182 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2270000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 182 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2275000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 182 | up_down = 0 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(43) @ 2275000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 182 | up_down = 0 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(63) @ 2275000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 228

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2280000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 43 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2280000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 43 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2285000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 43 | up_down = 0 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(43) @ 2285000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 43 | up_down = 0 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(63) @ 2285000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 229

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2290000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 10 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2290000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 10 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2295000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 10 | up_down = 0 | OUTPUT: q = 42
UVM_INFO scoreboard.sv(43) @ 2295000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 10 | up_down = 0 | OUTPUT: q = 42
UVM_INFO scoreboard.sv(63) @ 2295000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 230

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2300000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 16 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2300000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 16 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2305000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 16 | up_down = 0 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(43) @ 2305000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 16 | up_down = 0 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(63) @ 2305000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 231

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2310000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 41 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2310000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 41 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2315000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 41 | up_down = 0 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(43) @ 2315000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 41 | up_down = 0 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(63) @ 2315000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 232

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2320000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 252 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2320000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 252 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2325000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 252 | up_down = 0 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(43) @ 2325000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 252 | up_down = 0 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(63) @ 2325000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 233

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2330000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 53 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2330000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 53 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2335000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 53 | up_down = 0 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(43) @ 2335000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 53 | up_down = 0 | OUTPUT: q = 6
UVM_INFO scoreboard.sv(63) @ 2335000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 234

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2340000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 231 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2340000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 231 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2345000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 231 | up_down = 0 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(43) @ 2345000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 231 | up_down = 0 | OUTPUT: q = 5
UVM_INFO scoreboard.sv(63) @ 2345000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 235

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2350000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 18 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2350000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 18 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2355000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 18 | up_down = 0 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(43) @ 2355000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 18 | up_down = 0 | OUTPUT: q = 4
UVM_INFO scoreboard.sv(63) @ 2355000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 236

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2360000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2360000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2365000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 0 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(43) @ 2365000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 240 | up_down = 0 | OUTPUT: q = 3
UVM_INFO scoreboard.sv(63) @ 2365000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 237

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2370000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 212 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2370000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 212 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2375000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 212 | up_down = 0 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(43) @ 2375000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 212 | up_down = 0 | OUTPUT: q = 2
UVM_INFO scoreboard.sv(63) @ 2375000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 238

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2380000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 84 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2380000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 84 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2385000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 84 | up_down = 0 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(43) @ 2385000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 84 | up_down = 0 | OUTPUT: q = 1
UVM_INFO scoreboard.sv(63) @ 2385000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 239

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2390000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 52 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2390000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 52 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2395000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 52 | up_down = 0 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(43) @ 2395000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 52 | up_down = 0 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(63) @ 2395000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 240

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2400000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 124 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2400000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 124 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2405000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 124 | up_down = 0 | OUTPUT: q = 51
UVM_INFO scoreboard.sv(43) @ 2405000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 124 | up_down = 0 | OUTPUT: q = 51
UVM_INFO scoreboard.sv(63) @ 2405000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 241

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2410000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 90 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2410000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 90 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2415000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 90 | up_down = 0 | OUTPUT: q = 50
UVM_INFO scoreboard.sv(43) @ 2415000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 90 | up_down = 0 | OUTPUT: q = 50
UVM_INFO scoreboard.sv(63) @ 2415000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 242

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2420000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 31 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2420000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 31 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2425000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 31 | up_down = 0 | OUTPUT: q = 49
UVM_INFO scoreboard.sv(43) @ 2425000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 31 | up_down = 0 | OUTPUT: q = 49
UVM_INFO scoreboard.sv(63) @ 2425000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 243

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2430000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 63 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2430000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 63 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2435000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 63 | up_down = 0 | OUTPUT: q = 30
UVM_INFO scoreboard.sv(43) @ 2435000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 63 | up_down = 0 | OUTPUT: q = 30
UVM_INFO scoreboard.sv(63) @ 2435000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 244

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2440000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 65 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2440000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 65 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2445000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 65 | up_down = 0 | OUTPUT: q = 29
UVM_INFO scoreboard.sv(43) @ 2445000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 65 | up_down = 0 | OUTPUT: q = 29
UVM_INFO scoreboard.sv(63) @ 2445000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 245

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2450000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 231 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2450000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 231 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2455000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 231 | up_down = 0 | OUTPUT: q = 28
UVM_INFO scoreboard.sv(43) @ 2455000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 231 | up_down = 0 | OUTPUT: q = 28
UVM_INFO scoreboard.sv(63) @ 2455000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 246

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2460000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 83 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2460000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 83 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2465000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 83 | up_down = 0 | OUTPUT: q = 27
UVM_INFO scoreboard.sv(43) @ 2465000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 83 | up_down = 0 | OUTPUT: q = 27
UVM_INFO scoreboard.sv(63) @ 2465000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 247

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2470000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 255 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2470000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 255 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2475000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 255 | up_down = 0 | OUTPUT: q = 26
UVM_INFO scoreboard.sv(43) @ 2475000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 255 | up_down = 0 | OUTPUT: q = 26
UVM_INFO scoreboard.sv(63) @ 2475000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 248

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2480000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 134 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2480000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 134 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2485000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 134 | up_down = 0 | OUTPUT: q = 25
UVM_INFO scoreboard.sv(43) @ 2485000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 134 | up_down = 0 | OUTPUT: q = 25
UVM_INFO scoreboard.sv(63) @ 2485000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 249

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2490000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 207 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2490000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 207 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2495000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 207 | up_down = 0 | OUTPUT: q = 24
UVM_INFO scoreboard.sv(43) @ 2495000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 207 | up_down = 0 | OUTPUT: q = 24
UVM_INFO scoreboard.sv(63) @ 2495000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 250

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2500000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 248 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2500000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 248 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2505000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 248 | up_down = 0 | OUTPUT: q = 23
UVM_INFO scoreboard.sv(43) @ 2505000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 248 | up_down = 0 | OUTPUT: q = 23
UVM_INFO scoreboard.sv(63) @ 2505000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 251

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2510000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 232 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2510000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 232 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2515000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 232 | up_down = 0 | OUTPUT: q = 22
UVM_INFO scoreboard.sv(43) @ 2515000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 232 | up_down = 0 | OUTPUT: q = 22
UVM_INFO scoreboard.sv(63) @ 2515000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 252

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2520000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 169 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2520000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 169 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2525000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 169 | up_down = 0 | OUTPUT: q = 21
UVM_INFO scoreboard.sv(43) @ 2525000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 169 | up_down = 0 | OUTPUT: q = 21
UVM_INFO scoreboard.sv(63) @ 2525000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 253

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2530000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 10 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2530000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 10 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2535000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 10 | up_down = 0 | OUTPUT: q = 20
UVM_INFO scoreboard.sv(43) @ 2535000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 10 | up_down = 0 | OUTPUT: q = 20
UVM_INFO scoreboard.sv(63) @ 2535000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 254

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2540000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 32 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2540000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 32 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2545000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 32 | up_down = 0 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(43) @ 2545000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 32 | up_down = 0 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(63) @ 2545000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 255

	-------------------------- down variable ------------------------
UVM_INFO driver.sv(55) @ 2550000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 75 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2550000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 75 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2555000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 75 | up_down = 0 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(43) @ 2555000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 75 | up_down = 0 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(63) @ 2555000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 256

	-------------------------- pure random ------------------------
UVM_INFO driver.sv(55) @ 2560000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 159 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2560000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 159 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2565000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 159 | up_down = 1 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(43) @ 2565000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 159 | up_down = 1 | OUTPUT: q = 7
UVM_INFO scoreboard.sv(63) @ 2565000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 257

	-------------------------- pure random ------------------------
UVM_INFO driver.sv(55) @ 2570000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 52 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2570000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 52 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2575000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 52 | up_down = 1 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(43) @ 2575000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 52 | up_down = 1 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(63) @ 2575000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 258

	-------------------------- pure random ------------------------
UVM_INFO driver.sv(55) @ 2580000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 0 | mod_n = 124 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2580000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 0 | mod_n = 124 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2585000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 0 | mod_n = 124 | up_down = 1 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(43) @ 2585000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 0 | mod_n = 124 | up_down = 1 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(63) @ 2585000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 259

	-------------------------- pure random ------------------------
UVM_INFO driver.sv(55) @ 2590000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 174 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2590000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 174 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2595000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 174 | up_down = 0 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(43) @ 2595000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 174 | up_down = 0 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(63) @ 2595000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 260

	-------------------------- pure random ------------------------
UVM_INFO driver.sv(55) @ 2600000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 132 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2600000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 132 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2605000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 132 | up_down = 1 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(43) @ 2605000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 132 | up_down = 1 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(63) @ 2605000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 261

	-------------------------- pure random ------------------------
UVM_INFO driver.sv(55) @ 2610000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 239 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2610000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 239 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2615000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 239 | up_down = 0 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(43) @ 2615000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 239 | up_down = 0 | OUTPUT: q = 9
UVM_INFO scoreboard.sv(63) @ 2615000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 262

	-------------------------- pure random ------------------------
UVM_INFO driver.sv(55) @ 2620000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 1 | enable = 1 | mod_n = 61 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2620000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 1 | enable = 1 | mod_n = 61 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2625000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 1 | enable = 1 | mod_n = 61 | up_down = 1 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(43) @ 2625000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 1 | enable = 1 | mod_n = 61 | up_down = 1 | OUTPUT: q = 8
UVM_INFO scoreboard.sv(63) @ 2625000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 263

	-------------------------- pure random ------------------------
UVM_INFO driver.sv(55) @ 2630000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 208 | up_down = 0 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2630000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 208 | up_down = 0 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2635000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 208 | up_down = 0 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(43) @ 2635000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 208 | up_down = 0 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(63) @ 2635000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 264

	-------------------------- pure random ------------------------
UVM_INFO driver.sv(55) @ 2640000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 0 | mod_n = 65 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2640000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 0 | mod_n = 65 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2645000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 0 | mod_n = 65 | up_down = 1 | OUTPUT: q = 207
UVM_INFO scoreboard.sv(43) @ 2645000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 0 | mod_n = 65 | up_down = 1 | OUTPUT: q = 207
UVM_INFO scoreboard.sv(63) @ 2645000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 265

	-------------------------- pure random ------------------------
UVM_INFO driver.sv(55) @ 2650000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 89 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2650000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 89 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2655000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 89 | up_down = 1 | OUTPUT: q = 207
UVM_INFO scoreboard.sv(43) @ 2655000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 89 | up_down = 1 | OUTPUT: q = 207
UVM_INFO scoreboard.sv(63) @ 2655000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 266

	-------------------------- pure random ------------------------
UVM_INFO driver.sv(55) @ 2660000: uvm_test_top.env.agt.drv [cnt_driver] INPUT reset = 0 | enable = 1 | mod_n = 233 | up_down = 1 | OUTPUT: q = 0
UVM_INFO sequence.sv(52) @ 2660000: uvm_test_top.env.agt.seqr@@seq [cnt_sequence] INPUT reset = 0 | enable = 1 | mod_n = 233 | up_down = 1 | OUTPUT: q = 0
UVM_INFO monitor.sv(51) @ 2665000: uvm_test_top.env.agt.mon [cnt_monitor] INPUT reset = 0 | enable = 1 | mod_n = 233 | up_down = 1 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(43) @ 2665000: uvm_test_top.env.scb [cnt_scoreboard] INPUT reset = 0 | enable = 1 | mod_n = 233 | up_down = 1 | OUTPUT: q = 0
UVM_INFO scoreboard.sv(63) @ 2665000: uvm_test_top.env.scb [cnt_scoreboard] ------------------- PASS -----------------
 ----------------------------------------------------- 267

UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_objection.svh(1276) @ 2670000: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
UVM_INFO coverage.sv(70) @ 2670000: uvm_test_top.env.cov [COVERAGE] ---------------------------------------------------------
UVM_INFO coverage.sv(72) @ 2670000: uvm_test_top.env.cov [COVERAGE] D flip flop functional coverage = 100.00%
UVM_INFO coverage.sv(74) @ 2670000: uvm_test_top.env.cov [COVERAGE] ---------------------------------------------------------
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_report_server.svh(904) @ 2670000: reporter [UVM/REPORT/SERVER] 
--- UVM Report Summary ---

** Report counts by severity
UVM_INFO : 1344
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
[cnt_driver]   267
[cnt_monitor]   267
[cnt_scoreboard]   534
[cnt_sequence]   267

$finish at simulation time              2670000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 2670000 ps
CPU Time:      0.820 seconds;       Data structure size:   0.4Mb
