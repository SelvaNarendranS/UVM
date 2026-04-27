UVM_INFO @ 0: reporter [RNTST] Running test sync_fifo_test...
UVM_INFO test.sv(31) @ 0: uvm_test_top [TEST] printing topology
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh(594) @ 0: reporter [UVMTOP] UVM testbench topology:
--------------------------------------------------------------
Name                       Type                    Size  Value
--------------------------------------------------------------
uvm_test_top               sync_fifo_test          -     @341 
  env                      sync_fifo_environment   -     @354 
    agt                    sync_fifo_agent         -     @363 
      drv                  sync_fifo_driver        -     @538 
        rsp_port           uvm_analysis_port       -     @557 
        seq_item_port      uvm_seq_item_pull_port  -     @547 
      mon                  sync_fifo_monitor       -     @567 
        analysis_port      uvm_analysis_port       -     @578 
      seqr                 sync_fifo_sequencer     -     @401 
        rsp_export         uvm_analysis_export     -     @410 
        seq_item_export    uvm_seq_item_pull_imp   -     @528 
        arbitration_queue  array                   0     -    
        lock_queue         array                   0     -    
        num_last_reqs      integral                32    'd1  
        num_last_rsps      integral                32    'd1  
    cov                    sync_fifo_coverage      -     @381 
      analysis_imp         uvm_analysis_imp        -     @390 
    scb                    sync_fifo_scoreboard    -     @372 
      analysis_import      uvm_analysis_imp        -     @593 
--------------------------------------------------------------

UVM_INFO sequence.sv(19) @ 0: uvm_test_top.env.agt.seqr@@seq [sync_fifo_sequence] Stimuli generation starts
UVM_INFO driver.sv(51) @ 0: uvm_test_top.env.agt.drv [sync_fifo_driver] reset = 1 | wr_enable = 1 | rd_enable = 0 | data_in = 100 | data_out = 0 | full = 0 | empty = 0
UVM_INFO sequence.sv(46) @ 0: uvm_test_top.env.agt.seqr@@seq [sync_fifo_sequence] reset = 1 | wr_enable = 1 | rd_enable = 0 | data_in = 100 | data_out = 0 | full = 0 | empty = 0
UVM_INFO monitor.sv(55) @ 5000: uvm_test_top.env.agt.mon [sync_fifo_monitor] reset = 1 | wr_enable = 1 | rd_enable = 0 | data_in = 100 | data_out = 0 | full = 0 | empty = 0
UVM_INFO scoreboard.sv(54) @ 5000: uvm_test_top.env.scb [sync_fifo_scoreboard] reset = 1 | wr_enable = 1 | rd_enable = 0 | data_in = 100 | data_out = 0 | full = 0 | empty = 0
0
UVM_INFO driver.sv(51) @ 10000: uvm_test_top.env.agt.drv [sync_fifo_driver] reset = 0 | wr_enable = 1 | rd_enable = 0 | data_in = 212 | data_out = 0 | full = 0 | empty = 0
UVM_INFO sequence.sv(46) @ 10000: uvm_test_top.env.agt.seqr@@seq [sync_fifo_sequence] reset = 0 | wr_enable = 1 | rd_enable = 0 | data_in = 212 | data_out = 0 | full = 0 | empty = 0
UVM_INFO monitor.sv(55) @ 15000: uvm_test_top.env.agt.mon [sync_fifo_monitor] reset = 0 | wr_enable = 1 | rd_enable = 0 | data_in = 212 | data_out = 0 | full = 0 | empty = 1
UVM_INFO scoreboard.sv(54) @ 15000: uvm_test_top.env.scb [sync_fifo_scoreboard] reset = 0 | wr_enable = 1 | rd_enable = 0 | data_in = 212 | data_out = 0 | full = 0 | empty = 1
1
--------------------------------------
           full - PASS
--------------------------------------
--------------------------------------
           empty - PASS
--------------------------------------
UVM_INFO driver.sv(51) @ 20000: uvm_test_top.env.agt.drv [sync_fifo_driver] reset = 0 | wr_enable = 1 | rd_enable = 0 | data_in = 221 | data_out = 0 | full = 0 | empty = 0
UVM_INFO sequence.sv(46) @ 20000: uvm_test_top.env.agt.seqr@@seq [sync_fifo_sequence] reset = 0 | wr_enable = 1 | rd_enable = 0 | data_in = 221 | data_out = 0 | full = 0 | empty = 0
UVM_INFO monitor.sv(55) @ 25000: uvm_test_top.env.agt.mon [sync_fifo_monitor] reset = 0 | wr_enable = 1 | rd_enable = 0 | data_in = 221 | data_out = 0 | full = 0 | empty = 0
UVM_INFO scoreboard.sv(54) @ 25000: uvm_test_top.env.scb [sync_fifo_scoreboard] reset = 0 | wr_enable = 1 | rd_enable = 0 | data_in = 221 | data_out = 0 | full = 0 | empty = 0
2
--------------------------------------
           full - PASS
--------------------------------------
--------------------------------------
           empty - PASS
--------------------------------------
UVM_INFO driver.sv(51) @ 30000: uvm_test_top.env.agt.drv [sync_fifo_driver] reset = 0 | wr_enable = 1 | rd_enable = 0 | data_in = 102 | data_out = 0 | full = 0 | empty = 0
UVM_INFO sequence.sv(46) @ 30000: uvm_test_top.env.agt.seqr@@seq [sync_fifo_sequence] reset = 0 | wr_enable = 1 | rd_enable = 0 | data_in = 102 | data_out = 0 | full = 0 | empty = 0
UVM_INFO monitor.sv(55) @ 35000: uvm_test_top.env.agt.mon [sync_fifo_monitor] reset = 0 | wr_enable = 1 | rd_enable = 0 | data_in = 102 | data_out = 0 | full = 0 | empty = 0
UVM_INFO scoreboard.sv(54) @ 35000: uvm_test_top.env.scb [sync_fifo_scoreboard] reset = 0 | wr_enable = 1 | rd_enable = 0 | data_in = 102 | data_out = 0 | full = 0 | empty = 0
3
--------------------------------------
           full - PASS
--------------------------------------
--------------------------------------
           empty - PASS
--------------------------------------
UVM_INFO driver.sv(51) @ 40000: uvm_test_top.env.agt.drv [sync_fifo_driver] reset = 0 | wr_enable = 1 | rd_enable = 0 | data_in = 64 | data_out = 0 | full = 0 | empty = 0
UVM_INFO sequence.sv(46) @ 40000: uvm_test_top.env.agt.seqr@@seq [sync_fifo_sequence] reset = 0 | wr_enable = 1 | rd_enable = 0 | data_in = 64 | data_out = 0 | full = 0 | empty = 0
UVM_INFO monitor.sv(55) @ 45000: uvm_test_top.env.agt.mon [sync_fifo_monitor] reset = 0 | wr_enable = 1 | rd_enable = 0 | data_in = 64 | data_out = 0 | full = 0 | empty = 0
UVM_INFO scoreboard.sv(54) @ 45000: uvm_test_top.env.scb [sync_fifo_scoreboard] reset = 0 | wr_enable = 1 | rd_enable = 0 | data_in = 64 | data_out = 0 | full = 0 | empty = 0
4
--------------------------------------
           full - PASS
--------------------------------------
--------------------------------------
           empty - PASS
--------------------------------------
UVM_INFO driver.sv(51) @ 50000: uvm_test_top.env.agt.drv [sync_fifo_driver] reset = 0 | wr_enable = 1 | rd_enable = 1 | data_in = 44 | data_out = 0 | full = 0 | empty = 0
UVM_INFO sequence.sv(46) @ 50000: uvm_test_top.env.agt.seqr@@seq [sync_fifo_sequence] reset = 0 | wr_enable = 1 | rd_enable = 1 | data_in = 44 | data_out = 0 | full = 0 | empty = 0
UVM_INFO monitor.sv(55) @ 55000: uvm_test_top.env.agt.mon [sync_fifo_monitor] reset = 0 | wr_enable = 1 | rd_enable = 1 | data_in = 44 | data_out = 0 | full = 1 | empty = 0
UVM_INFO scoreboard.sv(54) @ 55000: uvm_test_top.env.scb [sync_fifo_scoreboard] reset = 0 | wr_enable = 1 | rd_enable = 1 | data_in = 44 | data_out = 0 | full = 1 | empty = 0
5
--------------------------------------
           full - PASS
--------------------------------------
--------------------------------------
           empty - PASS
--------------------------------------
UVM_INFO driver.sv(51) @ 60000: uvm_test_top.env.agt.drv [sync_fifo_driver] reset = 0 | wr_enable = 1 | rd_enable = 1 | data_in = 221 | data_out = 0 | full = 0 | empty = 0
UVM_INFO sequence.sv(46) @ 60000: uvm_test_top.env.agt.seqr@@seq [sync_fifo_sequence] reset = 0 | wr_enable = 1 | rd_enable = 1 | data_in = 221 | data_out = 0 | full = 0 | empty = 0
UVM_INFO monitor.sv(55) @ 65000: uvm_test_top.env.agt.mon [sync_fifo_monitor] reset = 0 | wr_enable = 1 | rd_enable = 1 | data_in = 221 | data_out = 212 | full = 0 | empty = 0
UVM_INFO scoreboard.sv(54) @ 65000: uvm_test_top.env.scb [sync_fifo_scoreboard] reset = 0 | wr_enable = 1 | rd_enable = 1 | data_in = 221 | data_out = 212 | full = 0 | empty = 0
6
--------------------------------------
           data out - PASS
--------------------------------------
--------------------------------------
           full - PASS
--------------------------------------
--------------------------------------
           empty - PASS
--------------------------------------
UVM_INFO driver.sv(51) @ 70000: uvm_test_top.env.agt.drv [sync_fifo_driver] reset = 0 | wr_enable = 0 | rd_enable = 1 | data_in = 217 | data_out = 0 | full = 0 | empty = 0
UVM_INFO sequence.sv(46) @ 70000: uvm_test_top.env.agt.seqr@@seq [sync_fifo_sequence] reset = 0 | wr_enable = 0 | rd_enable = 1 | data_in = 217 | data_out = 0 | full = 0 | empty = 0
UVM_INFO monitor.sv(55) @ 75000: uvm_test_top.env.agt.mon [sync_fifo_monitor] reset = 0 | wr_enable = 0 | rd_enable = 1 | data_in = 217 | data_out = 221 | full = 0 | empty = 0
UVM_INFO scoreboard.sv(54) @ 75000: uvm_test_top.env.scb [sync_fifo_scoreboard] reset = 0 | wr_enable = 0 | rd_enable = 1 | data_in = 217 | data_out = 221 | full = 0 | empty = 0
7
--------------------------------------
           data out - PASS
--------------------------------------
--------------------------------------
           full - PASS
--------------------------------------
--------------------------------------
           empty - PASS
--------------------------------------
UVM_INFO driver.sv(51) @ 80000: uvm_test_top.env.agt.drv [sync_fifo_driver] reset = 0 | wr_enable = 0 | rd_enable = 1 | data_in = 95 | data_out = 0 | full = 0 | empty = 0
UVM_INFO sequence.sv(46) @ 80000: uvm_test_top.env.agt.seqr@@seq [sync_fifo_sequence] reset = 0 | wr_enable = 0 | rd_enable = 1 | data_in = 95 | data_out = 0 | full = 0 | empty = 0
UVM_INFO monitor.sv(55) @ 85000: uvm_test_top.env.agt.mon [sync_fifo_monitor] reset = 0 | wr_enable = 0 | rd_enable = 1 | data_in = 95 | data_out = 102 | full = 0 | empty = 0
UVM_INFO scoreboard.sv(54) @ 85000: uvm_test_top.env.scb [sync_fifo_scoreboard] reset = 0 | wr_enable = 0 | rd_enable = 1 | data_in = 95 | data_out = 102 | full = 0 | empty = 0
8
--------------------------------------
           data out - PASS
--------------------------------------
--------------------------------------
           full - PASS
--------------------------------------
--------------------------------------
           empty - PASS
--------------------------------------
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_objection.svh(1276) @ 90000: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
UVM_INFO coverage.sv(41) @ 90000: uvm_test_top.env.cov [COVERAGE] ---------------------------------------------------------
UVM_INFO coverage.sv(42) @ 90000: uvm_test_top.env.cov [COVERAGE] SRAM functional coverage = 96.62%
UVM_INFO coverage.sv(43) @ 90000: uvm_test_top.env.cov [COVERAGE] ---------------------------------------------------------
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_report_server.svh(904) @ 90000: reporter [UVM/REPORT/SERVER] 
--- UVM Report Summary ---

** Report counts by severity
UVM_INFO :   45
UVM_WARNING :    0
UVM_ERROR :    0
UVM_FATAL :    0
** Report counts by id
[COVERAGE]     3
[RNTST]     1
[TEST]     1
[TEST_DONE]     1
[UVM/RELNOTES]     1
[UVMTOP]     1
[sync_fifo_driver]     9
[sync_fifo_monitor]     9
[sync_fifo_scoreboard]     9
[sync_fifo_sequence]    10

$finish at simulation time                90000
