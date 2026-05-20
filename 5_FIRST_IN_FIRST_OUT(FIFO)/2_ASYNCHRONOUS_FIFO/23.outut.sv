UVM_INFO @ 0: reporter [RNTST] Running test async_fifo_test...
UVM_INFO test.sv(26) @ 0: uvm_test_top [async_fifo_test] printing topology
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh(594) @ 0: reporter [UVMTOP] UVM testbench topology:
--------------------------------------------------------------------
Name                       Type                          Size  Value
--------------------------------------------------------------------
uvm_test_top               async_fifo_test               -     @341 
  env                      async_fifo_environment        -     @354 
    cov                    async_fifo_coverage           -     @532 
      rd_cov_export        uvm_analysis_imp_rd           -     @551 
      wr_cov_export        uvm_analysis_imp_wr           -     @541 
    rd_agt                 async_fifo_rd_agent           -     @377 
      rd_drv               async_fifo_rd_driver          -     @700 
        rsp_port           uvm_analysis_port             -     @719 
        seq_item_port      uvm_seq_item_pull_port        -     @709 
      rd_mon               async_fifo_rd_monitor         -     @729 
        rd_analysis_port   uvm_analysis_port             -     @740 
      rd_seqr              async_fifo_rd_sequencer       -     @563 
        rsp_export         uvm_analysis_export           -     @572 
        seq_item_export    uvm_seq_item_pull_imp         -     @690 
        arbitration_queue  array                         0     -    
        lock_queue         array                         0     -    
        num_last_reqs      integral                      32    'd1  
        num_last_rsps      integral                      32    'd1  
    scb                    async_fifo_scoreboard         -     @523 
      rd_analysis_import   uvm_analysis_imp_rd           -     @765 
      wr_analysis_import   uvm_analysis_imp_wr           -     @755 
    vseqr                  async_fifo_virtual_sequencer  -     @386 
      rsp_export           uvm_analysis_export           -     @395 
      seq_item_export      uvm_seq_item_pull_imp         -     @513 
      arbitration_queue    array                         0     -    
      lock_queue           array                         0     -    
      num_last_reqs        integral                      32    'd1  
      num_last_rsps        integral                      32    'd1  
    wr_agt                 async_fifo_wr_agent           -     @368 
      wr_drv               async_fifo_wr_driver          -     @919 
        rsp_port           uvm_analysis_port             -     @938 
        seq_item_port      uvm_seq_item_pull_port        -     @928 
      wr_mon               async_fifo_wr_monitor         -     @948 
        wr_analysis_port   uvm_analysis_port             -     @959 
      wr_seqr              async_fifo_wr_sequencer       -     @782 
        rsp_export         uvm_analysis_export           -     @791 
        seq_item_export    uvm_seq_item_pull_imp         -     @909 
        arbitration_queue  array                         0     -    
        lock_queue         array                         0     -    
        num_last_reqs      integral                      32    'd1  
        num_last_rsps      integral                      32    'd1  
--------------------------------------------------------------------

UVM_INFO virtual_sequence.sv(26) @ 0: uvm_test_top.env.vseqr@@vseq [async_fifo_virtual_sequence] Inside Virtual sequence
UVM_INFO write_sequence.sv(19) @ 0: uvm_test_top.env.wr_agt.wr_seqr@@wr_seq [async_fifo_wr_sequence] Write Stimuli generation starts
---- RESET condition ----
UVM_INFO write_driver.sv(50) @ 0: uvm_test_top.env.wr_agt.wr_drv [async_fifo_wr_driver] Time =0 | wr_rst = 0 | wr_en = 0 | data_in = 0(0) | full = 0
UVM_INFO write_sequence.sv(49) @ 0: uvm_test_top.env.wr_agt.wr_seqr@@wr_seq [async_fifo_wr_sequence] Time =0 | wr_rst = 0 | wr_en = 0 | data_in = 0(0) | full = 0
---- FULL condition ----
UVM_INFO write_monitor.sv(52) @ 5: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =5 | wr_rst = 0 | wr_en = 0 | data_in = 0(0) | full = 0
UVM_INFO scoreboard.sv(66) @ 5: uvm_test_top.env.scb [async_fifo_scoreboard] WRITE reset detected: wr_ptr tracking reset (fifo queue preserved)
UVM_INFO write_driver.sv(50) @ 10: uvm_test_top.env.wr_agt.wr_drv [async_fifo_wr_driver] Time =10 | wr_rst = 1 | wr_en = 1 | data_in = 117(1110101) | full = 0
UVM_INFO read_monitor.sv(52) @ 10: uvm_test_top.env.rd_agt.rd_mon [async_fifo_rd_monitor] Time =10 | rd_rst = 0 | rd_en = 0 | data_out = 0(0) | empty = 1
UVM_INFO scoreboard.sv(74) @ 10: uvm_test_top.env.scb [async_fifo_scoreboard] READ reset detected: rd_ptr tracking reset (fifo queue preserved)
UVM_INFO write_sequence.sv(49) @ 10: uvm_test_top.env.wr_agt.wr_seqr@@wr_seq [async_fifo_wr_sequence] Time =10 | wr_rst = 1 | wr_en = 1 | data_in = 117(1110101) | full = 0
---- FULL condition ----
UVM_INFO write_monitor.sv(52) @ 15: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =15 | wr_rst = 1 | wr_en = 1 | data_in = 117(1110101) | full = 0
UVM_INFO scoreboard.sv(104) @ 15: uvm_test_top.env.scb [async_fifo_scoreboard] WRITE Accepted: data_in=117 | model_size=1 | DUT full=0
UVM_INFO scoreboard.sv(116) @ 15: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag -- pass
UVM_INFO write_driver.sv(50) @ 20: uvm_test_top.env.wr_agt.wr_drv [async_fifo_wr_driver] Time =20 | wr_rst = 1 | wr_en = 1 | data_in = 213(11010101) | full = 0
UVM_INFO write_sequence.sv(49) @ 20: uvm_test_top.env.wr_agt.wr_seqr@@wr_seq [async_fifo_wr_sequence] Time =20 | wr_rst = 1 | wr_en = 1 | data_in = 213(11010101) | full = 0
---- FULL condition ----
UVM_INFO write_monitor.sv(52) @ 25: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =25 | wr_rst = 1 | wr_en = 1 | data_in = 213(11010101) | full = 0
UVM_INFO scoreboard.sv(104) @ 25: uvm_test_top.env.scb [async_fifo_scoreboard] WRITE Accepted: data_in=213 | model_size=2 | DUT full=0
UVM_INFO scoreboard.sv(116) @ 25: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag -- pass
UVM_INFO write_driver.sv(50) @ 30: uvm_test_top.env.wr_agt.wr_drv [async_fifo_wr_driver] Time =30 | wr_rst = 1 | wr_en = 1 | data_in = 41(101001) | full = 0
UVM_INFO read_monitor.sv(52) @ 30: uvm_test_top.env.rd_agt.rd_mon [async_fifo_rd_monitor] Time =30 | rd_rst = 1 | rd_en = 0 | data_out = 0(0) | empty = 1
UVM_INFO scoreboard.sv(175) @ 30: uvm_test_top.env.scb [async_fifo_scoreboard] EMPTY flag CDC latency (expected soon): exp=0 dut=1 model_size=2
UVM_INFO write_sequence.sv(49) @ 30: uvm_test_top.env.wr_agt.wr_seqr@@wr_seq [async_fifo_wr_sequence] Time =30 | wr_rst = 1 | wr_en = 1 | data_in = 41(101001) | full = 0
---- FULL condition ----
UVM_INFO write_monitor.sv(52) @ 35: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =35 | wr_rst = 1 | wr_en = 1 | data_in = 41(101001) | full = 0
UVM_INFO scoreboard.sv(104) @ 35: uvm_test_top.env.scb [async_fifo_scoreboard] WRITE Accepted: data_in=41 | model_size=3 | DUT full=0
UVM_INFO scoreboard.sv(116) @ 35: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag -- pass
UVM_INFO write_driver.sv(50) @ 40: uvm_test_top.env.wr_agt.wr_drv [async_fifo_wr_driver] Time =40 | wr_rst = 1 | wr_en = 1 | data_in = 135(10000111) | full = 0
UVM_INFO write_sequence.sv(49) @ 40: uvm_test_top.env.wr_agt.wr_seqr@@wr_seq [async_fifo_wr_sequence] Time =40 | wr_rst = 1 | wr_en = 1 | data_in = 135(10000111) | full = 0
Write Idle condition
UVM_INFO write_monitor.sv(52) @ 45: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =45 | wr_rst = 1 | wr_en = 1 | data_in = 135(10000111) | full = 0
UVM_INFO scoreboard.sv(104) @ 45: uvm_test_top.env.scb [async_fifo_scoreboard] WRITE Accepted: data_in=135 | model_size=4 | DUT full=0
UVM_INFO scoreboard.sv(112) @ 45: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag CDC latency (expected soon): exp=1 dut=0 model_size=4
UVM_INFO read_sequence.sv(19) @ 50: uvm_test_top.env.rd_agt.rd_seqr@@rd_seq [async_fifo_rd_sequence] read Stimuli generation starts
---- RESET condition ----
UVM_INFO write_driver.sv(50) @ 50: uvm_test_top.env.wr_agt.wr_drv [async_fifo_wr_driver] Time =50 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 0
UVM_INFO read_monitor.sv(52) @ 50: uvm_test_top.env.rd_agt.rd_mon [async_fifo_rd_monitor] Time =50 | rd_rst = 1 | rd_en = 0 | data_out = 0(0) | empty = 1
UVM_INFO scoreboard.sv(175) @ 50: uvm_test_top.env.scb [async_fifo_scoreboard] EMPTY flag CDC latency (expected soon): exp=0 dut=1 model_size=4
UVM_INFO write_sequence.sv(49) @ 50: uvm_test_top.env.wr_agt.wr_seqr@@wr_seq [async_fifo_wr_sequence] Time =50 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 0
Write Idle condition
UVM_INFO write_monitor.sv(52) @ 55: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =55 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 1
UVM_INFO scoreboard.sv(116) @ 55: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag -- pass
UVM_INFO write_driver.sv(50) @ 60: uvm_test_top.env.wr_agt.wr_drv [async_fifo_wr_driver] Time =60 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 0
UVM_INFO read_driver.sv(49) @ 60: uvm_test_top.env.rd_agt.rd_drv [async_fifo_rd_driver] Time =60 | rd_rst = 0 | rd_en = 0 | data_out = 0(0) | empty = 0
UVM_INFO write_sequence.sv(49) @ 60: uvm_test_top.env.wr_agt.wr_seqr@@wr_seq [async_fifo_wr_sequence] Time =60 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 0
UVM_INFO read_sequence.sv(42) @ 60: uvm_test_top.env.rd_agt.rd_seqr@@rd_seq [async_fifo_rd_sequence] Time =60 | rd_rst = 0 | rd_en = 0 | data_out = 0(0) | empty = 0
---- READ condition ----
Write Idle condition
UVM_INFO write_monitor.sv(52) @ 65: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =65 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 1
UVM_INFO scoreboard.sv(116) @ 65: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag -- pass
UVM_INFO write_driver.sv(50) @ 70: uvm_test_top.env.wr_agt.wr_drv [async_fifo_wr_driver] Time =70 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 0
UVM_INFO read_monitor.sv(52) @ 70: uvm_test_top.env.rd_agt.rd_mon [async_fifo_rd_monitor] Time =70 | rd_rst = 0 | rd_en = 0 | data_out = 0(0) | empty = 1
UVM_INFO scoreboard.sv(74) @ 70: uvm_test_top.env.scb [async_fifo_scoreboard] READ reset detected: rd_ptr tracking reset (fifo queue preserved)
UVM_INFO write_sequence.sv(49) @ 70: uvm_test_top.env.wr_agt.wr_seqr@@wr_seq [async_fifo_wr_sequence] Time =70 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 0
UVM_INFO write_monitor.sv(52) @ 75: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =75 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 1
UVM_INFO scoreboard.sv(116) @ 75: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag -- pass
UVM_INFO read_driver.sv(49) @ 80: uvm_test_top.env.rd_agt.rd_drv [async_fifo_rd_driver] Time =80 | rd_rst = 1 | rd_en = 1 | data_out = 0(0) | empty = 0
UVM_INFO read_sequence.sv(42) @ 80: uvm_test_top.env.rd_agt.rd_seqr@@rd_seq [async_fifo_rd_sequence] Time =80 | rd_rst = 1 | rd_en = 1 | data_out = 0(0) | empty = 0
---- READ condition ----
UVM_INFO write_monitor.sv(52) @ 85: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =85 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 1
UVM_INFO scoreboard.sv(116) @ 85: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag -- pass
UVM_INFO read_monitor.sv(52) @ 90: uvm_test_top.env.rd_agt.rd_mon [async_fifo_rd_monitor] Time =90 | rd_rst = 1 | rd_en = 1 | data_out = 0(0) | empty = 1
UVM_INFO scoreboard.sv(175) @ 90: uvm_test_top.env.scb [async_fifo_scoreboard] EMPTY flag CDC latency (expected soon): exp=0 dut=1 model_size=4
UVM_INFO write_monitor.sv(52) @ 95: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =95 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 1
UVM_INFO scoreboard.sv(116) @ 95: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag -- pass
UVM_INFO read_driver.sv(49) @ 100: uvm_test_top.env.rd_agt.rd_drv [async_fifo_rd_driver] Time =100 | rd_rst = 1 | rd_en = 1 | data_out = 0(0) | empty = 0
UVM_INFO read_sequence.sv(42) @ 100: uvm_test_top.env.rd_agt.rd_seqr@@rd_seq [async_fifo_rd_sequence] Time =100 | rd_rst = 1 | rd_en = 1 | data_out = 0(0) | empty = 0
---- READ condition ----
UVM_INFO write_monitor.sv(52) @ 105: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =105 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 1
UVM_INFO scoreboard.sv(116) @ 105: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag -- pass
UVM_INFO read_monitor.sv(52) @ 110: uvm_test_top.env.rd_agt.rd_mon [async_fifo_rd_monitor] Time =110 | rd_rst = 1 | rd_en = 1 | data_out = 0(0) | empty = 1
UVM_INFO scoreboard.sv(175) @ 110: uvm_test_top.env.scb [async_fifo_scoreboard] EMPTY flag CDC latency (expected soon): exp=0 dut=1 model_size=4
UVM_INFO write_monitor.sv(52) @ 115: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =115 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 1
UVM_INFO scoreboard.sv(116) @ 115: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag -- pass
UVM_INFO read_driver.sv(49) @ 120: uvm_test_top.env.rd_agt.rd_drv [async_fifo_rd_driver] Time =120 | rd_rst = 1 | rd_en = 1 | data_out = 0(0) | empty = 0
UVM_INFO read_sequence.sv(42) @ 120: uvm_test_top.env.rd_agt.rd_seqr@@rd_seq [async_fifo_rd_sequence] Time =120 | rd_rst = 1 | rd_en = 1 | data_out = 0(0) | empty = 0
---- READ condition ----
UVM_INFO write_monitor.sv(52) @ 125: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =125 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 1
UVM_INFO scoreboard.sv(116) @ 125: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag -- pass
UVM_INFO read_monitor.sv(52) @ 130: uvm_test_top.env.rd_agt.rd_mon [async_fifo_rd_monitor] Time =130 | rd_rst = 1 | rd_en = 1 | data_out = 0(0) | empty = 0
UVM_INFO scoreboard.sv(179) @ 130: uvm_test_top.env.scb [async_fifo_scoreboard] EMPTY flag -- pass
UVM_INFO write_monitor.sv(52) @ 135: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =135 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 1
UVM_INFO scoreboard.sv(116) @ 135: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag -- pass
UVM_INFO read_driver.sv(49) @ 140: uvm_test_top.env.rd_agt.rd_drv [async_fifo_rd_driver] Time =140 | rd_rst = 1 | rd_en = 1 | data_out = 0(0) | empty = 0
UVM_INFO read_sequence.sv(42) @ 140: uvm_test_top.env.rd_agt.rd_seqr@@rd_seq [async_fifo_rd_sequence] Time =140 | rd_rst = 1 | rd_en = 1 | data_out = 0(0) | empty = 0
---- READ condition ----
UVM_INFO write_monitor.sv(52) @ 145: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =145 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 1
UVM_INFO scoreboard.sv(116) @ 145: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag -- pass
UVM_INFO read_monitor.sv(52) @ 150: uvm_test_top.env.rd_agt.rd_mon [async_fifo_rd_monitor] Time =150 | rd_rst = 1 | rd_en = 1 | data_out = 117(1110101) | empty = 0
UVM_INFO scoreboard.sv(160) @ 150: uvm_test_top.env.scb [async_fifo_scoreboard] DATA PASS: expected=117 got=117 | remaining=3
UVM_INFO scoreboard.sv(179) @ 150: uvm_test_top.env.scb [async_fifo_scoreboard] EMPTY flag -- pass
UVM_INFO write_monitor.sv(52) @ 155: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =155 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 0
UVM_INFO scoreboard.sv(116) @ 155: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag -- pass
UVM_INFO read_driver.sv(49) @ 160: uvm_test_top.env.rd_agt.rd_drv [async_fifo_rd_driver] Time =160 | rd_rst = 1 | rd_en = 1 | data_out = 0(0) | empty = 0
UVM_INFO read_sequence.sv(42) @ 160: uvm_test_top.env.rd_agt.rd_seqr@@rd_seq [async_fifo_rd_sequence] Time =160 | rd_rst = 1 | rd_en = 1 | data_out = 0(0) | empty = 0
---- READ condition ----
UVM_INFO write_monitor.sv(52) @ 165: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =165 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 0
UVM_INFO scoreboard.sv(116) @ 165: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag -- pass
UVM_INFO read_monitor.sv(52) @ 170: uvm_test_top.env.rd_agt.rd_mon [async_fifo_rd_monitor] Time =170 | rd_rst = 1 | rd_en = 1 | data_out = 213(11010101) | empty = 0
UVM_INFO scoreboard.sv(160) @ 170: uvm_test_top.env.scb [async_fifo_scoreboard] DATA PASS: expected=213 got=213 | remaining=2
UVM_INFO scoreboard.sv(179) @ 170: uvm_test_top.env.scb [async_fifo_scoreboard] EMPTY flag -- pass
UVM_INFO write_monitor.sv(52) @ 175: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =175 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 0
UVM_INFO scoreboard.sv(116) @ 175: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag -- pass
UVM_INFO read_driver.sv(49) @ 180: uvm_test_top.env.rd_agt.rd_drv [async_fifo_rd_driver] Time =180 | rd_rst = 1 | rd_en = 1 | data_out = 0(0) | empty = 0
UVM_INFO read_sequence.sv(42) @ 180: uvm_test_top.env.rd_agt.rd_seqr@@rd_seq [async_fifo_rd_sequence] Time =180 | rd_rst = 1 | rd_en = 1 | data_out = 0(0) | empty = 0
---- READ condition ----
UVM_INFO write_monitor.sv(52) @ 185: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =185 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 0
UVM_INFO scoreboard.sv(116) @ 185: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag -- pass
UVM_INFO read_monitor.sv(52) @ 190: uvm_test_top.env.rd_agt.rd_mon [async_fifo_rd_monitor] Time =190 | rd_rst = 1 | rd_en = 1 | data_out = 41(101001) | empty = 0
UVM_INFO scoreboard.sv(160) @ 190: uvm_test_top.env.scb [async_fifo_scoreboard] DATA PASS: expected=41 got=41 | remaining=1
UVM_INFO scoreboard.sv(179) @ 190: uvm_test_top.env.scb [async_fifo_scoreboard] EMPTY flag -- pass
UVM_INFO write_monitor.sv(52) @ 195: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =195 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 0
UVM_INFO scoreboard.sv(116) @ 195: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag -- pass
UVM_INFO read_driver.sv(49) @ 200: uvm_test_top.env.rd_agt.rd_drv [async_fifo_rd_driver] Time =200 | rd_rst = 1 | rd_en = 1 | data_out = 0(0) | empty = 0
UVM_INFO read_sequence.sv(42) @ 200: uvm_test_top.env.rd_agt.rd_seqr@@rd_seq [async_fifo_rd_sequence] Time =200 | rd_rst = 1 | rd_en = 1 | data_out = 0(0) | empty = 0
UVM_INFO write_monitor.sv(52) @ 205: uvm_test_top.env.wr_agt.wr_mon [async_fifo_wr_monitor] Time =205 | wr_rst = 1 | wr_en = 0 | data_in = 0(0) | full = 0
UVM_INFO scoreboard.sv(116) @ 205: uvm_test_top.env.scb [async_fifo_scoreboard] FULL flag -- pass
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_objection.svh(1276) @ 210: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
UVM_INFO coverage.sv(115) @ 210: uvm_test_top.env.cov [COVERAGE] ---------------------------------------------------------
UVM_INFO coverage.sv(116) @ 210: uvm_test_top.env.cov [COVERAGE] ASYNC_FIFO functional coverage = 91.67%
UVM_INFO coverage.sv(117) @ 210: uvm_test_top.env.cov [COVERAGE] ---------------------------------------------------------
UVM_INFO scoreboard.sv(189) @ 210: uvm_test_top.env.scb [async_fifo_scoreboard] SCOREBOARD SUMMARY: writes=4 reads=3 pass=3 fail=0 remaining_fifo_size=1
UVM_INFO /apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_report_server.svh(904) @ 210: reporter [UVM/REPORT/SERVER] 
--- UVM Report Summary ---

** Report counts by severity
UVM_INFO :  113
UVM_WARNING :    0
UVM_ERROR :    0
UVM_FATAL :    0
** Report counts by id
[COVERAGE]     3
[RNTST]     1
[TEST_DONE]     1
[UVM/RELNOTES]     1
[UVMTOP]     1
[async_fifo_rd_driver]     8
[async_fifo_rd_monitor]    10
[async_fifo_rd_sequence]     9
[async_fifo_scoreboard]    39
[async_fifo_test]     1
[async_fifo_virtual_sequence]     1
[async_fifo_wr_driver]     8
[async_fifo_wr_monitor]    21
[async_fifo_wr_sequence]     9

$finish called from file "/apps/vcsmx/vcs/X-2025.06-SP1//etc/uvm-1.2/src/base/uvm_root.svh", line 532.
$finish at simulation time                  210
           V C S   S i m u l a t i o n   R e p o r t 
