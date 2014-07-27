fcode-version2
headerless

0 value $frame \ C stack-frame pointer


external
variable em-debug-level 0 em-debug-level l!
headerless


external
variable force-open 0 force-open l!
headerless


struct \ em_hw
   4 field em-hw.hw-addr
   4 field em-hw.mac-type
   4 field em-hw.media-type
   4 field em-hw.regs
   4 field em-hw.fc
   4 field em-hw.bus-speed
   4 field em-hw.bus-width
   4 field em-hw.bus-type
   4 field em-hw.phy-id
   4 field em-hw.phy-addr
   4 field em-hw.original-fc
   4 field em-hw.txcw
   4 field em-hw.autoneg-failed
   4 field em-hw.max-frame-size
   4 field em-hw.min-frame-size
   4 field em-hw.mc-filter-type
   4 field em-hw.num-mc-addrs
   4 field em-hw.collision-delta
   4 field em-hw.tx-packet-delta
   4 field em-hw.ledctl-default
   4 field em-hw.ledctl-mode1
   4 field em-hw.ledctl-mode2
   2 field em-hw.autoneg-advertised
   2 field em-hw.pci-cmd-word
   2 field em-hw.fc-high-water
   2 field em-hw.fc-low-water
   2 field em-hw.fc-pause-time
   2 field em-hw.current-ifs-val
   2 field em-hw.ifs-min-val
   2 field em-hw.ifs-max-val
   2 field em-hw.ifs-step-size
   2 field em-hw.ifs-ratio
   2 field em-hw.device-id
   2 field em-hw.vendor-id
   2 field em-hw.subsystem-id
   2 field em-hw.subsystem-vendor-id
   1 field em-hw.revision-id
   1 field em-hw.autoneg
   1 field em-hw.mdix
   1 field em-hw.forced-speed-duplex
   1 field em-hw.wait-autoneg-complete
   1 field em-hw.dma-fairness
   6 field em-hw.mac-addr
   6 field em-hw.perm-mac-addr
   1 field em-hw.disable-polarity-correction
   1 field em-hw.get-link-status
   1 field em-hw.tbi-compatibility-en
   1 field em-hw.tbi-compatibility-on
   1 field em-hw.fc-send-xon
   1 field em-hw.report-tx-early
   1 field em-hw.adaptive-ifs
   1 field em-hw.ifs-params-forced
   1 field em-hw.in-ifs-mode
   1 field em-hw.promiscuous
 constant em-hw.$size \ end struct

external
90 buffer: g-hw g-hw 90 0 fill
headerless


external
variable g-active-checksum-context 0 g-active-checksum-context l!
headerless


struct \ em_hw_stats
   4 field em-hw-stats.crcerrs
   4 field em-hw-stats.algnerrc
   4 field em-hw-stats.symerrs
   4 field em-hw-stats.rxerrc
   4 field em-hw-stats.mpc
   4 field em-hw-stats.scc
   4 field em-hw-stats.ecol
   4 field em-hw-stats.mcc
   4 field em-hw-stats.latecol
   4 field em-hw-stats.colc
   4 field em-hw-stats.dc
   4 field em-hw-stats.tncrs
   4 field em-hw-stats.sec
   4 field em-hw-stats.cexterr
   4 field em-hw-stats.rlec
   4 field em-hw-stats.xonrxc
   4 field em-hw-stats.xontxc
   4 field em-hw-stats.xoffrxc
   4 field em-hw-stats.xofftxc
   4 field em-hw-stats.fcruc
   4 field em-hw-stats.prc64
   4 field em-hw-stats.prc127
   4 field em-hw-stats.prc255
   4 field em-hw-stats.prc511
   4 field em-hw-stats.prc1023
   4 field em-hw-stats.prc1522
   4 field em-hw-stats.gprc
   4 field em-hw-stats.bprc
   4 field em-hw-stats.mprc
   4 field em-hw-stats.gptc
   4 field em-hw-stats.gorcl
   4 field em-hw-stats.gorch
   4 field em-hw-stats.gotcl
   4 field em-hw-stats.gotch
   4 field em-hw-stats.rnbc
   4 field em-hw-stats.ruc
   4 field em-hw-stats.rfc
   4 field em-hw-stats.roc
   4 field em-hw-stats.rjc
   4 field em-hw-stats.mgprc
   4 field em-hw-stats.mgpdc
   4 field em-hw-stats.mgptc
   4 field em-hw-stats.torl
   4 field em-hw-stats.torh
   4 field em-hw-stats.totl
   4 field em-hw-stats.toth
   4 field em-hw-stats.tpr
   4 field em-hw-stats.tpt
   4 field em-hw-stats.ptc64
   4 field em-hw-stats.ptc127
   4 field em-hw-stats.ptc255
   4 field em-hw-stats.ptc511
   4 field em-hw-stats.ptc1023
   4 field em-hw-stats.ptc1522
   4 field em-hw-stats.mptc
   4 field em-hw-stats.bptc
   4 field em-hw-stats.tsctc
   4 field em-hw-stats.tsctfc
 constant em-hw-stats.$size \ end struct

external
e8 buffer: g-stats g-stats e8 0 fill
headerless


struct \ uint64
   4 field uint64.lo
   4 field uint64.hi
 constant uint64.$size \ end struct

struct \ !unnamed_109
   2 field !unnamed-109.length
   1 field !unnamed-109.cso
   1 field !unnamed-109.cmd
 constant !unnamed-109.$size \ end struct

struct \ !unnamed_110
   1 field !unnamed-110.status
   1 field !unnamed-110.css
   2 field !unnamed-110.special
 constant !unnamed-110.$size \ end struct

struct \ em_tx_desc
   8 field em-tx-desc.buffer-addr
   4 field em-tx-desc.lower
   4 field em-tx-desc.upper
 constant em-tx-desc.$size \ end struct

struct \ em_rx_desc
   8 field em-rx-desc.buffer-addr
   2 field em-rx-desc.length
   2 field em-rx-desc.csum
   1 field em-rx-desc.status
   1 field em-rx-desc.errors
   2 field em-rx-desc.special
 constant em-rx-desc.$size \ end struct

struct \ adapter
  90 field adapter.hw
   4 field adapter.res-memory
   4 field adapter.res-interrupt
   4 field adapter.int-handler-tag
   1 field adapter.unit
   3 field adapter.$pad1
   4 field adapter.part-num
   1 field adapter.link-active
   1 field adapter.$pad2
   2 field adapter.link-speed
   2 field adapter.link-duplex
   2 field adapter.$pad3
   4 field adapter.tx-int-delay
   4 field adapter.rx-int-delay
   1 field adapter.rx-checksum
   3 field adapter.$pad4
   4 field adapter.active-checksum-context
   4 field adapter.dma-mem
   4 field adapter.map-mem
   4 field adapter.mem-len
   4 field adapter.tx-bufs
   4 field adapter.rx-bufs
   4 field adapter.first-tx-desc
   4 field adapter.last-tx-desc
   4 field adapter.next-avail-tx-desc
   4 field adapter.oldest-used-tx-desc
   4 field adapter.tx-desc-base
   4 field adapter.tx-desc-base-pci
   2 field adapter.num-tx-desc-avail
   2 field adapter.num-tx-desc
   4 field adapter.txd-cmd
   4 field adapter.first-rx-desc
   4 field adapter.last-rx-desc
   4 field adapter.next-rx-desc-to-check
   4 field adapter.rx-desc-base
   4 field adapter.rx-desc-base-pci
   2 field adapter.num-rx-desc
   2 field adapter.$pad5
   4 field adapter.rx-buffer-len
   4 field adapter.fmp
   4 field adapter.lmp
   4 field adapter.dropped-pkts
   4 field adapter.mbuf-alloc-failed
   4 field adapter.mbuf-cluster-failed
   4 field adapter.xmit-pullup
   4 field adapter.no-tx-desc-avail
   4 field adapter.no-tx-buffer-avail1
   4 field adapter.no-tx-buffer-avail2
  E8 field adapter.stats
 constant adapter.$size \ end struct

external
218 buffer: g-adapter g-adapter 218 0 fill
headerless


external
variable debug-regs 1 debug-regs l!
headerless

variable em-write-reg$hw
variable em-write-reg$reg
variable em-write-reg$val

external
\ function em_write_reg
: em-write-reg
 em-write-reg$val l!
 em-write-reg$reg l!
 em-write-reg$hw l!
 \ saved parameters
 debug-regs l@ if
 then
 em-write-reg$val l@ dup em-write-reg$hw l@ em-hw.regs l@ em-write-reg$reg l@ 2 >>a 4 * + rl! drop
 ; \ end em_write_reg
headerless

variable em-raise-ee-clk$hw
variable em-raise-ee-clk$eecd

\ function em_raise_ee_clk
: em-raise-ee-clk
 em-raise-ee-clk$eecd l!
 em-raise-ee-clk$hw l!
 \ saved parameters
 em-raise-ee-clk$eecd l@ l@ 1 or dup em-raise-ee-clk$eecd l@ l! drop
 em-raise-ee-clk$hw l@ 10 em-raise-ee-clk$eecd l@ l@ em-write-reg
 1 ms
 ; \ end em_raise_ee_clk
variable em-lower-ee-clk$hw
variable em-lower-ee-clk$eecd

\ function em_lower_ee_clk
: em-lower-ee-clk
 em-lower-ee-clk$eecd l!
 em-lower-ee-clk$hw l!
 \ saved parameters
 em-lower-ee-clk$eecd l@ l@ -2 and dup em-lower-ee-clk$eecd l@ l! drop
 em-lower-ee-clk$hw l@ 10 em-lower-ee-clk$eecd l@ l@ em-write-reg
 1 ms
 ; \ end em_lower_ee_clk
variable em-shift-out-ee-bits$hw
variable em-shift-out-ee-bits$data
variable em-shift-out-ee-bits$count
variable em-shift-out-ee-bits$mask
variable em-shift-out-ee-bits$eecd

\ function em_shift_out_ee_bits
: em-shift-out-ee-bits
 em-shift-out-ee-bits$count w!
 em-shift-out-ee-bits$data w!
 em-shift-out-ee-bits$hw l!
 \ saved parameters
 1 em-shift-out-ee-bits$count w@ FFFF and 1 - lshift dup em-shift-out-ee-bits$mask l! drop
 em-shift-out-ee-bits$hw l@ em-hw.regs l@ 10 + rl@ dup em-shift-out-ee-bits$eecd l! drop
 em-shift-out-ee-bits$eecd dup l@ -D and tuck swap l! drop

 begin em-shift-out-ee-bits$eecd dup l@ -5 and tuck swap l! drop
 em-shift-out-ee-bits$data w@ FFFF and em-shift-out-ee-bits$mask l@ and if
 em-shift-out-ee-bits$eecd dup l@ 4 or tuck swap l! drop then
 em-shift-out-ee-bits$hw l@ 10 em-shift-out-ee-bits$eecd l@ em-write-reg
 1 ms
 em-shift-out-ee-bits$hw l@ em-shift-out-ee-bits$eecd em-raise-ee-clk
 em-shift-out-ee-bits$hw l@ em-shift-out-ee-bits$eecd em-lower-ee-clk
 em-shift-out-ee-bits$mask l@ 1 rshift dup em-shift-out-ee-bits$mask l! drop
 em-shift-out-ee-bits$mask l@ while repeat
 em-shift-out-ee-bits$eecd dup l@ -5 and tuck swap l! drop
 em-shift-out-ee-bits$hw l@ 10 em-shift-out-ee-bits$eecd l@ em-write-reg
 ; \ end em_shift_out_ee_bits
variable em-shift-in-ee-bits$hw
variable em-shift-in-ee-bits$i
variable em-shift-in-ee-bits$data
variable em-shift-in-ee-bits$eecd

\ function em_shift_in_ee_bits
: em-shift-in-ee-bits
 em-shift-in-ee-bits$hw l!
 \ saved parameters
 em-shift-in-ee-bits$hw l@ em-hw.regs l@ 10 + rl@ dup em-shift-in-ee-bits$eecd l! drop
 em-shift-in-ee-bits$eecd dup l@ -D and tuck swap l! drop
 0 FFFF and dup em-shift-in-ee-bits$data w! drop
 0 dup em-shift-in-ee-bits$i l! drop
 begin em-shift-in-ee-bits$i l@ 10 < 1 and while
 em-shift-in-ee-bits$data w@ FFFF and 1 lshift FFFF and dup em-shift-in-ee-bits$data w! drop
 em-shift-in-ee-bits$hw l@ em-shift-in-ee-bits$eecd em-raise-ee-clk
 em-shift-in-ee-bits$hw l@ em-hw.regs l@ 10 + rl@ dup em-shift-in-ee-bits$eecd l! drop
 em-shift-in-ee-bits$eecd dup l@ -5 and tuck swap l! drop
 em-shift-in-ee-bits$eecd l@ 8 and if
 em-shift-in-ee-bits$data dup w@ 1 or tuck swap w! drop then
 em-shift-in-ee-bits$hw l@ em-shift-in-ee-bits$eecd em-lower-ee-clk
 em-shift-in-ee-bits$i dup l@ tuck 1 + swap l! drop repeat
 em-shift-in-ee-bits$data w@ exit
 ; \ end em_shift_in_ee_bits
variable em-setup-eeprom$hw
variable em-setup-eeprom$eecd

\ function em_setup_eeprom
: em-setup-eeprom
 em-setup-eeprom$hw l!
 \ saved parameters
 em-setup-eeprom$hw l@ em-hw.regs l@ 10 + rl@ dup em-setup-eeprom$eecd l! drop
 em-setup-eeprom$eecd dup l@ -6 and tuck swap l! drop
 em-setup-eeprom$hw l@ 10 em-setup-eeprom$eecd l@ em-write-reg
 em-setup-eeprom$eecd dup l@ 2 or tuck swap l! drop
 em-setup-eeprom$hw l@ 10 em-setup-eeprom$eecd l@ em-write-reg
 ; \ end em_setup_eeprom
variable em-standby-eeprom$hw
variable em-standby-eeprom$eecd

\ function em_standby_eeprom
: em-standby-eeprom
 em-standby-eeprom$hw l!
 \ saved parameters
 em-standby-eeprom$hw l@ em-hw.regs l@ 10 + rl@ dup em-standby-eeprom$eecd l! drop
 em-standby-eeprom$eecd dup l@ -4 and tuck swap l! drop
 em-standby-eeprom$hw l@ 10 em-standby-eeprom$eecd l@ em-write-reg
 1 ms
 em-standby-eeprom$eecd dup l@ 1 or tuck swap l! drop
 em-standby-eeprom$hw l@ 10 em-standby-eeprom$eecd l@ em-write-reg
 1 ms
 em-standby-eeprom$eecd dup l@ 2 or tuck swap l! drop
 em-standby-eeprom$hw l@ 10 em-standby-eeprom$eecd l@ em-write-reg
 1 ms
 em-standby-eeprom$eecd dup l@ -2 and tuck swap l! drop
 em-standby-eeprom$hw l@ 10 em-standby-eeprom$eecd l@ em-write-reg
 1 ms
 ; \ end em_standby_eeprom
3 constant em_82544 \ enum
variable em-request-eeprom$hw
variable em-request-eeprom$large-eeprom
variable em-request-eeprom$i
variable em-request-eeprom$eecd

external
\ function em_request_eeprom
: em-request-eeprom
 em-request-eeprom$large-eeprom l!
 em-request-eeprom$hw l!
 \ saved parameters
 0 em-request-eeprom$i l!
 0 FF and dup em-request-eeprom$large-eeprom l@ c! drop
 em-request-eeprom$hw l@ em-hw.mac-type l@ em_82544 > 1 and if
 em-request-eeprom$hw l@ em-hw.regs l@ 10 + rl@ dup em-request-eeprom$eecd l! drop
 em-request-eeprom$eecd l@ 200 and if
 -1 FF and dup em-request-eeprom$large-eeprom l@ c! drop then
 em-request-eeprom$eecd dup l@ 40 or tuck swap l! drop
 em-request-eeprom$hw l@ 10 em-request-eeprom$eecd l@ em-write-reg
 em-request-eeprom$hw l@ em-hw.regs l@ 10 + rl@ dup em-request-eeprom$eecd l! drop

 begin em-request-eeprom$eecd l@ 80 and 0<> invert 1 and dup 0<> if drop em-request-eeprom$i l@ 64 < 1 and then while
 em-request-eeprom$i dup l@ tuck 1 + swap l! drop
 1 ms
 em-request-eeprom$hw l@ em-hw.regs l@ 10 + rl@ dup em-request-eeprom$eecd l! drop repeat
 em-request-eeprom$eecd l@ 80 and 0<> invert 1 and if
 em-request-eeprom$eecd dup l@ -41 and tuck swap l! drop
 em-request-eeprom$hw l@ 10 em-request-eeprom$eecd l@ em-write-reg
 0 FF and exit then then
 -1 FF and exit
 ; \ end em_request_eeprom
headerless

variable em-release-eeprom$hw
variable em-release-eeprom$eecd

external
\ function em_release_eeprom
: em-release-eeprom
 em-release-eeprom$hw l!
 \ saved parameters
 em-release-eeprom$hw l@ em-hw.mac-type l@ em_82544 > 1 and if
 em-release-eeprom$hw l@ em-hw.regs l@ 10 + rl@ dup em-release-eeprom$eecd l! drop
 em-release-eeprom$eecd dup l@ -41 and tuck swap l! drop
 em-release-eeprom$hw l@ 10 em-release-eeprom$eecd l@ em-write-reg then
 ; \ end em_release_eeprom
headerless

variable em-eeprom-wait-rdy$hw

external
\ function em_eeprom_wait_rdy
: em-eeprom-wait-rdy
 em-eeprom-wait-rdy$hw l!
 \ saved parameters
 em-eeprom-wait-rdy$hw l@ dup em-eeprom-wait-rdy$hw l! drop
 -1 FF and exit
 ; \ end em_eeprom_wait_rdy
headerless

variable em-eeprom-send-cmd$hw
variable em-eeprom-send-cmd$req
variable em-eeprom-send-cmd$cmd
variable em-eeprom-send-cmd$cmdbits
variable em-eeprom-send-cmd$offset
variable em-eeprom-send-cmd$data
variable em-eeprom-send-cmd$databits
variable em-eeprom-send-cmd$datadirout
variable em-eeprom-send-cmd$waitrdy
variable em-eeprom-send-cmd$large-eeprom
variable em-eeprom-send-cmd$ok

external
\ function em_eeprom_send_cmd
: em-eeprom-send-cmd
 em-eeprom-send-cmd$waitrdy c!
 em-eeprom-send-cmd$datadirout c!
 em-eeprom-send-cmd$databits l!
 em-eeprom-send-cmd$data l!
 em-eeprom-send-cmd$offset l!
 em-eeprom-send-cmd$cmdbits l!
 em-eeprom-send-cmd$cmd l!
 em-eeprom-send-cmd$req c!
 em-eeprom-send-cmd$hw l!
 \ saved parameters
 0 FF and em-eeprom-send-cmd$large-eeprom c!
 -1 FF and em-eeprom-send-cmd$ok c!
 em-eeprom-send-cmd$req c@ dup 0<> if drop em-eeprom-send-cmd$hw l@ em-eeprom-send-cmd$large-eeprom em-request-eeprom 0<> invert 1 and then if
 0 FF and exit then
 em-eeprom-send-cmd$hw l@ em-setup-eeprom
 em-eeprom-send-cmd$hw l@ em-eeprom-send-cmd$cmd l@ FFFF and em-eeprom-send-cmd$cmdbits l@ FFFF and em-shift-out-ee-bits
 em-eeprom-send-cmd$large-eeprom c@ if
 em-eeprom-send-cmd$hw l@ em-eeprom-send-cmd$offset l@ FFFF and B em-eeprom-send-cmd$cmdbits l@ - FFFF and em-shift-out-ee-bits else
 em-eeprom-send-cmd$hw l@ em-eeprom-send-cmd$offset l@ FFFF and 9 em-eeprom-send-cmd$cmdbits l@ - FFFF and em-shift-out-ee-bits then
 em-eeprom-send-cmd$databits l@ if
 em-eeprom-send-cmd$datadirout c@ if
 em-eeprom-send-cmd$hw l@ em-eeprom-send-cmd$data l@ w@ 10 FFFF and em-shift-out-ee-bits else
 em-eeprom-send-cmd$hw l@ em-shift-in-ee-bits dup em-eeprom-send-cmd$data l@ w! drop then then
 em-eeprom-send-cmd$waitrdy c@ if
 em-eeprom-send-cmd$hw l@ em-eeprom-wait-rdy dup em-eeprom-send-cmd$ok c! drop else
 em-eeprom-send-cmd$hw l@ em-standby-eeprom then
 em-eeprom-send-cmd$req c@ if
 em-eeprom-send-cmd$hw l@ em-release-eeprom then
 em-eeprom-send-cmd$ok c@ exit
 ; \ end em_eeprom_send_cmd
headerless

variable em-read-eeprom$hw
variable em-read-eeprom$offset
variable em-read-eeprom$data
variable em-read-eeprom$ok

external
\ function em_read_eeprom
: em-read-eeprom
 em-read-eeprom$data l!
 em-read-eeprom$offset w!
 em-read-eeprom$hw l!
 \ saved parameters
 0 dup debug-regs l! drop
 em-read-eeprom$hw l@ -1 FF and 6 3 em-read-eeprom$offset w@ FFFF and em-read-eeprom$data l@ 10 0 FF and 0 FF and em-eeprom-send-cmd dup em-read-eeprom$ok c! drop
 1 dup debug-regs l! drop
 em-read-eeprom$ok c@ 0<> invert 1 and if
 -1 exit then
 0 exit
 ; \ end em_read_eeprom
headerless

variable em-write-eeprom$hw
variable em-write-eeprom$offset
variable em-write-eeprom$data
variable em-write-eeprom$ok
variable em-write-eeprom$large-eeprom

external
\ function em_write_eeprom
: em-write-eeprom
 em-write-eeprom$data w!
 em-write-eeprom$offset w!
 em-write-eeprom$hw l!
 \ saved parameters
 0 FF and em-write-eeprom$large-eeprom c!
 0 dup debug-regs l! drop
 em-write-eeprom$hw l@ em-write-eeprom$large-eeprom em-request-eeprom 0<> invert 1 and if
 1 dup debug-regs l! drop
 -1 exit then
 em-write-eeprom$hw l@ 0 FF and 13 5 0 0 0 0 FF and 0 FF and em-eeprom-send-cmd drop
 em-write-eeprom$hw l@ 0 FF and 5 3 em-write-eeprom$offset w@ FFFF and em-write-eeprom$data 10 -1 FF and -1 FF and em-eeprom-send-cmd dup em-write-eeprom$ok c! drop
 em-write-eeprom$hw l@ 0 FF and 10 5 0 0 0 0 FF and 0 FF and em-eeprom-send-cmd drop
 em-write-eeprom$hw l@ em-release-eeprom
 1 dup debug-regs l! drop
 em-write-eeprom$ok c@ 0<> invert 1 and if
 -1 exit then
 0 exit
 ; \ end em_write_eeprom
headerless

variable em-validate-eeprom-checksum$hw
variable em-validate-eeprom-checksum$i
variable em-validate-eeprom-checksum$checksum
variable em-validate-eeprom-checksum$eeprom-data

external
\ function em_validate_eeprom_checksum
: em-validate-eeprom-checksum
 em-validate-eeprom-checksum$hw l!
 \ saved parameters
 0 FFFF and em-validate-eeprom-checksum$checksum w!
 0 FFFF and dup em-validate-eeprom-checksum$i w! drop
 begin em-validate-eeprom-checksum$i w@ FFFF and 40 < 1 and while
 em-validate-eeprom-checksum$hw l@ em-validate-eeprom-checksum$i w@ em-validate-eeprom-checksum$eeprom-data em-read-eeprom 0 < 1 and if
 -1 exit then
 em-validate-eeprom-checksum$checksum dup w@ em-validate-eeprom-checksum$eeprom-data w@ FFFF and + tuck swap w! drop
 em-validate-eeprom-checksum$i dup w@ tuck 1 + swap w! drop repeat
 em-validate-eeprom-checksum$checksum w@ FFFF and BABA FFFF and FFFF and = 1 and if
 0 exit else
 -1 exit then
 ; \ end em_validate_eeprom_checksum
headerless

variable em-read-part-num$hw
variable em-read-part-num$part-num
variable em-read-part-num$offset
variable em-read-part-num$eeprom-data

external
\ function em_read_part_num
: em-read-part-num
 em-read-part-num$part-num l!
 em-read-part-num$hw l!
 \ saved parameters
 8 FFFF and em-read-part-num$offset w!
 em-read-part-num$hw l@ em-read-part-num$offset w@ em-read-part-num$eeprom-data em-read-eeprom 0 < 1 and if
 -1 exit then
 em-read-part-num$eeprom-data w@ FFFF and 10 lshift dup em-read-part-num$part-num l@ l! drop
 em-read-part-num$hw l@ em-read-part-num$offset dup w@ 1 + tuck swap w! em-read-part-num$eeprom-data em-read-eeprom 0 < 1 and if
 -1 exit then
 em-read-part-num$part-num l@ dup l@ em-read-part-num$eeprom-data w@ FFFF and or tuck swap l! drop
 0 exit
 ; \ end em_read_part_num
headerless

6 constant em_82546 \ enum
variable em-read-mac-addr$hw
variable em-read-mac-addr$offset
variable em-read-mac-addr$i
variable em-read-mac-addr$eeprom-data

external
\ function em_read_mac_addr
: em-read-mac-addr
 em-read-mac-addr$hw l!
 \ saved parameters
 0 FFFF and dup em-read-mac-addr$i w! drop
 begin em-read-mac-addr$i w@ FFFF and 6 < 1 and while
 em-read-mac-addr$i w@ FFFF and 1 >>a FFFF and dup em-read-mac-addr$offset w! drop
 em-read-mac-addr$hw l@ em-read-mac-addr$offset w@ em-read-mac-addr$eeprom-data em-read-eeprom 0 < 1 and if
 -1 exit then
 em-read-mac-addr$eeprom-data w@ FFFF and FF and FF and dup em-read-mac-addr$hw l@ em-hw.perm-mac-addr em-read-mac-addr$i w@ FFFF and + c! drop
 em-read-mac-addr$eeprom-data w@ FFFF and 8 >>a FF and dup em-read-mac-addr$hw l@ em-hw.perm-mac-addr em-read-mac-addr$i w@ FFFF and 1 + + c! drop
 em-read-mac-addr$i dup w@ 2 + tuck swap w! drop repeat
 em-read-mac-addr$hw l@ em-hw.mac-type l@ em_82546 = 1 and dup 0<> if drop em-read-mac-addr$hw l@ em-hw.regs l@ 8 + rl@ 4 and then if
 em-read-mac-addr$hw l@ em-hw.perm-mac-addr 5 + c@ FF and 1 and if
 em-read-mac-addr$hw l@ em-hw.perm-mac-addr 5 + dup c@ -2 and tuck swap c! drop else
 em-read-mac-addr$hw l@ em-hw.perm-mac-addr 5 + dup c@ 1 or tuck swap c! drop then then
 0 FFFF and dup em-read-mac-addr$i w! drop
 begin em-read-mac-addr$i w@ FFFF and 6 < 1 and while
 em-read-mac-addr$hw l@ em-hw.perm-mac-addr em-read-mac-addr$i w@ FFFF and + c@ dup em-read-mac-addr$hw l@ em-hw.mac-addr em-read-mac-addr$i w@ FFFF and + c! drop
 em-read-mac-addr$i dup w@ tuck 1 + swap w! drop repeat
 0 exit
 ; \ end em_read_mac_addr
headerless

4 constant em_82540 \ enum
0 constant em_82542_rev2_0 \ enum
variable em-reset-hw$hw
variable em-reset-hw$pci-cmd-word
variable em-reset-hw$manc
variable em-reset-hw$ctrl-ext
variable em-reset-hw$icr
variable em-reset-hw$ctrl

external
\ function em_reset_hw
: em-reset-hw
 em-reset-hw$hw l!
 \ saved parameters
 em-reset-hw$hw l@ em-hw.mac-type l@ em_82542_rev2_0 = 1 and if
 em-reset-hw$hw l@ em-hw.pci-cmd-word w@ FFFF and 10 and if
 em-reset-hw$hw l@ em-hw.pci-cmd-word w@ FFFF and -11 and FFFF and dup em-reset-hw$pci-cmd-word w! drop
 my-space -100 and 4 or em-reset-hw$pci-cmd-word w@ FFFF and  " config-l!" $call-parent ( asm )
 then then
 em-reset-hw$hw l@ D8 -1 em-write-reg
 em-reset-hw$hw l@ 100 0 em-write-reg
 em-reset-hw$hw l@ 400 8 em-write-reg
 0 FF and dup em-reset-hw$hw l@ em-hw.tbi-compatibility-on c! drop
 A ms
 em-reset-hw$hw l@ em-hw.regs l@ rl@ dup em-reset-hw$ctrl l! drop
 em-reset-hw$hw l@ 0 em-reset-hw$ctrl l@ 4000000 or em-write-reg
 em-reset-hw$hw l@ em-hw.mac-type l@ em_82540 < 1 and if
 1 ms
 em-reset-hw$hw l@ em-hw.regs l@ 18 + rl@ dup em-reset-hw$ctrl-ext l! drop
 em-reset-hw$ctrl-ext dup l@ 2000 or tuck swap l! drop
 em-reset-hw$hw l@ 18 em-reset-hw$ctrl-ext l@ em-write-reg
 2 ms else
 4 ms
 em-reset-hw$hw l@ em-hw.regs l@ 5820 + rl@ dup em-reset-hw$manc l! drop
 em-reset-hw$manc dup l@ -2001 and tuck swap l! drop
 em-reset-hw$hw l@ 5820 em-reset-hw$manc l@ em-write-reg then
 em-reset-hw$hw l@ D8 -1 em-write-reg
 em-reset-hw$hw l@ em-hw.regs l@ C0 + rl@ dup em-reset-hw$icr l! drop
 em-reset-hw$hw l@ em-hw.mac-type l@ em_82542_rev2_0 = 1 and if
 em-reset-hw$hw l@ em-hw.pci-cmd-word w@ FFFF and 10 and if
 my-space -100 and 4 or em-reset-hw$hw l@ em-hw.pci-cmd-word w@ FFFF and  " config-l!" $call-parent ( asm )
 then then
 ; \ end em_reset_hw
headerless

variable em-id-led-init$hw
variable em-id-led-init$ledctl
variable em-id-led-init$temp
variable em-id-led-init$ledctl-mask
variable em-id-led-init$led-mask
variable em-id-led-init$i
variable em-id-led-init$ledctl-off
variable em-id-led-init$eeprom-data
variable em-id-led-init$ledctl-on

\ function em_id_led_init
: em-id-led-init
 em-id-led-init$hw l!
 \ saved parameters
 FF em-id-led-init$ledctl-mask l!
 E em-id-led-init$ledctl-on l!
 F em-id-led-init$ledctl-off l!
 F FFFF and em-id-led-init$led-mask w!
 em-id-led-init$hw l@ em-hw.mac-type l@ em_82540 < 1 and if
 0 exit then
 em-id-led-init$hw l@ em-hw.regs l@ E00 + rl@ dup em-id-led-init$ledctl l! drop
 em-id-led-init$ledctl l@ dup em-id-led-init$hw l@ em-hw.ledctl-default l! drop
 em-id-led-init$hw l@ em-hw.ledctl-default l@ dup em-id-led-init$hw l@ em-hw.ledctl-mode1 l! drop
 em-id-led-init$hw l@ em-hw.ledctl-default l@ dup em-id-led-init$hw l@ em-hw.ledctl-mode2 l! drop
 em-id-led-init$hw l@ 4 FFFF and em-id-led-init$eeprom-data em-read-eeprom 0 < 1 and if
 -1 exit then
 em-id-led-init$eeprom-data w@ FFFF and 0 = 1 and dup 0= if drop em-id-led-init$eeprom-data w@ FFFF and FFFF = 1 and then if
 8911 FFFF and dup em-id-led-init$eeprom-data w! drop then
 0 FFFF and dup em-id-led-init$i w! drop
 begin em-id-led-init$i w@ FFFF and 4 < 1 and while
 em-id-led-init$eeprom-data w@ FFFF and em-id-led-init$i w@ FFFF and 2 lshift >>a em-id-led-init$led-mask w@ FFFF and and FFFF and dup em-id-led-init$temp w! drop
 em-id-led-init$temp w@ FFFF and case 4 of em-id-led-init$hw l@ em-hw.ledctl-mode1 dup l@ em-id-led-init$ledctl-mask l@ em-id-led-init$i w@ FFFF and 3 lshift lshift invert and tuck swap l! drop
 em-id-led-init$hw l@ em-hw.ledctl-mode1 dup l@ em-id-led-init$ledctl-on l@ em-id-led-init$i w@ FFFF and 3 lshift lshift or tuck swap l! drop
 endof
 5 of em-id-led-init$hw l@ em-hw.ledctl-mode1 dup l@ em-id-led-init$ledctl-mask l@ em-id-led-init$i w@ FFFF and 3 lshift lshift invert and tuck swap l! drop
 em-id-led-init$hw l@ em-hw.ledctl-mode1 dup l@ em-id-led-init$ledctl-on l@ em-id-led-init$i w@ FFFF and 3 lshift lshift or tuck swap l! drop
 endof
 6 of em-id-led-init$hw l@ em-hw.ledctl-mode1 dup l@ em-id-led-init$ledctl-mask l@ em-id-led-init$i w@ FFFF and 3 lshift lshift invert and tuck swap l! drop
 em-id-led-init$hw l@ em-hw.ledctl-mode1 dup l@ em-id-led-init$ledctl-on l@ em-id-led-init$i w@ FFFF and 3 lshift lshift or tuck swap l! drop
 endof
 7 of em-id-led-init$hw l@ em-hw.ledctl-mode1 dup l@ em-id-led-init$ledctl-mask l@ em-id-led-init$i w@ FFFF and 3 lshift lshift invert and tuck swap l! drop
 em-id-led-init$hw l@ em-hw.ledctl-mode1 dup l@ em-id-led-init$ledctl-off l@ em-id-led-init$i w@ FFFF and 3 lshift lshift or tuck swap l! drop
 endof
 8 of em-id-led-init$hw l@ em-hw.ledctl-mode1 dup l@ em-id-led-init$ledctl-mask l@ em-id-led-init$i w@ FFFF and 3 lshift lshift invert and tuck swap l! drop
 em-id-led-init$hw l@ em-hw.ledctl-mode1 dup l@ em-id-led-init$ledctl-off l@ em-id-led-init$i w@ FFFF and 3 lshift lshift or tuck swap l! drop
 endof
 9 of em-id-led-init$hw l@ em-hw.ledctl-mode1 dup l@ em-id-led-init$ledctl-mask l@ em-id-led-init$i w@ FFFF and 3 lshift lshift invert and tuck swap l! drop
 em-id-led-init$hw l@ em-hw.ledctl-mode1 dup l@ em-id-led-init$ledctl-off l@ em-id-led-init$i w@ FFFF and 3 lshift lshift or tuck swap l! drop
 endof
 dup of endof endcase
 em-id-led-init$temp w@ FFFF and case 2 of em-id-led-init$hw l@ em-hw.ledctl-mode2 dup l@ em-id-led-init$ledctl-mask l@ em-id-led-init$i w@ FFFF and 3 lshift lshift invert and tuck swap l! drop
 em-id-led-init$hw l@ em-hw.ledctl-mode2 dup l@ em-id-led-init$ledctl-on l@ em-id-led-init$i w@ FFFF and 3 lshift lshift or tuck swap l! drop
 endof
 5 of em-id-led-init$hw l@ em-hw.ledctl-mode2 dup l@ em-id-led-init$ledctl-mask l@ em-id-led-init$i w@ FFFF and 3 lshift lshift invert and tuck swap l! drop
 em-id-led-init$hw l@ em-hw.ledctl-mode2 dup l@ em-id-led-init$ledctl-on l@ em-id-led-init$i w@ FFFF and 3 lshift lshift or tuck swap l! drop
 endof
 8 of em-id-led-init$hw l@ em-hw.ledctl-mode2 dup l@ em-id-led-init$ledctl-mask l@ em-id-led-init$i w@ FFFF and 3 lshift lshift invert and tuck swap l! drop
 em-id-led-init$hw l@ em-hw.ledctl-mode2 dup l@ em-id-led-init$ledctl-on l@ em-id-led-init$i w@ FFFF and 3 lshift lshift or tuck swap l! drop
 endof
 3 of em-id-led-init$hw l@ em-hw.ledctl-mode2 dup l@ em-id-led-init$ledctl-mask l@ em-id-led-init$i w@ FFFF and 3 lshift lshift invert and tuck swap l! drop
 em-id-led-init$hw l@ em-hw.ledctl-mode2 dup l@ em-id-led-init$ledctl-off l@ em-id-led-init$i w@ FFFF and 3 lshift lshift or tuck swap l! drop
 endof
 6 of em-id-led-init$hw l@ em-hw.ledctl-mode2 dup l@ em-id-led-init$ledctl-mask l@ em-id-led-init$i w@ FFFF and 3 lshift lshift invert and tuck swap l! drop
 em-id-led-init$hw l@ em-hw.ledctl-mode2 dup l@ em-id-led-init$ledctl-off l@ em-id-led-init$i w@ FFFF and 3 lshift lshift or tuck swap l! drop
 endof
 9 of em-id-led-init$hw l@ em-hw.ledctl-mode2 dup l@ em-id-led-init$ledctl-mask l@ em-id-led-init$i w@ FFFF and 3 lshift lshift invert and tuck swap l! drop
 em-id-led-init$hw l@ em-hw.ledctl-mode2 dup l@ em-id-led-init$ledctl-off l@ em-id-led-init$i w@ FFFF and 3 lshift lshift or tuck swap l! drop
 endof
 dup of endof endcase
 em-id-led-init$i dup w@ tuck 1 + swap w! drop repeat
 0 exit
 ; \ end em_id_led_init
variable em-write-vfta$hw
variable em-write-vfta$offset
variable em-write-vfta$value
variable em-write-vfta$temp

external
\ function em_write_vfta
: em-write-vfta
 em-write-vfta$value l!
 em-write-vfta$offset l!
 em-write-vfta$hw l!
 \ saved parameters
 em-write-vfta$hw l@ em-hw.mac-type l@ em_82544 = 1 and dup 0<> if drop em-write-vfta$offset l@ 1 and 1 = 1 and then if
 em-write-vfta$hw l@ em-hw.regs l@ 1580 em-write-vfta$offset l@ 1 - + 4 * + rl@ dup em-write-vfta$temp l! drop
 em-write-vfta$value l@ dup em-write-vfta$hw l@ em-hw.regs l@ 1580 em-write-vfta$offset l@ + 4 * + rl! drop
 em-write-vfta$temp l@ dup em-write-vfta$hw l@ em-hw.regs l@ 1580 em-write-vfta$offset l@ 1 - + 4 * + rl! drop else
 em-write-vfta$value l@ dup em-write-vfta$hw l@ em-hw.regs l@ 1580 em-write-vfta$offset l@ + 4 * + rl! drop then
 ; \ end em_write_vfta
headerless

variable em-clear-vfta$hw
variable em-clear-vfta$offset

external
\ function em_clear_vfta
: em-clear-vfta
 em-clear-vfta$hw l!
 \ saved parameters
 0 dup em-clear-vfta$offset l! drop
 begin em-clear-vfta$offset l@ 80 < 1 and while
 0 dup em-clear-vfta$hw l@ em-hw.regs l@ 1580 em-clear-vfta$offset l@ + 4 * + rl! drop
 em-clear-vfta$offset dup l@ tuck 1 + swap l! drop repeat
 ; \ end em_clear_vfta
headerless

variable em-raise-mdi-clk$hw
variable em-raise-mdi-clk$ctrl

\ function em_raise_mdi_clk
: em-raise-mdi-clk
 em-raise-mdi-clk$ctrl l!
 em-raise-mdi-clk$hw l!
 \ saved parameters
 em-raise-mdi-clk$hw l@ 0 em-raise-mdi-clk$ctrl l@ l@ 200000 or em-write-reg
 1 ms
 ; \ end em_raise_mdi_clk
variable em-lower-mdi-clk$hw
variable em-lower-mdi-clk$ctrl

\ function em_lower_mdi_clk
: em-lower-mdi-clk
 em-lower-mdi-clk$ctrl l!
 em-lower-mdi-clk$hw l!
 \ saved parameters
 em-lower-mdi-clk$hw l@ 0 em-lower-mdi-clk$ctrl l@ l@ -200001 and em-write-reg
 1 ms
 ; \ end em_lower_mdi_clk
variable em-shift-out-mdi-bits$hw
variable em-shift-out-mdi-bits$data
variable em-shift-out-mdi-bits$count
variable em-shift-out-mdi-bits$mask
variable em-shift-out-mdi-bits$ctrl

\ function em_shift_out_mdi_bits
: em-shift-out-mdi-bits
 em-shift-out-mdi-bits$count w!
 em-shift-out-mdi-bits$data l!
 em-shift-out-mdi-bits$hw l!
 \ saved parameters
 1 dup em-shift-out-mdi-bits$mask l! drop
 em-shift-out-mdi-bits$mask dup l@ em-shift-out-mdi-bits$count w@ FFFF and 1 - lshift tuck swap l! drop
 em-shift-out-mdi-bits$hw l@ em-hw.regs l@ rl@ dup em-shift-out-mdi-bits$ctrl l! drop
 em-shift-out-mdi-bits$ctrl dup l@ 3000000 or tuck swap l! drop

 begin em-shift-out-mdi-bits$mask l@ while
 em-shift-out-mdi-bits$data l@ em-shift-out-mdi-bits$mask l@ and if
 em-shift-out-mdi-bits$ctrl dup l@ 100000 or tuck swap l! drop else
 em-shift-out-mdi-bits$ctrl dup l@ -100001 and tuck swap l! drop then
 em-shift-out-mdi-bits$hw l@ 0 em-shift-out-mdi-bits$ctrl l@ em-write-reg
 1 ms
 em-shift-out-mdi-bits$hw l@ em-shift-out-mdi-bits$ctrl em-raise-mdi-clk
 em-shift-out-mdi-bits$hw l@ em-shift-out-mdi-bits$ctrl em-lower-mdi-clk
 em-shift-out-mdi-bits$mask l@ 1 rshift dup em-shift-out-mdi-bits$mask l! drop repeat
 em-shift-out-mdi-bits$ctrl dup l@ -100001 and tuck swap l! drop
 ; \ end em_shift_out_mdi_bits
variable em-shift-in-mdi-bits$hw
variable em-shift-in-mdi-bits$i
variable em-shift-in-mdi-bits$data
variable em-shift-in-mdi-bits$ctrl

\ function em_shift_in_mdi_bits
: em-shift-in-mdi-bits
 em-shift-in-mdi-bits$hw l!
 \ saved parameters
 0 FFFF and em-shift-in-mdi-bits$data w!
 em-shift-in-mdi-bits$hw l@ em-hw.regs l@ rl@ dup em-shift-in-mdi-bits$ctrl l! drop
 em-shift-in-mdi-bits$ctrl dup l@ -1000001 and tuck swap l! drop
 em-shift-in-mdi-bits$ctrl dup l@ -100001 and tuck swap l! drop
 em-shift-in-mdi-bits$hw l@ 0 em-shift-in-mdi-bits$ctrl l@ em-write-reg
 em-shift-in-mdi-bits$hw l@ em-shift-in-mdi-bits$ctrl em-raise-mdi-clk
 em-shift-in-mdi-bits$hw l@ em-shift-in-mdi-bits$ctrl em-lower-mdi-clk
 0 FFFF and dup em-shift-in-mdi-bits$data w! drop 0 FF and dup em-shift-in-mdi-bits$i c! drop
 begin em-shift-in-mdi-bits$i c@ FF and 10 < 1 and while
 em-shift-in-mdi-bits$data w@ FFFF and 1 lshift FFFF and dup em-shift-in-mdi-bits$data w! drop
 em-shift-in-mdi-bits$hw l@ em-shift-in-mdi-bits$ctrl em-raise-mdi-clk
 em-shift-in-mdi-bits$hw l@ em-hw.regs l@ rl@ dup em-shift-in-mdi-bits$ctrl l! drop
 em-shift-in-mdi-bits$ctrl l@ 100000 and if
 em-shift-in-mdi-bits$data dup w@ 1 or tuck swap w! drop then
 em-shift-in-mdi-bits$hw l@ em-shift-in-mdi-bits$ctrl em-lower-mdi-clk
 em-shift-in-mdi-bits$i dup c@ tuck 1 + swap c! drop repeat
 em-shift-in-mdi-bits$hw l@ em-shift-in-mdi-bits$ctrl em-raise-mdi-clk
 em-shift-in-mdi-bits$hw l@ em-shift-in-mdi-bits$ctrl em-lower-mdi-clk
 em-shift-in-mdi-bits$ctrl dup l@ -100001 and tuck swap l! drop
 em-shift-in-mdi-bits$data w@ exit
 ; \ end em_shift_in_mdi_bits
2 constant em_82543 \ enum
variable em-read-phy-reg$hw
variable em-read-phy-reg$reg-addr
variable em-read-phy-reg$phy-data
variable em-read-phy-reg$mdic
variable em-read-phy-reg$i
variable em-read-phy-reg$phy-addr
variable em-read-phy-reg$ready

external
\ function em_read_phy_reg
: em-read-phy-reg
 em-read-phy-reg$phy-data l!
 em-read-phy-reg$reg-addr l!
 em-read-phy-reg$hw l!
 \ saved parameters
 0 em-read-phy-reg$mdic l!
 1 em-read-phy-reg$phy-addr l!
 em-read-phy-reg$reg-addr l@ 1F > 1 and if
 -4 exit then
 em-read-phy-reg$hw l@ em-hw.mac-type l@ em_82543 > 1 and if
 0 em-read-phy-reg$ready l!
 em-read-phy-reg$reg-addr l@ 10 lshift em-read-phy-reg$phy-addr l@ 15 lshift or 8000000 or dup em-read-phy-reg$mdic l! drop
 em-read-phy-reg$hw l@ 20 em-read-phy-reg$mdic l@ em-write-reg
 0 dup em-read-phy-reg$i l! drop
 begin em-read-phy-reg$i l@ 40 < 1 and dup 0<> if drop em-read-phy-reg$ready l@ 0<> invert 1 and then while
 1 ms
 em-read-phy-reg$hw l@ em-hw.regs l@ 20 + rl@ dup em-read-phy-reg$mdic l! drop
 em-read-phy-reg$mdic l@ 10000000 and if
 1 dup em-read-phy-reg$ready l! drop then
 em-read-phy-reg$i dup l@ tuck 1 + swap l! drop repeat
 em-read-phy-reg$mdic l@ 10000000 and 0<> invert 1 and if
 -2 exit then
 em-read-phy-reg$mdic l@ 40000000 and if
 -2 exit then
 em-read-phy-reg$mdic l@ FFFF and dup em-read-phy-reg$phy-data l@ w! drop else
 em-read-phy-reg$hw l@ -1 20 FFFF and em-shift-out-mdi-bits
 em-read-phy-reg$reg-addr l@ em-read-phy-reg$phy-addr l@ 5 lshift or 800 or 1000 or dup em-read-phy-reg$mdic l! drop
 em-read-phy-reg$hw l@ em-read-phy-reg$mdic l@ E FFFF and em-shift-out-mdi-bits
 em-read-phy-reg$hw l@ em-shift-in-mdi-bits dup em-read-phy-reg$phy-data l@ w! drop then
 0 exit
 ; \ end em_read_phy_reg
headerless

variable em-write-phy-reg$hw
variable em-write-phy-reg$reg-addr
variable em-write-phy-reg$phy-data
variable em-write-phy-reg$mdic
variable em-write-phy-reg$i
variable em-write-phy-reg$phy-addr
variable em-write-phy-reg$ready

external
\ function em_write_phy_reg
: em-write-phy-reg
 em-write-phy-reg$phy-data w!
 em-write-phy-reg$reg-addr l!
 em-write-phy-reg$hw l!
 \ saved parameters
 0 em-write-phy-reg$mdic l!
 1 em-write-phy-reg$phy-addr l!
 em-write-phy-reg$reg-addr l@ 1F > 1 and if
 -4 exit then
 em-write-phy-reg$hw l@ em-hw.mac-type l@ em_82543 > 1 and if
 0 em-write-phy-reg$ready l!
 em-write-phy-reg$phy-data w@ FFFF and em-write-phy-reg$reg-addr l@ 10 lshift or em-write-phy-reg$phy-addr l@ 15 lshift or 4000000 or dup em-write-phy-reg$mdic l! drop
 em-write-phy-reg$hw l@ 20 em-write-phy-reg$mdic l@ em-write-reg
 0 dup em-write-phy-reg$i l! drop
 begin em-write-phy-reg$i l@ 40 < 1 and dup 0<> if drop em-write-phy-reg$ready l@ 0<> invert 1 and then while
 1 ms
 em-write-phy-reg$hw l@ em-hw.regs l@ 20 + rl@ dup em-write-phy-reg$mdic l! drop
 em-write-phy-reg$mdic l@ 10000000 and if
 1 dup em-write-phy-reg$ready l! drop then
 em-write-phy-reg$i dup l@ tuck 1 + swap l! drop repeat
 em-write-phy-reg$mdic l@ 10000000 and 0<> invert 1 and if
 -2 exit then else
 em-write-phy-reg$hw l@ -1 20 FFFF and em-shift-out-mdi-bits
 2 em-write-phy-reg$reg-addr l@ 2 lshift or em-write-phy-reg$phy-addr l@ 7 lshift or 1000 or 4000 or dup em-write-phy-reg$mdic l! drop
 em-write-phy-reg$mdic dup l@ 10 lshift tuck swap l! drop
 em-write-phy-reg$mdic dup l@ em-write-phy-reg$phy-data w@ FFFF and or tuck swap l! drop
 em-write-phy-reg$hw l@ em-write-phy-reg$mdic l@ 20 FFFF and em-shift-out-mdi-bits then
 0 exit
 ; \ end em_write_phy_reg
headerless

variable em-phy-hw-reset$hw
variable em-phy-hw-reset$ctrl-ext
variable em-phy-hw-reset$ctrl

external
\ function em_phy_hw_reset
: em-phy-hw-reset
 em-phy-hw-reset$hw l!
 \ saved parameters
 em-phy-hw-reset$hw l@ em-hw.mac-type l@ em_82543 > 1 and if
 em-phy-hw-reset$hw l@ em-hw.regs l@ rl@ dup em-phy-hw-reset$ctrl l! drop
 em-phy-hw-reset$hw l@ 0 em-phy-hw-reset$ctrl l@ -80000000 or em-write-reg
 A ms
 em-phy-hw-reset$hw l@ 0 em-phy-hw-reset$ctrl l@ em-write-reg else
 em-phy-hw-reset$hw l@ em-hw.regs l@ 18 + rl@ dup em-phy-hw-reset$ctrl-ext l! drop
 em-phy-hw-reset$ctrl-ext dup l@ 100 or tuck swap l! drop
 em-phy-hw-reset$ctrl-ext dup l@ -11 and tuck swap l! drop
 em-phy-hw-reset$hw l@ 18 em-phy-hw-reset$ctrl-ext l@ em-write-reg
 A ms
 em-phy-hw-reset$ctrl-ext dup l@ 10 or tuck swap l! drop
 em-phy-hw-reset$hw l@ 18 em-phy-hw-reset$ctrl-ext l@ em-write-reg then
 1 ms
 ; \ end em_phy_hw_reset
headerless

variable em-phy-reset$hw
variable em-phy-reset$phy-data

external
\ function em_phy_reset
: em-phy-reset
 em-phy-reset$hw l!
 \ saved parameters
 em-phy-reset$hw l@ 0 em-phy-reset$phy-data em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-phy-reset$phy-data dup w@ 8000 or tuck swap w! drop
 em-phy-reset$hw l@ 0 em-phy-reset$phy-data w@ em-write-phy-reg 0 < 1 and if
 -2 exit then
 1 ms
 0 exit
 ; \ end em_phy_reset
headerless

5 constant em_82545 \ enum
variable em-detect-gig-phy$hw
variable em-detect-gig-phy$match
variable em-detect-gig-phy$phy-id-low
variable em-detect-gig-phy$phy-id-high

external
\ function em_detect_gig_phy
: em-detect-gig-phy
 em-detect-gig-phy$hw l!
 \ saved parameters
 0 FF and em-detect-gig-phy$match c!
 em-detect-gig-phy$hw l@ 2 em-detect-gig-phy$phy-id-high em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-detect-gig-phy$phy-id-high w@ FFFF and 10 lshift dup em-detect-gig-phy$hw l@ em-hw.phy-id l! drop
 1 ms
 em-detect-gig-phy$hw l@ 3 em-detect-gig-phy$phy-id-low em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-detect-gig-phy$hw l@ em-hw.phy-id dup l@ em-detect-gig-phy$phy-id-low w@ FFFF and -10 and or tuck swap l! drop
 em-detect-gig-phy$hw l@ em-hw.mac-type l@ case em_82543 of em-detect-gig-phy$hw l@ em-hw.phy-id l@ 1410C50 = 1 and if
 -1 FF and dup em-detect-gig-phy$match c! drop then
 endof
 em_82544 of em-detect-gig-phy$hw l@ em-hw.phy-id l@ 1410C30 = 1 and if
 -1 FF and dup em-detect-gig-phy$match c! drop then
 endof
 em_82540 of em-detect-gig-phy$hw l@ em-hw.phy-id l@ 1410C20 = 1 and if
 -1 FF and dup em-detect-gig-phy$match c! drop then
 endof
 em_82545 of em-detect-gig-phy$hw l@ em-hw.phy-id l@ 1410C20 = 1 and if
 -1 FF and dup em-detect-gig-phy$match c! drop then
 endof
 em_82546 of em-detect-gig-phy$hw l@ em-hw.phy-id l@ 1410C20 = 1 and if
 -1 FF and dup em-detect-gig-phy$match c! drop then
 endof
 dup of -3 exit
 endof endcase
 em-detect-gig-phy$match c@ if
 0 exit then
 -2 exit
 ; \ end em_detect_gig_phy
headerless

variable em-phy-reset-dsp$hw
variable em-phy-reset-dsp$ret-val

\ function em_phy_reset_dsp
: em-phy-reset-dsp
 em-phy-reset-dsp$hw l!
 \ saved parameters
 -2 em-phy-reset-dsp$ret-val l!
 em-phy-reset-dsp$hw l@ 1D 1D FFFF and em-write-phy-reg 0 < 1 and if
 else
 em-phy-reset-dsp$hw l@ 1E C1 FFFF and em-write-phy-reg 0 < 1 and if
 else
 em-phy-reset-dsp$hw l@ 1E 0 FFFF and em-write-phy-reg 0 < 1 and if
 else
 0 dup em-phy-reset-dsp$ret-val l! drop then then then
 em-phy-reset-dsp$ret-val l@ 0 < 1 and if
 then
 em-phy-reset-dsp$ret-val l@ exit
 ; \ end em_phy_reset_dsp
FF constant em_auto_x_mode_undefined \ enum
FF constant em_1000t_rx_status_undefined \ enum
FF constant em_10bt_ext_dist_enable_undefined \ enum
0 constant em_media_type_copper \ enum
FF constant em_cable_length_undefined \ enum
FF constant em_rev_polarity_undefined \ enum
FF constant em_polarity_reversal_undefined \ enum

struct \ em_phy_info
   4 field em-phy-info.cable-length
   4 field em-phy-info.extended-10bt-distance
   4 field em-phy-info.cable-polarity
   4 field em-phy-info.polarity-correction
   4 field em-phy-info.mdix-mode
   4 field em-phy-info.local-rx
   4 field em-phy-info.remote-rx
 constant em-phy-info.$size \ end struct
variable em-phy-get-info$hw
variable em-phy-get-info$phy-info
variable em-phy-get-info$phy-data
variable em-phy-get-info$ret-val

external
\ function em_phy_get_info
: em-phy-get-info
 em-phy-get-info$phy-info l!
 em-phy-get-info$hw l!
 \ saved parameters
 -2 em-phy-get-info$ret-val l!
 em_cable_length_undefined dup em-phy-get-info$phy-info l@ em-phy-info.cable-length l! drop
 em_10bt_ext_dist_enable_undefined dup em-phy-get-info$phy-info l@ em-phy-info.extended-10bt-distance l! drop
 em_rev_polarity_undefined dup em-phy-get-info$phy-info l@ em-phy-info.cable-polarity l! drop
 em_polarity_reversal_undefined dup em-phy-get-info$phy-info l@ em-phy-info.polarity-correction l! drop
 em_auto_x_mode_undefined dup em-phy-get-info$phy-info l@ em-phy-info.mdix-mode l! drop
 em_1000t_rx_status_undefined dup em-phy-get-info$phy-info l@ em-phy-info.local-rx l! drop
 em_1000t_rx_status_undefined dup em-phy-get-info$phy-info l@ em-phy-info.remote-rx l! drop
 em-phy-get-info$hw l@ em-hw.media-type l@ em_media_type_copper <> 1 and if
 -3 exit then
 em-phy-get-info$hw l@ 1 em-phy-get-info$phy-data em-read-phy-reg 0 < 1 and if
 else
 em-phy-get-info$hw l@ 1 em-phy-get-info$phy-data em-read-phy-reg 0 < 1 and if
 else
 em-phy-get-info$phy-data w@ FFFF and 4 and 4 <> 1 and if
 -3 exit then
 em-phy-get-info$hw l@ 10 em-phy-get-info$phy-data em-read-phy-reg 0 < 1 and if
 else
 em-phy-get-info$phy-data w@ FFFF and 80 and 7 >>a dup em-phy-get-info$phy-info l@ em-phy-info.extended-10bt-distance l! drop
 em-phy-get-info$phy-data w@ FFFF and 2 and 1 >>a dup em-phy-get-info$phy-info l@ em-phy-info.polarity-correction l! drop
 em-phy-get-info$hw l@ 11 em-phy-get-info$phy-data em-read-phy-reg 0 < 1 and if
 else
 em-phy-get-info$phy-data w@ FFFF and 2 and 1 >>a dup em-phy-get-info$phy-info l@ em-phy-info.cable-polarity l! drop
 em-phy-get-info$phy-data w@ FFFF and 40 and 6 >>a dup em-phy-get-info$phy-info l@ em-phy-info.mdix-mode l! drop
 em-phy-get-info$phy-data w@ FFFF and 8000 and if
 em-phy-get-info$phy-data w@ FFFF and 380 and 7 >>a dup em-phy-get-info$phy-info l@ em-phy-info.cable-length l! drop
 em-phy-get-info$hw l@ A em-phy-get-info$phy-data em-read-phy-reg 0 < 1 and if
 else
 em-phy-get-info$phy-data w@ FFFF and 2000 and D >>a dup em-phy-get-info$phy-info l@ em-phy-info.local-rx l! drop
 em-phy-get-info$phy-data w@ FFFF and 1000 and C >>a dup em-phy-get-info$phy-info l@ em-phy-info.remote-rx l! drop
 0 dup em-phy-get-info$ret-val l! drop then else
 0 dup em-phy-get-info$ret-val l! drop then then then then then
 em-phy-get-info$ret-val l@ 0 < 1 and if
 then
 em-phy-get-info$ret-val l@ exit
 ; \ end em_phy_get_info
headerless

variable em-validate-mdi-setting$hw

external
\ function em_validate_mdi_setting
: em-validate-mdi-setting
 em-validate-mdi-setting$hw l!
 \ saved parameters
 em-validate-mdi-setting$hw l@ em-hw.autoneg c@ 0<> invert 1 and dup 0<> if drop em-validate-mdi-setting$hw l@ em-hw.mdix c@ FF and 0 = 1 and dup 0= if drop em-validate-mdi-setting$hw l@ em-hw.mdix c@ FF and 3 = 1 and then then if
 1 FF and dup em-validate-mdi-setting$hw l@ em-hw.mdix c! drop
 -3 exit then
 0 exit
 ; \ end em_validate_mdi_setting
headerless

0 constant em_fc_none \ enum
1 constant em_fc_rx_pause \ enum
2 constant em_fc_tx_pause \ enum
3 constant em_fc_full \ enum
variable em-phy-setup-autoneg$hw
variable em-phy-setup-autoneg$mii-1000t-ctrl-reg
variable em-phy-setup-autoneg$mii-autoneg-adv-reg

external
\ function em_phy_setup_autoneg
: em-phy-setup-autoneg
 em-phy-setup-autoneg$hw l!
 \ saved parameters
 em-phy-setup-autoneg$hw l@ 4 em-phy-setup-autoneg$mii-autoneg-adv-reg em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-phy-setup-autoneg$hw l@ 9 em-phy-setup-autoneg$mii-1000t-ctrl-reg em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-phy-setup-autoneg$mii-autoneg-adv-reg dup w@ -1E1 and tuck swap w! drop
 em-phy-setup-autoneg$mii-1000t-ctrl-reg dup w@ -301 and tuck swap w! drop
 em-phy-setup-autoneg$hw l@ em-hw.autoneg-advertised w@ FFFF and 1 and if
 em-phy-setup-autoneg$mii-autoneg-adv-reg dup w@ 20 or tuck swap w! drop then
 em-phy-setup-autoneg$hw l@ em-hw.autoneg-advertised w@ FFFF and 2 and if
 em-phy-setup-autoneg$mii-autoneg-adv-reg dup w@ 40 or tuck swap w! drop then
 em-phy-setup-autoneg$hw l@ em-hw.autoneg-advertised w@ FFFF and 4 and if
 em-phy-setup-autoneg$mii-autoneg-adv-reg dup w@ 80 or tuck swap w! drop then
 em-phy-setup-autoneg$hw l@ em-hw.autoneg-advertised w@ FFFF and 8 and if
 em-phy-setup-autoneg$mii-autoneg-adv-reg dup w@ 100 or tuck swap w! drop then
 em-phy-setup-autoneg$hw l@ em-hw.autoneg-advertised w@ FFFF and 10 and if
 then
 em-phy-setup-autoneg$hw l@ em-hw.autoneg-advertised w@ FFFF and 20 and if
 em-phy-setup-autoneg$mii-1000t-ctrl-reg dup w@ 200 or tuck swap w! drop then
 em-phy-setup-autoneg$hw l@ em-hw.fc l@ case em_fc_none of em-phy-setup-autoneg$mii-autoneg-adv-reg dup w@ -C01 and tuck swap w! drop
 endof
 em_fc_rx_pause of em-phy-setup-autoneg$mii-autoneg-adv-reg dup w@ C00 or tuck swap w! drop
 endof
 em_fc_tx_pause of em-phy-setup-autoneg$mii-autoneg-adv-reg dup w@ 800 or tuck swap w! drop
 em-phy-setup-autoneg$mii-autoneg-adv-reg dup w@ -401 and tuck swap w! drop
 endof
 em_fc_full of em-phy-setup-autoneg$mii-autoneg-adv-reg dup w@ C00 or tuck swap w! drop
 endof
 dup of -3 exit
 endof endcase
 em-phy-setup-autoneg$hw l@ 4 em-phy-setup-autoneg$mii-autoneg-adv-reg w@ em-write-phy-reg 0 < 1 and if
 -2 exit then
 em-phy-setup-autoneg$hw l@ 9 em-phy-setup-autoneg$mii-1000t-ctrl-reg w@ em-write-phy-reg 0 < 1 and if
 -2 exit then
 0 exit
 ; \ end em_phy_setup_autoneg
headerless

variable em-config-collision-dist$hw
variable em-config-collision-dist$tctl

external
\ function em_config_collision_dist
: em-config-collision-dist
 em-config-collision-dist$hw l!
 \ saved parameters
 em-config-collision-dist$hw l@ em-hw.regs l@ 400 + rl@ dup em-config-collision-dist$tctl l! drop
 em-config-collision-dist$tctl dup l@ -3FF001 and tuck swap l! drop
 em-config-collision-dist$tctl dup l@ 40000 or tuck swap l! drop
 em-config-collision-dist$hw l@ 400 em-config-collision-dist$tctl l@ em-write-reg
 ; \ end em_config_collision_dist
headerless

1 constant em_10_full \ enum
2 constant em_100_half \ enum
3 constant em_100_full \ enum
variable em-phy-force-speed-duplex$hw
variable em-phy-force-speed-duplex$i
variable em-phy-force-speed-duplex$phy-data
variable em-phy-force-speed-duplex$mii-status-reg
variable em-phy-force-speed-duplex$ret-val
variable em-phy-force-speed-duplex$mii-ctrl-reg
variable em-phy-force-speed-duplex$ctrl
variable em-phy-force-speed-duplex$ready

\ function em_phy_force_speed_duplex
: em-phy-force-speed-duplex
 em-phy-force-speed-duplex$hw l!
 \ saved parameters
 em_fc_none dup em-phy-force-speed-duplex$hw l@ em-hw.fc l! drop
 em-phy-force-speed-duplex$hw l@ em-hw.regs l@ rl@ dup em-phy-force-speed-duplex$ctrl l! drop
 em-phy-force-speed-duplex$ctrl dup l@ 1800 or tuck swap l! drop
 em-phy-force-speed-duplex$ctrl dup l@ -301 and tuck swap l! drop
 em-phy-force-speed-duplex$ctrl dup l@ -21 and tuck swap l! drop
 em-phy-force-speed-duplex$hw l@ 0 em-phy-force-speed-duplex$mii-ctrl-reg em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-phy-force-speed-duplex$mii-ctrl-reg dup w@ -1001 and tuck swap w! drop
 em-phy-force-speed-duplex$hw l@ em-hw.forced-speed-duplex c@ FF and em_100_full = 1 and dup 0= if drop em-phy-force-speed-duplex$hw l@ em-hw.forced-speed-duplex c@ FF and em_10_full = 1 and then if
 em-phy-force-speed-duplex$ctrl dup l@ 1 or tuck swap l! drop
 em-phy-force-speed-duplex$mii-ctrl-reg dup w@ 100 or tuck swap w! drop else
 em-phy-force-speed-duplex$ctrl dup l@ -2 and tuck swap l! drop
 em-phy-force-speed-duplex$mii-ctrl-reg dup w@ -101 and tuck swap w! drop then
 em-phy-force-speed-duplex$hw l@ em-hw.forced-speed-duplex c@ FF and em_100_full = 1 and dup 0= if drop em-phy-force-speed-duplex$hw l@ em-hw.forced-speed-duplex c@ FF and em_100_half = 1 and then if
 em-phy-force-speed-duplex$ctrl dup l@ 100 or tuck swap l! drop
 em-phy-force-speed-duplex$mii-ctrl-reg dup w@ 2000 or tuck swap w! drop
 em-phy-force-speed-duplex$mii-ctrl-reg dup w@ -41 and tuck swap w! drop else
 em-phy-force-speed-duplex$ctrl dup l@ -301 and tuck swap l! drop
 em-phy-force-speed-duplex$mii-ctrl-reg dup w@ 0 or tuck swap w! drop
 em-phy-force-speed-duplex$mii-ctrl-reg dup w@ -2041 and tuck swap w! drop then
 em-phy-force-speed-duplex$hw l@ em-config-collision-dist
 em-phy-force-speed-duplex$hw l@ 0 em-phy-force-speed-duplex$ctrl l@ em-write-reg
 em-phy-force-speed-duplex$hw l@ 10 em-phy-force-speed-duplex$phy-data em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-phy-force-speed-duplex$phy-data dup w@ -61 and tuck swap w! drop
 em-phy-force-speed-duplex$hw l@ 10 em-phy-force-speed-duplex$phy-data w@ em-write-phy-reg 0 < 1 and if
 -2 exit then
 em-phy-force-speed-duplex$mii-ctrl-reg dup w@ 8000 or tuck swap w! drop
 em-phy-force-speed-duplex$hw l@ 0 em-phy-force-speed-duplex$mii-ctrl-reg w@ em-write-phy-reg 0 < 1 and if
 -2 exit then
 1 ms
 em-phy-force-speed-duplex$hw l@ em-hw.wait-autoneg-complete c@ if
 0 em-phy-force-speed-duplex$ready l!
 0 FFFF and dup em-phy-force-speed-duplex$mii-status-reg w! drop
 14 FFFF and dup em-phy-force-speed-duplex$i w! drop
 begin em-phy-force-speed-duplex$i w@ FFFF and 0 > 1 and dup 0<> if drop em-phy-force-speed-duplex$ready l@ 0<> invert 1 and then while
 em-phy-force-speed-duplex$hw l@ 1 em-phy-force-speed-duplex$mii-status-reg em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-phy-force-speed-duplex$hw l@ 1 em-phy-force-speed-duplex$mii-status-reg em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-phy-force-speed-duplex$mii-status-reg w@ FFFF and 4 and if
 1 dup em-phy-force-speed-duplex$ready l! drop else
 64 ms then
 em-phy-force-speed-duplex$i dup w@ tuck 1 - swap w! drop repeat
 em-phy-force-speed-duplex$i w@ FFFF and 0 = 1 and if
 em-phy-force-speed-duplex$hw l@ em-phy-reset-dsp dup em-phy-force-speed-duplex$ret-val l! drop
 em-phy-force-speed-duplex$ret-val l@ 0 < 1 and if
 em-phy-force-speed-duplex$ret-val l@ exit then then
 0 dup em-phy-force-speed-duplex$ready l! drop
 14 FFFF and dup em-phy-force-speed-duplex$i w! drop
 begin em-phy-force-speed-duplex$i w@ FFFF and 0 > 1 and dup 0<> if drop em-phy-force-speed-duplex$ready l@ 0<> invert 1 and then while
 em-phy-force-speed-duplex$mii-status-reg w@ FFFF and 4 and if
 1 dup em-phy-force-speed-duplex$ready l! drop else
 64 ms
 em-phy-force-speed-duplex$hw l@ 1 em-phy-force-speed-duplex$mii-status-reg em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-phy-force-speed-duplex$hw l@ 1 em-phy-force-speed-duplex$mii-status-reg em-read-phy-reg 0 < 1 and if
 -2 exit then then
 em-phy-force-speed-duplex$i dup w@ tuck 1 - swap w! drop repeat then
 em-phy-force-speed-duplex$hw l@ 14 em-phy-force-speed-duplex$phy-data em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-phy-force-speed-duplex$phy-data dup w@ 70 or tuck swap w! drop
 em-phy-force-speed-duplex$hw l@ 14 em-phy-force-speed-duplex$phy-data w@ em-write-phy-reg 0 < 1 and if
 -2 exit then
 em-phy-force-speed-duplex$hw l@ 10 em-phy-force-speed-duplex$phy-data em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-phy-force-speed-duplex$phy-data dup w@ 800 or tuck swap w! drop
 em-phy-force-speed-duplex$hw l@ 10 em-phy-force-speed-duplex$phy-data w@ em-write-phy-reg 0 < 1 and if
 -2 exit then
 0 exit
 ; \ end em_phy_force_speed_duplex
variable em-config-mac-to-phy$hw
variable em-config-mac-to-phy$phy-data
variable em-config-mac-to-phy$ctrl

\ function em_config_mac_to_phy
: em-config-mac-to-phy
 em-config-mac-to-phy$hw l!
 \ saved parameters
 em-config-mac-to-phy$hw l@ em-hw.regs l@ rl@ dup em-config-mac-to-phy$ctrl l! drop
 em-config-mac-to-phy$ctrl dup l@ 1800 or tuck swap l! drop
 em-config-mac-to-phy$ctrl dup l@ -381 and tuck swap l! drop
 em-config-mac-to-phy$hw l@ 11 em-config-mac-to-phy$phy-data em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-config-mac-to-phy$phy-data w@ FFFF and 2000 and if
 em-config-mac-to-phy$ctrl dup l@ 1 or tuck swap l! drop else
 em-config-mac-to-phy$ctrl dup l@ -2 and tuck swap l! drop then
 em-config-mac-to-phy$hw l@ em-config-collision-dist
 em-config-mac-to-phy$phy-data w@ FFFF and C000 and 8000 = 1 and if
 em-config-mac-to-phy$ctrl dup l@ 200 or tuck swap l! drop else
 em-config-mac-to-phy$phy-data w@ FFFF and C000 and 4000 = 1 and if
 em-config-mac-to-phy$ctrl dup l@ 100 or tuck swap l! drop then then
 em-config-mac-to-phy$hw l@ 0 em-config-mac-to-phy$ctrl l@ em-write-reg
 0 exit
 ; \ end em_config_mac_to_phy
variable em-force-mac-fc$hw
variable em-force-mac-fc$ctrl

\ function em_force_mac_fc
: em-force-mac-fc
 em-force-mac-fc$hw l!
 \ saved parameters
 em-force-mac-fc$hw l@ em-hw.regs l@ rl@ dup em-force-mac-fc$ctrl l! drop
 em-force-mac-fc$hw l@ em-hw.fc l@ case em_fc_none of em-force-mac-fc$ctrl dup l@ -18000001 and tuck swap l! drop
 endof
 em_fc_rx_pause of em-force-mac-fc$ctrl dup l@ -10000001 and tuck swap l! drop
 em-force-mac-fc$ctrl dup l@ 8000000 or tuck swap l! drop
 endof
 em_fc_tx_pause of em-force-mac-fc$ctrl dup l@ -8000001 and tuck swap l! drop
 em-force-mac-fc$ctrl dup l@ 10000000 or tuck swap l! drop
 endof
 em_fc_full of em-force-mac-fc$ctrl dup l@ 18000000 or tuck swap l! drop
 endof
 dup of -3 exit
 endof endcase
 em-force-mac-fc$hw l@ em-hw.mac-type l@ em_82542_rev2_0 = 1 and if
 em-force-mac-fc$ctrl dup l@ -10000001 and tuck swap l! drop then
 em-force-mac-fc$hw l@ 0 em-force-mac-fc$ctrl l@ em-write-reg
 0 exit
 ; \ end em_force_mac_fc
variable em-get-speed-and-duplex$hw
variable em-get-speed-and-duplex$speed
variable em-get-speed-and-duplex$duplex
variable em-get-speed-and-duplex$status

external
\ function em_get_speed_and_duplex
: em-get-speed-and-duplex
 em-get-speed-and-duplex$duplex l!
 em-get-speed-and-duplex$speed l!
 em-get-speed-and-duplex$hw l!
 \ saved parameters
 em-get-speed-and-duplex$hw l@ em-hw.mac-type l@ em_82543 >= 1 and if
 em-get-speed-and-duplex$hw l@ em-hw.regs l@ 8 + rl@ dup em-get-speed-and-duplex$status l! drop
 em-get-speed-and-duplex$status l@ 80 and if
 3E8 FFFF and dup em-get-speed-and-duplex$speed l@ w! drop else
 em-get-speed-and-duplex$status l@ 40 and if
 64 FFFF and dup em-get-speed-and-duplex$speed l@ w! drop else
 A FFFF and dup em-get-speed-and-duplex$speed l@ w! drop then then
 em-get-speed-and-duplex$status l@ 1 and if
 2 FFFF and dup em-get-speed-and-duplex$duplex l@ w! drop else
 1 FFFF and dup em-get-speed-and-duplex$duplex l@ w! drop then else
 3E8 FFFF and dup em-get-speed-and-duplex$speed l@ w! drop
 2 FFFF and dup em-get-speed-and-duplex$duplex l@ w! drop then
 ; \ end em_get_speed_and_duplex
headerless

1 constant em_media_type_fiber \ enum
variable em-config-fc-after-link-up$hw
variable em-config-fc-after-link-up$speed
variable em-config-fc-after-link-up$duplex
variable em-config-fc-after-link-up$mii-nway-lp-ability-reg
variable em-config-fc-after-link-up$mii-status-reg
variable em-config-fc-after-link-up$ret-val
variable em-config-fc-after-link-up$mii-nway-adv-reg

external
\ function em_config_fc_after_link_up
: em-config-fc-after-link-up
 em-config-fc-after-link-up$hw l!
 \ saved parameters
 em-config-fc-after-link-up$hw l@ em-hw.media-type l@ em_media_type_fiber = 1 and dup 0<> if drop em-config-fc-after-link-up$hw l@ em-hw.autoneg-failed l@ then dup 0= if drop em-config-fc-after-link-up$hw l@ em-hw.media-type l@ em_media_type_copper = 1 and dup 0<> if drop em-config-fc-after-link-up$hw l@ em-hw.autoneg c@ 0<> invert 1 and then then if
 em-config-fc-after-link-up$hw l@ em-force-mac-fc dup em-config-fc-after-link-up$ret-val l! drop
 em-config-fc-after-link-up$ret-val l@ 0 < 1 and if
 em-config-fc-after-link-up$ret-val l@ exit then then
 em-config-fc-after-link-up$hw l@ em-hw.media-type l@ em_media_type_copper = 1 and dup 0<> if drop em-config-fc-after-link-up$hw l@ em-hw.autoneg c@ then if
 em-config-fc-after-link-up$hw l@ 1 em-config-fc-after-link-up$mii-status-reg em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-config-fc-after-link-up$hw l@ 1 em-config-fc-after-link-up$mii-status-reg em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-config-fc-after-link-up$mii-status-reg w@ FFFF and 20 and if
 em-config-fc-after-link-up$hw l@ 4 em-config-fc-after-link-up$mii-nway-adv-reg em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-config-fc-after-link-up$hw l@ 5 em-config-fc-after-link-up$mii-nway-lp-ability-reg em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-config-fc-after-link-up$mii-nway-adv-reg w@ FFFF and 400 and dup 0<> if drop em-config-fc-after-link-up$mii-nway-lp-ability-reg w@ FFFF and 400 and then if
 em-config-fc-after-link-up$hw l@ em-hw.original-fc l@ em_fc_full = 1 and if
 em_fc_full dup em-config-fc-after-link-up$hw l@ em-hw.fc l! drop else
 em_fc_rx_pause dup em-config-fc-after-link-up$hw l@ em-hw.fc l! drop then else
 em-config-fc-after-link-up$mii-nway-adv-reg w@ FFFF and 400 and 0<> invert 1 and dup 0<> if drop em-config-fc-after-link-up$mii-nway-adv-reg w@ FFFF and 800 and then dup 0<> if drop em-config-fc-after-link-up$mii-nway-lp-ability-reg w@ FFFF and 400 and then dup 0<> if drop em-config-fc-after-link-up$mii-nway-lp-ability-reg w@ FFFF and 800 and then if
 em_fc_tx_pause dup em-config-fc-after-link-up$hw l@ em-hw.fc l! drop else
 em-config-fc-after-link-up$mii-nway-adv-reg w@ FFFF and 400 and dup 0<> if drop em-config-fc-after-link-up$mii-nway-adv-reg w@ FFFF and 800 and then dup 0<> if drop em-config-fc-after-link-up$mii-nway-lp-ability-reg w@ FFFF and 400 and 0<> invert 1 and then dup 0<> if drop em-config-fc-after-link-up$mii-nway-lp-ability-reg w@ FFFF and 800 and then if
 em_fc_rx_pause dup em-config-fc-after-link-up$hw l@ em-hw.fc l! drop else
 em-config-fc-after-link-up$hw l@ em-hw.original-fc l@ em_fc_none = 1 and dup 0= if drop em-config-fc-after-link-up$hw l@ em-hw.original-fc l@ em_fc_tx_pause = 1 and then if
 em_fc_none dup em-config-fc-after-link-up$hw l@ em-hw.fc l! drop else
 em_fc_rx_pause dup em-config-fc-after-link-up$hw l@ em-hw.fc l! drop then then then then
 em-config-fc-after-link-up$hw l@ em-config-fc-after-link-up$speed em-config-fc-after-link-up$duplex em-get-speed-and-duplex
 em-config-fc-after-link-up$duplex w@ FFFF and 1 = 1 and if
 em_fc_none dup em-config-fc-after-link-up$hw l@ em-hw.fc l! drop then
 em-config-fc-after-link-up$hw l@ em-force-mac-fc dup em-config-fc-after-link-up$ret-val l! drop
 em-config-fc-after-link-up$ret-val l@ 0 < 1 and if
 em-config-fc-after-link-up$ret-val l@ exit then else
 then then
 0 exit
 ; \ end em_config_fc_after_link_up
headerless

variable em-check-for-link$hw
variable em-check-for-link$ret-val
variable em-check-for-link$rxcw
variable em-check-for-link$rctl
variable em-check-for-link$ctrl
variable em-check-for-link$signal
variable em-check-for-link$phy-data
variable em-check-for-link$lp-capability
variable em-check-for-link$status

external
\ function em_check_for_link
: em-check-for-link
 em-check-for-link$hw l!
 \ saved parameters
 em-check-for-link$hw l@ em-hw.mac-type l@ em_82544 > 1 and if
 80000 dup em-check-for-link$signal l! drop else
 0 dup em-check-for-link$signal l! drop then
 em-check-for-link$hw l@ em-hw.regs l@ rl@ dup em-check-for-link$ctrl l! drop
 em-check-for-link$hw l@ em-hw.regs l@ 8 + rl@ dup em-check-for-link$status l! drop
 em-check-for-link$hw l@ em-hw.regs l@ 180 + rl@ dup em-check-for-link$rxcw l! drop
 em-check-for-link$hw l@ em-hw.media-type l@ em_media_type_copper = 1 and dup 0<> if drop em-check-for-link$hw l@ em-hw.get-link-status c@ then if
 em-check-for-link$hw l@ 1 em-check-for-link$phy-data em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-check-for-link$hw l@ 1 em-check-for-link$phy-data em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-check-for-link$phy-data w@ FFFF and 4 and if
 0 FF and dup em-check-for-link$hw l@ em-hw.get-link-status c! drop else
 0 exit then
 em-check-for-link$hw l@ em-hw.autoneg c@ 0<> invert 1 and if
 -3 exit then
 em-check-for-link$hw l@ em-hw.mac-type l@ em_82544 >= 1 and if
 em-check-for-link$hw l@ em-config-collision-dist else
 em-check-for-link$hw l@ em-config-mac-to-phy dup em-check-for-link$ret-val l! drop
 em-check-for-link$ret-val l@ 0 < 1 and if
 em-check-for-link$ret-val l@ exit then then
 em-check-for-link$hw l@ em-config-fc-after-link-up dup em-check-for-link$ret-val l! drop
 em-check-for-link$ret-val l@ 0 < 1 and if
 em-check-for-link$ret-val l@ exit then
 em-check-for-link$hw l@ em-hw.tbi-compatibility-en c@ if
 em-check-for-link$hw l@ 5 em-check-for-link$lp-capability em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-check-for-link$lp-capability w@ FFFF and 3E0 and if
 em-check-for-link$hw l@ em-hw.tbi-compatibility-on c@ if
 em-check-for-link$hw l@ em-hw.regs l@ 100 + rl@ dup em-check-for-link$rctl l! drop
 em-check-for-link$rctl dup l@ -5 and tuck swap l! drop
 em-check-for-link$hw l@ 100 em-check-for-link$rctl l@ em-write-reg
 0 FF and dup em-check-for-link$hw l@ em-hw.tbi-compatibility-on c! drop then else
 em-check-for-link$hw l@ em-hw.tbi-compatibility-on c@ 0<> invert 1 and if
 -1 FF and dup em-check-for-link$hw l@ em-hw.tbi-compatibility-on c! drop
 em-check-for-link$hw l@ em-hw.regs l@ 100 + rl@ dup em-check-for-link$rctl l! drop
 em-check-for-link$rctl dup l@ 4 or tuck swap l! drop
 em-check-for-link$hw l@ 100 em-check-for-link$rctl l@ em-write-reg then then then else
 em-check-for-link$hw l@ em-hw.media-type l@ em_media_type_fiber = 1 and dup 0<> if drop em-check-for-link$status l@ 2 and 0<> invert 1 and then dup 0<> if drop em-check-for-link$ctrl l@ 80000 and em-check-for-link$signal l@ = 1 and then dup 0<> if drop em-check-for-link$rxcw l@ 20000000 and 0<> invert 1 and then if
 em-check-for-link$hw l@ em-hw.autoneg-failed l@ 0 = 1 and if
 1 dup em-check-for-link$hw l@ em-hw.autoneg-failed l! drop
 0 exit then
 em-check-for-link$hw l@ 178 em-check-for-link$hw l@ em-hw.txcw l@ 7FFFFFFF and em-write-reg
 em-check-for-link$hw l@ em-hw.regs l@ rl@ dup em-check-for-link$ctrl l! drop
 em-check-for-link$ctrl dup l@ 41 or tuck swap l! drop
 em-check-for-link$hw l@ 0 em-check-for-link$ctrl l@ em-write-reg
 em-check-for-link$hw l@ em-config-fc-after-link-up dup em-check-for-link$ret-val l! drop
 em-check-for-link$ret-val l@ 0 < 1 and if
 em-check-for-link$ret-val l@ exit then else
 em-check-for-link$hw l@ em-hw.media-type l@ em_media_type_fiber = 1 and dup 0<> if drop em-check-for-link$ctrl l@ 40 and then dup 0<> if drop em-check-for-link$rxcw l@ 20000000 and then if
 em-check-for-link$hw l@ 178 em-check-for-link$hw l@ em-hw.txcw l@ em-write-reg
 em-check-for-link$hw l@ 0 em-check-for-link$ctrl l@ -41 and em-write-reg then then then
 0 exit
 ; \ end em_check_for_link
headerless

variable em-wait-autoneg$hw
variable em-wait-autoneg$phy-data
variable em-wait-autoneg$i

external
\ function em_wait_autoneg
: em-wait-autoneg
 em-wait-autoneg$hw l!
 \ saved parameters
 2D FFFF and dup em-wait-autoneg$i w! drop
 begin em-wait-autoneg$i w@ FFFF and 0 > 1 and while
 em-wait-autoneg$hw l@ 1 em-wait-autoneg$phy-data em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-wait-autoneg$hw l@ 1 em-wait-autoneg$phy-data em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-wait-autoneg$phy-data w@ FFFF and 20 and if
 0 exit then
 64 ms
 em-wait-autoneg$i dup w@ tuck 1 - swap w! drop repeat
 0 exit
 ; \ end em_wait_autoneg
headerless

variable em-setup-fiber-link$hw
variable em-setup-fiber-link$i
variable em-setup-fiber-link$signal
variable em-setup-fiber-link$status
variable em-setup-fiber-link$txcw
variable em-setup-fiber-link$ret-val
variable em-setup-fiber-link$ctrl
variable em-setup-fiber-link$ready

\ function em_setup_fiber_link
: em-setup-fiber-link
 em-setup-fiber-link$hw l!
 \ saved parameters
 0 em-setup-fiber-link$txcw l!
 em-setup-fiber-link$hw l@ em-hw.regs l@ rl@ dup em-setup-fiber-link$ctrl l! drop
 em-setup-fiber-link$hw l@ em-hw.mac-type l@ em_82544 > 1 and if
 80000 dup em-setup-fiber-link$signal l! drop else
 0 dup em-setup-fiber-link$signal l! drop then
 em-setup-fiber-link$ctrl dup l@ -9 and tuck swap l! drop
 em-setup-fiber-link$hw l@ em-config-collision-dist
 em-setup-fiber-link$hw l@ em-hw.fc l@ case em_fc_none of -7FFFFFE0 dup em-setup-fiber-link$txcw l! drop
 endof
 em_fc_rx_pause of -7FFFFE60 dup em-setup-fiber-link$txcw l! drop
 endof
 em_fc_tx_pause of -7FFFFEE0 dup em-setup-fiber-link$txcw l! drop
 endof
 em_fc_full of -7FFFFE60 dup em-setup-fiber-link$txcw l! drop
 endof
 dup of -3 exit
 endof endcase
 em-setup-fiber-link$hw l@ 178 em-setup-fiber-link$txcw l@ em-write-reg
 em-setup-fiber-link$hw l@ 0 em-setup-fiber-link$ctrl l@ em-write-reg
 em-setup-fiber-link$txcw l@ dup em-setup-fiber-link$hw l@ em-hw.txcw l! drop
 1 ms
 em-setup-fiber-link$hw l@ em-hw.regs l@ rl@ 80000 and em-setup-fiber-link$signal l@ = 1 and if
 0 em-setup-fiber-link$ready l!
 0 dup em-setup-fiber-link$i l! drop
 begin em-setup-fiber-link$i l@ 32 < 1 and dup 0<> if drop em-setup-fiber-link$ready l@ 0<> invert 1 and then while
 A ms
 em-setup-fiber-link$hw l@ em-hw.regs l@ 8 + rl@ dup em-setup-fiber-link$status l! drop
 em-setup-fiber-link$status l@ 2 and if
 1 dup em-setup-fiber-link$ready l! drop then
 em-setup-fiber-link$i dup l@ tuck 1 + swap l! drop repeat
 em-setup-fiber-link$i l@ 32 = 1 and if
 1 dup em-setup-fiber-link$hw l@ em-hw.autoneg-failed l! drop
 em-setup-fiber-link$hw l@ em-check-for-link dup em-setup-fiber-link$ret-val l! drop
 em-setup-fiber-link$ret-val l@ 0 < 1 and if
 em-setup-fiber-link$ret-val l@ exit then
 0 dup em-setup-fiber-link$hw l@ em-hw.autoneg-failed l! drop else
 0 dup em-setup-fiber-link$hw l@ em-hw.autoneg-failed l! drop then else
 then
 0 exit
 ; \ end em_setup_fiber_link
variable em-setup-copper-link$hw
variable em-setup-copper-link$phy-data
variable em-setup-copper-link$i
variable em-setup-copper-link$ret-val
variable em-setup-copper-link$ctrl

\ function em_setup_copper_link
: em-setup-copper-link
 em-setup-copper-link$hw l!
 \ saved parameters
 em-setup-copper-link$hw l@ em-hw.regs l@ rl@ dup em-setup-copper-link$ctrl l! drop
 em-setup-copper-link$hw l@ em-hw.mac-type l@ em_82543 > 1 and if
 em-setup-copper-link$ctrl dup l@ 40 or tuck swap l! drop
 em-setup-copper-link$ctrl dup l@ -1801 and tuck swap l! drop
 em-setup-copper-link$hw l@ 0 em-setup-copper-link$ctrl l@ em-write-reg else
 em-setup-copper-link$ctrl dup l@ 1840 or tuck swap l! drop
 em-setup-copper-link$hw l@ 0 em-setup-copper-link$ctrl l@ em-write-reg
 em-setup-copper-link$hw l@ em-phy-hw-reset then
 em-setup-copper-link$hw l@ em-detect-gig-phy dup em-setup-copper-link$ret-val l! drop
 em-setup-copper-link$ret-val l@ 0 < 1 and if
 em-setup-copper-link$ret-val l@ exit then
 em-setup-copper-link$hw l@ 10 em-setup-copper-link$phy-data em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-setup-copper-link$phy-data dup w@ 800 or tuck swap w! drop
 em-setup-copper-link$phy-data dup w@ -61 and tuck swap w! drop
 em-setup-copper-link$hw l@ em-hw.mdix c@ FF and case 1 of em-setup-copper-link$phy-data dup w@ 0 or tuck swap w! drop
 endof
 2 of em-setup-copper-link$phy-data dup w@ 20 or tuck swap w! drop
 endof
 3 of em-setup-copper-link$phy-data dup w@ 40 or tuck swap w! drop
 endof
 0 of em-setup-copper-link$phy-data dup w@ 60 or tuck swap w! drop
 endof
 dup of em-setup-copper-link$phy-data dup w@ 60 or tuck swap w! drop
 endof endcase
 em-setup-copper-link$phy-data dup w@ -3 and tuck swap w! drop
 em-setup-copper-link$hw l@ em-hw.disable-polarity-correction c@ FF and 1 = 1 and if
 em-setup-copper-link$phy-data dup w@ 2 or tuck swap w! drop then
 em-setup-copper-link$hw l@ 10 em-setup-copper-link$phy-data w@ em-write-phy-reg 0 < 1 and if
 -2 exit then
 em-setup-copper-link$hw l@ 14 em-setup-copper-link$phy-data em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-setup-copper-link$phy-data dup w@ 70 or tuck swap w! drop
 em-setup-copper-link$phy-data dup w@ -F01 and tuck swap w! drop
 em-setup-copper-link$phy-data dup w@ 100 or tuck swap w! drop
 em-setup-copper-link$hw l@ 14 em-setup-copper-link$phy-data w@ em-write-phy-reg 0 < 1 and if
 -2 exit then
 em-setup-copper-link$hw l@ em-phy-reset dup em-setup-copper-link$ret-val l! drop
 em-setup-copper-link$ret-val l@ 0 < 1 and if
 em-setup-copper-link$ret-val l@ exit then
 em-setup-copper-link$hw l@ em-hw.autoneg c@ if
 em-setup-copper-link$hw l@ em-hw.autoneg-advertised dup w@ 2F and tuck swap w! drop
 em-setup-copper-link$hw l@ em-hw.autoneg-advertised w@ FFFF and 0 = 1 and if
 2F FFFF and dup em-setup-copper-link$hw l@ em-hw.autoneg-advertised w! drop then
 em-setup-copper-link$hw l@ em-phy-setup-autoneg dup em-setup-copper-link$ret-val l! drop
 em-setup-copper-link$ret-val l@ 0 < 1 and if
 em-setup-copper-link$ret-val l@ exit then
 em-setup-copper-link$hw l@ 0 em-setup-copper-link$phy-data em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-setup-copper-link$phy-data dup w@ 1200 or tuck swap w! drop
 em-setup-copper-link$hw l@ 0 em-setup-copper-link$phy-data w@ em-write-phy-reg 0 < 1 and if
 -2 exit then
 em-setup-copper-link$hw l@ em-hw.wait-autoneg-complete c@ if
 em-setup-copper-link$hw l@ em-wait-autoneg dup em-setup-copper-link$ret-val l! drop
 em-setup-copper-link$ret-val l@ 0 < 1 and if
 em-setup-copper-link$ret-val l@ exit then then else
 em-setup-copper-link$hw l@ em-phy-force-speed-duplex dup em-setup-copper-link$ret-val l! drop
 em-setup-copper-link$ret-val l@ 0 < 1 and if
 em-setup-copper-link$ret-val l@ exit then then
 0 FFFF and dup em-setup-copper-link$i w! drop
 begin em-setup-copper-link$i w@ FFFF and A < 1 and while
 em-setup-copper-link$hw l@ 1 em-setup-copper-link$phy-data em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-setup-copper-link$hw l@ 1 em-setup-copper-link$phy-data em-read-phy-reg 0 < 1 and if
 -2 exit then
 em-setup-copper-link$phy-data w@ FFFF and 4 and if
 em-setup-copper-link$hw l@ em-hw.mac-type l@ em_82544 >= 1 and if
 em-setup-copper-link$hw l@ em-config-collision-dist else
 em-setup-copper-link$hw l@ em-config-mac-to-phy dup em-setup-copper-link$ret-val l! drop
 em-setup-copper-link$ret-val l@ 0 < 1 and if
 em-setup-copper-link$ret-val l@ exit then then
 em-setup-copper-link$hw l@ em-config-fc-after-link-up dup em-setup-copper-link$ret-val l! drop
 em-setup-copper-link$ret-val l@ 0 < 1 and if
 em-setup-copper-link$ret-val l@ exit then
 0 exit then
 1 ms
 em-setup-copper-link$i dup w@ tuck 1 + swap w! drop repeat
 0 exit
 ; \ end em_setup_copper_link
FF constant em_fc_default \ enum
variable em-setup-link$hw
variable em-setup-link$ctrl-ext
variable em-setup-link$ret-val
variable em-setup-link$eeprom-data

external
\ function em_setup_link
: em-setup-link
 em-setup-link$hw l!
 \ saved parameters
 em-setup-link$hw l@ F FFFF and em-setup-link$eeprom-data em-read-eeprom 0 < 1 and if
 -1 exit then
 em-setup-link$hw l@ em-hw.fc l@ em_fc_default = 1 and if
 em-setup-link$eeprom-data w@ FFFF and 3000 and 0 = 1 and if
 em_fc_none dup em-setup-link$hw l@ em-hw.fc l! drop else
 em-setup-link$eeprom-data w@ FFFF and 3000 and 2000 = 1 and if
 em_fc_tx_pause dup em-setup-link$hw l@ em-hw.fc l! drop else
 em_fc_full dup em-setup-link$hw l@ em-hw.fc l! drop then then then
 em-setup-link$hw l@ em-hw.mac-type l@ em_82542_rev2_0 = 1 and if
 em-setup-link$hw l@ em-hw.fc dup l@ -3 and tuck swap l! drop then
 em-setup-link$hw l@ em-hw.mac-type l@ em_82543 < 1 and dup 0<> if drop em-setup-link$hw l@ em-hw.report-tx-early c@ FF and 1 = 1 and then if
 em-setup-link$hw l@ em-hw.fc dup l@ -2 and tuck swap l! drop then
 em-setup-link$hw l@ em-hw.fc l@ dup em-setup-link$hw l@ em-hw.original-fc l! drop
 em-setup-link$hw l@ em-hw.mac-type l@ em_82543 = 1 and if
 em-setup-link$eeprom-data w@ FFFF and F0 and 4 lshift dup em-setup-link$ctrl-ext l! drop
 em-setup-link$hw l@ 18 em-setup-link$ctrl-ext l@ em-write-reg then
 em-setup-link$hw l@ em-hw.media-type l@ em_media_type_fiber = 1 and if em-setup-link$hw l@ em-setup-fiber-link else em-setup-link$hw l@ em-setup-copper-link then dup em-setup-link$ret-val l! drop
 em-setup-link$hw l@ 28 C28001 em-write-reg
 em-setup-link$hw l@ 2C 100 em-write-reg
 em-setup-link$hw l@ 30 8808 em-write-reg
 em-setup-link$hw l@ 170 em-setup-link$hw l@ em-hw.fc-pause-time w@ FFFF and em-write-reg
 em-setup-link$hw l@ em-hw.fc l@ em_fc_tx_pause and 0<> invert 1 and if
 em-setup-link$hw l@ 2160 0 em-write-reg
 em-setup-link$hw l@ 2168 0 em-write-reg else
 em-setup-link$hw l@ em-hw.fc-send-xon c@ if
 em-setup-link$hw l@ 2160 em-setup-link$hw l@ em-hw.fc-low-water w@ FFFF and -80000000 or em-write-reg
 em-setup-link$hw l@ 2168 em-setup-link$hw l@ em-hw.fc-high-water w@ FFFF and em-write-reg else
 em-setup-link$hw l@ 2160 em-setup-link$hw l@ em-hw.fc-low-water w@ FFFF and em-write-reg
 em-setup-link$hw l@ 2168 em-setup-link$hw l@ em-hw.fc-high-water w@ FFFF and em-write-reg then then
 em-setup-link$ret-val l@ exit
 ; \ end em_setup_link
headerless

variable em-init-rx-addrs$hw
variable em-init-rx-addrs$i
variable em-init-rx-addrs$addr-low
variable em-init-rx-addrs$addr-high

external
\ function em_init_rx_addrs
: em-init-rx-addrs
 em-init-rx-addrs$hw l!
 \ saved parameters
 em-init-rx-addrs$hw l@ em-hw.mac-addr c@ FF and em-init-rx-addrs$hw l@ em-hw.mac-addr 1 + c@ FF and 8 lshift or em-init-rx-addrs$hw l@ em-hw.mac-addr 2 + c@ FF and 10 lshift or em-init-rx-addrs$hw l@ em-hw.mac-addr 3 + c@ FF and 18 lshift or dup em-init-rx-addrs$addr-low l! drop
 em-init-rx-addrs$hw l@ em-hw.mac-addr 4 + c@ FF and em-init-rx-addrs$hw l@ em-hw.mac-addr 5 + c@ FF and 8 lshift or -80000000 or dup em-init-rx-addrs$addr-high l! drop
 em-init-rx-addrs$addr-low l@ dup em-init-rx-addrs$hw l@ em-hw.regs l@ 5400 + rl! drop
 em-init-rx-addrs$addr-high l@ dup em-init-rx-addrs$hw l@ em-hw.regs l@ 5404 + rl! drop
 1 dup em-init-rx-addrs$i l! drop
 begin em-init-rx-addrs$i l@ 10 < 1 and while
 0 dup em-init-rx-addrs$hw l@ em-hw.regs l@ 1500 em-init-rx-addrs$i l@ 1 lshift + 4 * + rl! drop
 0 dup em-init-rx-addrs$hw l@ em-hw.regs l@ 1500 em-init-rx-addrs$i l@ 1 lshift 1 + + 4 * + rl! drop
 em-init-rx-addrs$i dup l@ tuck 1 + swap l! drop repeat
 ; \ end em_init_rx_addrs
headerless

variable em-rar-set$hw
variable em-rar-set$addr
variable em-rar-set$index
variable em-rar-set$rar-high
variable em-rar-set$rar-low

external
\ function em_rar_set
: em-rar-set
 em-rar-set$index l!
 em-rar-set$addr l!
 em-rar-set$hw l!
 \ saved parameters
 em-rar-set$addr l@ c@ FF and em-rar-set$addr l@ 1 + c@ FF and 8 lshift or em-rar-set$addr l@ 2 + c@ FF and 10 lshift or em-rar-set$addr l@ 3 + c@ FF and 18 lshift or dup em-rar-set$rar-low l! drop
 em-rar-set$addr l@ 4 + c@ FF and em-rar-set$addr l@ 5 + c@ FF and 8 lshift or -80000000 or dup em-rar-set$rar-high l! drop
 em-rar-set$rar-low l@ dup em-rar-set$hw l@ em-hw.regs l@ 1500 em-rar-set$index l@ 1 lshift + 4 * + rl! drop
 em-rar-set$rar-high l@ dup em-rar-set$hw l@ em-hw.regs l@ 1500 em-rar-set$index l@ 1 lshift 1 + + 4 * + rl! drop
 ; \ end em_rar_set
headerless

variable em-hash-mc-addr$hw
variable em-hash-mc-addr$mc-addr
variable em-hash-mc-addr$hash-value

external
\ function em_hash_mc_addr
: em-hash-mc-addr
 em-hash-mc-addr$mc-addr l!
 em-hash-mc-addr$hw l!
 \ saved parameters
 0 em-hash-mc-addr$hash-value l!
 em-hash-mc-addr$hw l@ em-hw.mc-filter-type l@ case 0 of em-hash-mc-addr$mc-addr l@ 4 + c@ FF and 4 >>a em-hash-mc-addr$mc-addr l@ 5 + c@ FF and FFFF and 4 lshift or dup em-hash-mc-addr$hash-value l! drop
 endof
 1 of em-hash-mc-addr$mc-addr l@ 4 + c@ FF and 3 >>a em-hash-mc-addr$mc-addr l@ 5 + c@ FF and FFFF and 5 lshift or dup em-hash-mc-addr$hash-value l! drop
 endof
 2 of em-hash-mc-addr$mc-addr l@ 4 + c@ FF and 2 >>a em-hash-mc-addr$mc-addr l@ 5 + c@ FF and FFFF and 6 lshift or dup em-hash-mc-addr$hash-value l! drop
 endof
 3 of em-hash-mc-addr$mc-addr l@ 4 + c@ FF and em-hash-mc-addr$mc-addr l@ 5 + c@ FF and FFFF and 8 lshift or dup em-hash-mc-addr$hash-value l! drop
 endof endcase
 em-hash-mc-addr$hash-value dup l@ FFF and tuck swap l! drop
 em-hash-mc-addr$hash-value l@ exit
 ; \ end em_hash_mc_addr
headerless

variable em-mta-set$hw
variable em-mta-set$hash-value
variable em-mta-set$hash-bit
variable em-mta-set$temp
variable em-mta-set$mta
variable em-mta-set$hash-reg

external
\ function em_mta_set
: em-mta-set
 em-mta-set$hash-value l!
 em-mta-set$hw l!
 \ saved parameters
 em-mta-set$hash-value l@ 5 rshift 7F and dup em-mta-set$hash-reg l! drop
 em-mta-set$hash-value l@ 1F and dup em-mta-set$hash-bit l! drop
 em-mta-set$hw l@ em-hw.regs l@ 1480 em-mta-set$hash-reg l@ + 4 * + rl@ dup em-mta-set$mta l! drop
 em-mta-set$mta dup l@ 1 em-mta-set$hash-bit l@ lshift or tuck swap l! drop
 em-mta-set$hw l@ em-hw.mac-type l@ em_82544 = 1 and dup 0<> if drop em-mta-set$hash-reg l@ 1 and 1 = 1 and then if
 em-mta-set$hw l@ em-hw.regs l@ 1480 em-mta-set$hash-reg l@ 1 - + 4 * + rl@ dup em-mta-set$temp l! drop
 em-mta-set$mta l@ dup em-mta-set$hw l@ em-hw.regs l@ 1480 em-mta-set$hash-reg l@ + 4 * + rl! drop
 em-mta-set$temp l@ dup em-mta-set$hw l@ em-hw.regs l@ 1480 em-mta-set$hash-reg l@ 1 - + 4 * + rl! drop else
 em-mta-set$mta l@ dup em-mta-set$hw l@ em-hw.regs l@ 1480 em-mta-set$hash-reg l@ + 4 * + rl! drop then
 ; \ end em_mta_set
headerless

variable em-mc-addr-list-update$hw
variable em-mc-addr-list-update$mc-addr-list
variable em-mc-addr-list-update$mc-addr-count
variable em-mc-addr-list-update$pad
variable em-mc-addr-list-update$rar-used-count
variable em-mc-addr-list-update$i
variable em-mc-addr-list-update$hash-value

external
\ function em_mc_addr_list_update
: em-mc-addr-list-update
 em-mc-addr-list-update$pad l!
 em-mc-addr-list-update$mc-addr-count l!
 em-mc-addr-list-update$mc-addr-list l!
 em-mc-addr-list-update$hw l!
 \ saved parameters
 1 em-mc-addr-list-update$rar-used-count l!
 em-mc-addr-list-update$mc-addr-count l@ dup em-mc-addr-list-update$hw l@ em-hw.num-mc-addrs l! drop
 em-mc-addr-list-update$rar-used-count l@ dup em-mc-addr-list-update$i l! drop
 begin em-mc-addr-list-update$i l@ 10 < 1 and while
 0 dup em-mc-addr-list-update$hw l@ em-hw.regs l@ 1500 em-mc-addr-list-update$i l@ 1 lshift + 4 * + rl! drop
 0 dup em-mc-addr-list-update$hw l@ em-hw.regs l@ 1500 em-mc-addr-list-update$i l@ 1 lshift 1 + + 4 * + rl! drop
 em-mc-addr-list-update$i dup l@ tuck 1 + swap l! drop repeat
 0 dup em-mc-addr-list-update$i l! drop
 begin em-mc-addr-list-update$i l@ 80 < 1 and while
 0 dup em-mc-addr-list-update$hw l@ em-hw.regs l@ 1480 em-mc-addr-list-update$i l@ + 4 * + rl! drop
 em-mc-addr-list-update$i dup l@ tuck 1 + swap l! drop repeat
 0 dup em-mc-addr-list-update$i l! drop
 begin em-mc-addr-list-update$i l@ em-mc-addr-list-update$mc-addr-count l@ < 1 and while
 em-mc-addr-list-update$hw l@ em-mc-addr-list-update$mc-addr-list l@ em-mc-addr-list-update$i l@ 6 em-mc-addr-list-update$pad l@ + * + em-hash-mc-addr dup em-mc-addr-list-update$hash-value l! drop
 em-mc-addr-list-update$rar-used-count l@ 10 < 1 and if
 em-mc-addr-list-update$hw l@ em-mc-addr-list-update$mc-addr-list l@ em-mc-addr-list-update$i l@ 6 em-mc-addr-list-update$pad l@ + * + em-mc-addr-list-update$rar-used-count l@ em-rar-set
 em-mc-addr-list-update$rar-used-count dup l@ tuck 1 + swap l! drop else
 em-mc-addr-list-update$hw l@ em-mc-addr-list-update$hash-value l@ em-mta-set then
 em-mc-addr-list-update$i dup l@ tuck 1 + swap l! drop repeat
 ; \ end em_mc_addr_list_update
headerless

variable em-setup-led$hw
variable em-setup-led$ledctl

external
\ function em_setup_led
: em-setup-led
 em-setup-led$hw l!
 \ saved parameters
 0 dup em-setup-led$ledctl l! drop
 em-setup-led$hw l@ em-hw.device-id w@ FFFF and case 1008 of endof
 dup of -3 exit
 endof endcase
 0 exit
 ; \ end em_setup_led
headerless

variable em-cleanup-led$hw

external
\ function em_cleanup_led
: em-cleanup-led
 em-cleanup-led$hw l!
 \ saved parameters
 em-cleanup-led$hw l@ em-hw.device-id w@ FFFF and case 1008 of endof
 dup of -3 exit
 endof endcase
 0 exit
 ; \ end em_cleanup_led
headerless

variable em-led-on$hw
variable em-led-on$ctrl

external
\ function em_led_on
: em-led-on
 em-led-on$hw l!
 \ saved parameters
 em-led-on$hw l@ em-hw.device-id w@ FFFF and case 1008 of em-led-on$hw l@ em-hw.regs l@ rl@ dup em-led-on$ctrl l! drop
 em-led-on$ctrl dup l@ -40001 and tuck swap l! drop
 em-led-on$ctrl dup l@ 400000 or tuck swap l! drop
 em-led-on$hw l@ 0 em-led-on$ctrl l@ em-write-reg
 endof
 dup of -3 exit
 endof endcase
 0 exit
 ; \ end em_led_on
headerless

variable em-led-off$hw
variable em-led-off$ctrl

external
\ function em_led_off
: em-led-off
 em-led-off$hw l!
 \ saved parameters
 em-led-off$hw l@ em-hw.device-id w@ FFFF and case 1008 of em-led-off$hw l@ em-hw.regs l@ rl@ dup em-led-off$ctrl l! drop
 em-led-off$ctrl dup l@ 40000 or tuck swap l! drop
 em-led-off$ctrl dup l@ 400000 or tuck swap l! drop
 em-led-off$hw l@ 0 em-led-off$ctrl l@ em-write-reg
 endof
 dup of -3 exit
 endof endcase
 0 exit
 ; \ end em_led_off
headerless

variable em-clear-hw-cntrs$hw
variable em-clear-hw-cntrs$temp

external
\ function em_clear_hw_cntrs
: em-clear-hw-cntrs
 em-clear-hw-cntrs$hw l!
 \ saved parameters
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4000 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4008 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4010 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4014 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4018 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 401C + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4020 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4028 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4030 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4038 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4040 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4048 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 404C + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4050 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4054 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4058 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 405C + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4060 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4064 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4068 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 406C + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4070 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4074 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4078 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 407C + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4080 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4088 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 408C + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4090 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4094 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40A0 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40A4 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40A8 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40AC + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40B0 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40C0 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40C4 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40C8 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40CC + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40D0 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40D4 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40D8 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40DC + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40E0 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40E4 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40E8 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40EC + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40F0 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40F4 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.mac-type l@ em_82543 < 1 and if
 exit then
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4004 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 400C + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 4034 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 403C + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40F8 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40FC + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.mac-type l@ em_82544 <= 1 and if
 exit then
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40B4 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40B8 + rl@ dup em-clear-hw-cntrs$temp rl! drop
 em-clear-hw-cntrs$hw l@ em-hw.regs l@ 40BC + rl@ dup em-clear-hw-cntrs$temp rl! drop
 ; \ end em_clear_hw_cntrs
headerless

variable em-reset-adaptive$hw

external
\ function em_reset_adaptive
: em-reset-adaptive
 em-reset-adaptive$hw l!
 \ saved parameters
 em-reset-adaptive$hw l@ em-hw.adaptive-ifs c@ if
 em-reset-adaptive$hw l@ em-hw.ifs-params-forced c@ 0<> invert 1 and if
 0 FFFF and dup em-reset-adaptive$hw l@ em-hw.current-ifs-val w! drop
 28 FFFF and dup em-reset-adaptive$hw l@ em-hw.ifs-min-val w! drop
 50 FFFF and dup em-reset-adaptive$hw l@ em-hw.ifs-max-val w! drop
 A FFFF and dup em-reset-adaptive$hw l@ em-hw.ifs-step-size w! drop
 4 FFFF and dup em-reset-adaptive$hw l@ em-hw.ifs-ratio w! drop then
 0 FF and dup em-reset-adaptive$hw l@ em-hw.in-ifs-mode c! drop
 em-reset-adaptive$hw l@ 458 0 em-write-reg else
 then
 ; \ end em_reset_adaptive
headerless

variable em-update-adaptive$hw

external
\ function em_update_adaptive
: em-update-adaptive
 em-update-adaptive$hw l!
 \ saved parameters
 em-update-adaptive$hw l@ em-hw.adaptive-ifs c@ if
 em-update-adaptive$hw l@ em-hw.collision-delta l@ em-update-adaptive$hw l@ em-hw.ifs-ratio w@ FFFF and * em-update-adaptive$hw l@ em-hw.tx-packet-delta l@ > 1 and if
 em-update-adaptive$hw l@ em-hw.tx-packet-delta l@ 3E8 > 1 and if
 -1 FF and dup em-update-adaptive$hw l@ em-hw.in-ifs-mode c! drop
 em-update-adaptive$hw l@ em-hw.current-ifs-val w@ FFFF and em-update-adaptive$hw l@ em-hw.ifs-max-val w@ FFFF and < 1 and if
 em-update-adaptive$hw l@ em-hw.current-ifs-val w@ FFFF and 0 = 1 and if
 em-update-adaptive$hw l@ em-hw.ifs-min-val w@ dup em-update-adaptive$hw l@ em-hw.current-ifs-val w! drop else
 em-update-adaptive$hw l@ em-hw.current-ifs-val dup w@ em-update-adaptive$hw l@ em-hw.ifs-step-size w@ FFFF and + tuck swap w! drop then
 em-update-adaptive$hw l@ 458 em-update-adaptive$hw l@ em-hw.current-ifs-val w@ FFFF and em-write-reg then then else
 em-update-adaptive$hw l@ em-hw.in-ifs-mode c@ FF and -1 = 1 and dup 0<> if drop em-update-adaptive$hw l@ em-hw.tx-packet-delta l@ 3E8 <= 1 and then if
 0 FFFF and dup em-update-adaptive$hw l@ em-hw.current-ifs-val w! drop
 0 FF and dup em-update-adaptive$hw l@ em-hw.in-ifs-mode c! drop
 em-update-adaptive$hw l@ 458 0 em-write-reg then then else
 then
 ; \ end em_update_adaptive
headerless

variable em-tbi-adjust-stats$hw
variable em-tbi-adjust-stats$stats
variable em-tbi-adjust-stats$frame-len
variable em-tbi-adjust-stats$mac-addr
variable em-tbi-adjust-stats$carry-bit

external
\ function em_tbi_adjust_stats
: em-tbi-adjust-stats
 em-tbi-adjust-stats$mac-addr l!
 em-tbi-adjust-stats$frame-len l!
 em-tbi-adjust-stats$stats l!
 em-tbi-adjust-stats$hw l!
 \ saved parameters
 em-tbi-adjust-stats$frame-len dup l@ tuck 1 - swap l! drop
 em-tbi-adjust-stats$stats l@ em-hw-stats.crcerrs dup l@ tuck 1 - swap l! drop
 em-tbi-adjust-stats$stats l@ em-hw-stats.gprc dup l@ tuck 1 + swap l! drop
 -80000000 em-tbi-adjust-stats$stats l@ em-hw-stats.gorcl l@ and dup em-tbi-adjust-stats$carry-bit l! drop
 em-tbi-adjust-stats$stats l@ em-hw-stats.gorcl dup l@ em-tbi-adjust-stats$frame-len l@ + tuck swap l! drop
 em-tbi-adjust-stats$carry-bit l@ dup 0<> if drop em-tbi-adjust-stats$stats l@ em-hw-stats.gorcl l@ -80000000 and 0 = 1 and then if
 em-tbi-adjust-stats$stats l@ em-hw-stats.gorch dup l@ tuck 1 + swap l! drop then
 em-tbi-adjust-stats$mac-addr l@ c@ FF and FF FF and FF and = 1 and dup 0<> if drop em-tbi-adjust-stats$mac-addr l@ 1 + c@ FF and FF FF and FF and = 1 and then if
 em-tbi-adjust-stats$stats l@ em-hw-stats.bprc dup l@ tuck 1 + swap l! drop else
 em-tbi-adjust-stats$mac-addr l@ c@ FF and 1 and if
 em-tbi-adjust-stats$stats l@ em-hw-stats.mprc dup l@ tuck 1 + swap l! drop then then
 em-tbi-adjust-stats$frame-len l@ em-tbi-adjust-stats$hw l@ em-hw.max-frame-size l@ = 1 and if
 em-tbi-adjust-stats$stats l@ em-hw-stats.roc l@ 0 > 1 and if
 em-tbi-adjust-stats$stats l@ em-hw-stats.roc dup l@ tuck 1 - swap l! drop then then
 em-tbi-adjust-stats$frame-len l@ 40 = 1 and if
 em-tbi-adjust-stats$stats l@ em-hw-stats.prc64 dup l@ tuck 1 + swap l! drop
 em-tbi-adjust-stats$stats l@ em-hw-stats.prc127 dup l@ tuck 1 - swap l! drop else
 em-tbi-adjust-stats$frame-len l@ 7F = 1 and if
 em-tbi-adjust-stats$stats l@ em-hw-stats.prc127 dup l@ tuck 1 + swap l! drop
 em-tbi-adjust-stats$stats l@ em-hw-stats.prc255 dup l@ tuck 1 - swap l! drop else
 em-tbi-adjust-stats$frame-len l@ FF = 1 and if
 em-tbi-adjust-stats$stats l@ em-hw-stats.prc255 dup l@ tuck 1 + swap l! drop
 em-tbi-adjust-stats$stats l@ em-hw-stats.prc511 dup l@ tuck 1 - swap l! drop else
 em-tbi-adjust-stats$frame-len l@ 1FF = 1 and if
 em-tbi-adjust-stats$stats l@ em-hw-stats.prc511 dup l@ tuck 1 + swap l! drop
 em-tbi-adjust-stats$stats l@ em-hw-stats.prc1023 dup l@ tuck 1 - swap l! drop else
 em-tbi-adjust-stats$frame-len l@ 3FF = 1 and if
 em-tbi-adjust-stats$stats l@ em-hw-stats.prc1023 dup l@ tuck 1 + swap l! drop
 em-tbi-adjust-stats$stats l@ em-hw-stats.prc1522 dup l@ tuck 1 - swap l! drop else
 em-tbi-adjust-stats$frame-len l@ 5F2 = 1 and if
 em-tbi-adjust-stats$stats l@ em-hw-stats.prc1522 dup l@ tuck 1 + swap l! drop then then then then then then
 ; \ end em_tbi_adjust_stats
headerless

1 constant em_bus_type_pci \ enum
1 constant em_bus_speed_33 \ enum
2 constant em_bus_speed_66 \ enum
0 constant em_bus_type_unknown \ enum
2 constant em_bus_type_pcix \ enum
0 constant em_bus_speed_unknown \ enum
3 constant em_bus_speed_100 \ enum
4 constant em_bus_speed_133 \ enum
5 constant em_bus_speed_reserved \ enum
0 constant em_bus_width_unknown \ enum
1 constant em_bus_width_32 \ enum
2 constant em_bus_width_64 \ enum
variable em-get-bus-info$hw
variable em-get-bus-info$status

external
\ function em_get_bus_info
: em-get-bus-info
 em-get-bus-info$hw l!
 \ saved parameters
 em-get-bus-info$hw l@ em-hw.mac-type l@ em_82543 < 1 and if
 em_bus_type_unknown dup em-get-bus-info$hw l@ em-hw.bus-type l! drop
 em_bus_speed_unknown dup em-get-bus-info$hw l@ em-hw.bus-speed l! drop
 em_bus_width_unknown dup em-get-bus-info$hw l@ em-hw.bus-width l! drop
 exit then
 em-get-bus-info$hw l@ em-hw.regs l@ 8 + rl@ dup em-get-bus-info$status l! drop
 em-get-bus-info$status l@ 2000 and if em_bus_type_pcix else em_bus_type_pci then dup em-get-bus-info$hw l@ em-hw.bus-type l! drop
 em-get-bus-info$hw l@ em-hw.bus-type l@ em_bus_type_pci = 1 and if
 em-get-bus-info$status l@ 800 and if em_bus_speed_66 else em_bus_speed_33 then dup em-get-bus-info$hw l@ em-hw.bus-speed l! drop else
 em-get-bus-info$status l@ C000 and case 0 of em_bus_speed_66 dup em-get-bus-info$hw l@ em-hw.bus-speed l! drop
 endof
 4000 of em_bus_speed_100 dup em-get-bus-info$hw l@ em-hw.bus-speed l! drop
 endof
 8000 of em_bus_speed_133 dup em-get-bus-info$hw l@ em-hw.bus-speed l! drop
 endof
 dup of em_bus_speed_reserved dup em-get-bus-info$hw l@ em-hw.bus-speed l! drop
 endof endcase then
 em-get-bus-info$status l@ 1000 and if em_bus_width_64 else em_bus_width_32 then dup em-get-bus-info$hw l@ em-hw.bus-width l! drop
 ; \ end em_get_bus_info
headerless

variable em-init-hw$hw
variable em-init-hw$pci-cmd-word
variable em-init-hw$i
variable em-init-hw$status
variable em-init-hw$ret-val
variable em-init-hw$ctrl

external
\ function em_init_hw
: em-init-hw
 em-init-hw$hw l!
 \ saved parameters
 em-init-hw$hw l@ em-id-led-init dup em-init-hw$ret-val l! drop
 em-init-hw$ret-val l@ 0 < 1 and if
 em-init-hw$ret-val l@ exit then
 em-init-hw$hw l@ em-hw.mac-type l@ em_82543 <> 1 and if
 0 FF and dup em-init-hw$hw l@ em-hw.tbi-compatibility-en c! drop then
 em-init-hw$hw l@ em-hw.mac-type l@ em_82543 >= 1 and if
 em-init-hw$hw l@ em-hw.regs l@ 8 + rl@ dup em-init-hw$status l! drop
 em-init-hw$status l@ 20 and if
 em_media_type_fiber dup em-init-hw$hw l@ em-hw.media-type l! drop
 0 FF and dup em-init-hw$hw l@ em-hw.tbi-compatibility-en c! drop else
 em_media_type_copper dup em-init-hw$hw l@ em-hw.media-type l! drop then else
 em_media_type_fiber dup em-init-hw$hw l@ em-hw.media-type l! drop then
 em-init-hw$hw l@ 38 0 em-write-reg
 em-init-hw$hw l@ em-clear-vfta
 em-init-hw$hw l@ em-hw.mac-type l@ em_82542_rev2_0 = 1 and if
 em-init-hw$hw l@ em-hw.pci-cmd-word w@ FFFF and 10 and if
 em-init-hw$hw l@ em-hw.pci-cmd-word w@ FFFF and -11 and FFFF and dup em-init-hw$pci-cmd-word w! drop
 my-space -100 and 4 or em-init-hw$pci-cmd-word w@ FFFF and  " config-l!" $call-parent ( asm )
 then
 em-init-hw$hw l@ 100 1 em-write-reg
 5 ms then
 em-init-hw$hw l@ em-init-rx-addrs
 em-init-hw$hw l@ em-hw.mac-type l@ em_82542_rev2_0 = 1 and if
 em-init-hw$hw l@ 100 0 em-write-reg
 1 ms
 em-init-hw$hw l@ em-hw.pci-cmd-word w@ FFFF and 10 and if
 my-space -100 and 4 or em-init-hw$hw l@ em-hw.pci-cmd-word w@ FFFF and  " config-l!" $call-parent ( asm )
 then then
 0 dup em-init-hw$i l! drop
 begin em-init-hw$i l@ 80 < 1 and while
 0 dup em-init-hw$hw l@ em-hw.regs l@ 1480 em-init-hw$i l@ + 4 * + rl! drop
 em-init-hw$i dup l@ tuck 1 + swap l! drop repeat
 em-init-hw$hw l@ em-hw.dma-fairness c@ if
 em-init-hw$hw l@ em-hw.regs l@ rl@ dup em-init-hw$ctrl l! drop
 em-init-hw$hw l@ 0 em-init-hw$ctrl l@ 4 or em-write-reg then
 em-init-hw$hw l@ em-setup-link dup em-init-hw$ret-val l! drop
 em-init-hw$hw l@ em-clear-hw-cntrs
 em-init-hw$ret-val l@ exit
 ; \ end em_init_hw
headerless


external
variable em-display-debug-stats 0 em-display-debug-stats l!
headerless


external
variable em-adapter-list 0 em-adapter-list l!
headerless

8 buffer: em-strings 0 " Intel(R) PRO/1000 Network Connection"(00)" drop em-strings
 2 0 do dup >r l! r> 4 + loop drop
variable pci-read-config$!unnamed-121
variable pci-read-config$reg
variable pci-read-config$width
variable pci-read-config$addr
variable pci-read-config$val

external
\ function pci_read_config
: pci-read-config
 pci-read-config$width l!
 pci-read-config$reg l!
 pci-read-config$!unnamed-121 l!
 \ saved parameters
 0 pci-read-config$val l!
 my-space -100 and dup pci-read-config$addr l! pci-read-config$addr l!
 pci-read-config$width l@ case 1 of pci-read-config$reg l@ pci-read-config$addr l@ or  " config-b@" $call-parent ( asm )
 FF and dup pci-read-config$val l! drop
 endof
 2 of pci-read-config$reg l@ pci-read-config$addr l@ or  " config-w@" $call-parent ( asm )
 FFFF and dup pci-read-config$val l! drop
 endof
 4 of pci-read-config$reg l@ pci-read-config$addr l@ or  " config-l@" $call-parent ( asm )
 dup pci-read-config$val l! drop
 endof endcase
 pci-read-config$val l@ exit
 ; \ end pci_read_config
headerless

variable pci-write-config$!unnamed-122
variable pci-write-config$reg
variable pci-write-config$data
variable pci-write-config$width
variable pci-write-config$addr

external
\ function pci_write_config
: pci-write-config
 pci-write-config$width l!
 pci-write-config$data l!
 pci-write-config$reg l!
 pci-write-config$!unnamed-122 l!
 \ saved parameters
 my-space pci-write-config$addr l!
 pci-write-config$width l@ case 1 of pci-write-config$data l@ FF and pci-write-config$reg l@ pci-write-config$addr l@ or  " config-b!" $call-parent ( asm )

 endof
 2 of pci-write-config$data l@ FFFF and pci-write-config$reg l@ pci-write-config$addr l@ or  " config-w!" $call-parent ( asm )

 endof
 4 of pci-write-config$data l@ pci-write-config$reg l@ pci-write-config$addr l@ or  " config-l!" $call-parent ( asm )

 endof endcase
 ; \ end pci_write_config
headerless

variable pci-get-vendor$adapter

external
\ function pci_get_vendor
: pci-get-vendor
 pci-get-vendor$adapter l!
 \ saved parameters
 pci-get-vendor$adapter l@ 0 2 pci-read-config exit
 ; \ end pci_get_vendor
headerless

variable pci-get-device$adapter

external
\ function pci_get_device
: pci-get-device
 pci-get-device$adapter l!
 \ saved parameters
 pci-get-device$adapter l@ 2 2 pci-read-config exit
 ; \ end pci_get_device
headerless

variable pci-get-subvendor$adapter

external
\ function pci_get_subvendor
: pci-get-subvendor
 pci-get-subvendor$adapter l!
 \ saved parameters
 pci-get-subvendor$adapter l@ 2C 2 pci-read-config exit
 ; \ end pci_get_subvendor
headerless

variable pci-get-subdevice$adapter

external
\ function pci_get_subdevice
: pci-get-subdevice
 pci-get-subdevice$adapter l!
 \ saved parameters
 pci-get-subdevice$adapter l@ 2E 2 pci-read-config exit
 ; \ end pci_get_subdevice
headerless

variable em-probe$adapter
variable em-probe$pci-subdevice-id
variable em-probe$pci-vendor-id
variable em-probe$pci-device-id
variable em-probe$pci-subvendor-id

\ function em_probe
: em-probe
 em-probe$adapter l!
 \ saved parameters
 0 FFFF and em-probe$pci-vendor-id w!
 0 FFFF and em-probe$pci-device-id w!
 0 FFFF and em-probe$pci-subvendor-id w!
 0 FFFF and em-probe$pci-subdevice-id w!
 em-probe$adapter l@ pci-get-vendor FFFF and dup em-probe$pci-vendor-id w! drop
 em-probe$adapter l@ pci-get-device FFFF and dup em-probe$pci-device-id w! drop
 em-probe$adapter l@ pci-get-subvendor FFFF and dup em-probe$pci-subvendor-id w! drop
 em-probe$adapter l@ pci-get-subdevice FFFF and dup em-probe$pci-subdevice-id w! drop
 em-probe$pci-vendor-id w@ FFFF and 8086 <> 1 and dup 0= if drop em-probe$pci-device-id w@ FFFF and 1008 <> 1 and then dup 0= if drop em-probe$pci-subvendor-id w@ FFFF and 8086 <> 1 and then dup 0= if drop em-probe$pci-subdevice-id w@ FFFF and 1008 <> 1 and then if
 -1 exit then
 0 exit
 ; \ end em_probe
variable em-sw-init$adapter
variable em-sw-init$i
variable em-sw-init$dma
variable em-sw-init$map
variable em-sw-init$rxdesc
variable em-sw-init$txdesc

\ function em_sw_init
: em-sw-init
 em-sw-init$adapter l!
 \ saved parameters
 B100 dup em-sw-init$adapter l@ adapter.mem-len l! drop
 em-sw-init$adapter l@ adapter.mem-len l@  " dma-alloc" $call-parent ( asm )
 dup em-sw-init$dma l! drop
 em-sw-init$dma l@ 0 = 1 and if
 " em_sw_init dma-alloc failed" type
 cr
 0 FF and exit then
 em-sw-init$dma l@ em-sw-init$adapter l@ adapter.mem-len l@ 0  " dma-map-in" $call-parent ( asm )
 dup em-sw-init$map l! drop
 em-sw-init$map l@ 0 = 1 and if
 em-sw-init$dma l@ em-sw-init$adapter l@ adapter.mem-len l@  " dma-free" $call-parent ( asm )

 " em_sw_init: map-in of dma-mem failed" type
 cr
 0 FF and exit then
 em-sw-init$dma l@ dup em-sw-init$adapter l@ adapter.dma-mem l! drop
 em-sw-init$map l@ dup em-sw-init$adapter l@ adapter.map-mem l! drop
 em-sw-init$dma l@ em-sw-init$adapter l@ adapter.mem-len l@ 0 fill
 1000 em-sw-init$map l@ FFF and - FFF and dup em-sw-init$i l! drop
 em-sw-init$map l@ em-sw-init$i l@ + dup em-sw-init$map l! drop
 em-sw-init$dma l@ em-sw-init$i l@ + dup em-sw-init$dma l! drop
 8 FFFF and dup em-sw-init$adapter l@ adapter.num-tx-desc w! drop
 em-sw-init$map l@ dup em-sw-init$adapter l@ adapter.tx-desc-base-pci l! drop
 em-sw-init$dma l@ dup em-sw-init$adapter l@ adapter.tx-desc-base l! drop
 em-sw-init$adapter l@ adapter.tx-desc-base l@ dup em-sw-init$adapter l@ adapter.first-tx-desc l! drop
 em-sw-init$adapter l@ adapter.first-tx-desc l@ em-sw-init$adapter l@ adapter.num-tx-desc w@ FFFF and 1 - 10 * + dup em-sw-init$adapter l@ adapter.last-tx-desc l! drop
 em-sw-init$dma dup l@ 80 + tuck swap l! drop
 em-sw-init$map dup l@ 80 + tuck swap l! drop
 1000 em-sw-init$map l@ FFF and - FFF and dup em-sw-init$i l! drop
 em-sw-init$map l@ em-sw-init$i l@ + dup em-sw-init$map l! drop
 em-sw-init$dma l@ em-sw-init$i l@ + dup em-sw-init$dma l! drop
 8 FFFF and dup em-sw-init$adapter l@ adapter.num-rx-desc w! drop
 em-sw-init$map l@ dup em-sw-init$adapter l@ adapter.rx-desc-base-pci l! drop
 em-sw-init$dma l@ dup em-sw-init$adapter l@ adapter.rx-desc-base l! drop
 em-sw-init$adapter l@ adapter.rx-desc-base l@ dup em-sw-init$adapter l@ adapter.first-rx-desc l! drop
 em-sw-init$adapter l@ adapter.first-rx-desc l@ em-sw-init$adapter l@ adapter.num-rx-desc w@ FFFF and 1 - 10 * + dup em-sw-init$adapter l@ adapter.last-rx-desc l! drop
 em-sw-init$dma dup l@ 80 + tuck swap l! drop
 em-sw-init$map dup l@ 80 + tuck swap l! drop
 1000 em-sw-init$map l@ FFF and - FFF and dup em-sw-init$i l! drop
 em-sw-init$map l@ em-sw-init$i l@ + dup em-sw-init$map l! drop
 em-sw-init$dma l@ em-sw-init$i l@ + dup em-sw-init$dma l! drop
 em-sw-init$dma l@ dup em-sw-init$adapter l@ adapter.tx-bufs l! drop
 em-sw-init$adapter l@ adapter.first-tx-desc l@ dup em-sw-init$txdesc l! drop
 0 dup em-sw-init$i l! drop
 begin em-sw-init$i l@ em-sw-init$adapter l@ adapter.num-tx-desc w@ FFFF and < 1 and while
 em-sw-init$map l@ dup em-sw-init$txdesc l@ em-tx-desc.buffer-addr uint64.lo rl! drop
 em-sw-init$dma dup l@ 800 + tuck swap l! drop
 em-sw-init$map dup l@ 800 + tuck swap l! drop
 em-sw-init$txdesc dup l@ tuck 10 + swap l! drop
 em-sw-init$i dup l@ tuck 1 + swap l! drop repeat
 em-sw-init$dma l@ dup em-sw-init$adapter l@ adapter.rx-bufs l! drop
 em-sw-init$adapter l@ adapter.first-rx-desc l@ dup em-sw-init$rxdesc l! drop
 0 dup em-sw-init$i l! drop
 begin em-sw-init$i l@ em-sw-init$adapter l@ adapter.num-rx-desc w@ FFFF and < 1 and while
 em-sw-init$map l@ dup em-sw-init$rxdesc l@ em-rx-desc.buffer-addr uint64.lo rl! drop
 em-sw-init$dma dup l@ 800 + tuck swap l! drop
 em-sw-init$map dup l@ 800 + tuck swap l! drop
 em-sw-init$rxdesc dup l@ tuck 10 + swap l! drop
 em-sw-init$i dup l@ tuck 1 + swap l! drop repeat
 em-sw-init$adapter l@ adapter.dma-mem l@ em-sw-init$adapter l@ adapter.map-mem l@ em-sw-init$adapter l@ adapter.mem-len l@  " dma-sync" $call-parent ( asm )

 -1 FF and exit
 ; \ end em_sw_init
variable em-identify-hardware$adapter

\ function em_identify_hardware
: em-identify-hardware
 em-identify-hardware$adapter l!
 \ saved parameters
 em-identify-hardware$adapter l@ 4 2 pci-read-config FFFF and dup em-identify-hardware$adapter l@ adapter.hw em-hw.pci-cmd-word w! drop
 em-identify-hardware$adapter l@ adapter.hw em-hw.pci-cmd-word w@ FFFF and 4 and dup 0<> if drop em-identify-hardware$adapter l@ adapter.hw em-hw.pci-cmd-word w@ FFFF and 2 and then 0<> invert 1 and if
 " em: Memory Access and/or Bus Master bits were not set!" type
 cr
 em-identify-hardware$adapter l@ adapter.hw em-hw.pci-cmd-word dup w@ 6 or tuck swap w! drop
 em-identify-hardware$adapter l@ 4 em-identify-hardware$adapter l@ adapter.hw em-hw.pci-cmd-word w@ FFFF and 2 pci-write-config then
 em-identify-hardware$adapter l@ pci-get-vendor FFFF and dup em-identify-hardware$adapter l@ adapter.hw em-hw.vendor-id w! drop
 em-identify-hardware$adapter l@ pci-get-device FFFF and dup em-identify-hardware$adapter l@ adapter.hw em-hw.device-id w! drop
 em-identify-hardware$adapter l@ 8 1 pci-read-config FF and dup em-identify-hardware$adapter l@ adapter.hw em-hw.revision-id c! drop
 em-identify-hardware$adapter l@ 2C 2 pci-read-config FFFF and dup em-identify-hardware$adapter l@ adapter.hw em-hw.subsystem-vendor-id w! drop
 em-identify-hardware$adapter l@ 2E 2 pci-read-config FFFF and dup em-identify-hardware$adapter l@ adapter.hw em-hw.subsystem-id w! drop
 em-identify-hardware$adapter l@ adapter.hw em-hw.device-id w@ FFFF and case 1008 of em_82544 dup em-identify-hardware$adapter l@ adapter.hw em-hw.mac-type l! drop
 endof
 dup of endof endcase
 ; \ end em_identify_hardware
variable em-set-promisc$adapter
variable em-set-promisc$flag
variable em-set-promisc$reg-rctl

\ function em_set_promisc
: em-set-promisc
 em-set-promisc$flag l!
 em-set-promisc$adapter l!
 \ saved parameters
 em-set-promisc$adapter l@ adapter.hw em-hw.regs l@ 100 + rl@ dup em-set-promisc$reg-rctl l! drop
 em-set-promisc$flag l@ if
 em-set-promisc$reg-rctl dup l@ 18 or tuck swap l! drop else
 em-set-promisc$reg-rctl dup l@ -19 and tuck swap l! drop then
 em-set-promisc$adapter l@ adapter.hw 100 em-set-promisc$reg-rctl l@ em-write-reg
 ; \ end em_set_promisc

struct \ $fstr
   4 field $fstr.str
   4 field $fstr.len
 constant $fstr.$size \ end struct
variable em-hardware-init$adapter
8 buffer: em-hardware-init$str
18 buffer: em-hardware-init$mta

\ function em_hardware_init
: em-hardware-init
 em-hardware-init$adapter l!
 \ saved parameters
 em-hardware-init$adapter l@ adapter.hw em-reset-hw
 em-hardware-init$adapter l@ adapter.hw em-validate-eeprom-checksum 0 < 1 and if
 " em: The EEPROM Checksum Is Not Valid" type
 cr
 -1 exit then
 em-hardware-init$adapter l@ adapter.hw em-read-mac-addr 0 < 1 and if
 " em: EEPROM read error while reading mac address" type
 cr
 -1 exit then
 em-hardware-init$adapter l@ adapter.hw em-hardware-init$adapter l@ adapter.part-num em-read-part-num 0 < 1 and if
 " em: EEPROM read error while reading part number" type
 cr
 -1 exit then
 em-hardware-init$adapter l@ adapter.hw em-hw.perm-mac-addr dup em-hardware-init$str $fstr.str l! drop
 6 dup em-hardware-init$str $fstr.len l! drop
 em-hardware-init$str
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop encode-bytes " local-mac-address" property
 em-hardware-init$adapter l@ adapter.hw em-init-hw 0 < 1 and if
 " em: Hardware Initialization Failed" type
 cr
 -1 exit then
 mac-address em-hardware-init$str
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 em-hardware-init$str $fstr.len l@ 6 = 1 and if
 em-hardware-init$str $fstr.str l@ em-hardware-init$adapter l@ adapter.hw em-hw.mac-addr em-hardware-init$str $fstr.len l@ move
 em-hardware-init$str
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop encode-bytes " mac-address" property then
 em-hardware-init$adapter l@ adapter.hw em-init-rx-addrs
 33 FF and dup em-hardware-init$mta c! drop
 33 FF and dup em-hardware-init$mta 1 + c! drop
 56 FF and dup em-hardware-init$mta 2 + c! drop
 66 FF and dup em-hardware-init$mta 3 + c! drop
 31 FF and dup em-hardware-init$mta 4 + c! drop
 F1 FF and dup em-hardware-init$mta 5 + c! drop
 33 FF and dup em-hardware-init$mta 6 + c! drop
 33 FF and dup em-hardware-init$mta 7 + c! drop
 0 FF and dup em-hardware-init$mta 8 + c! drop
 0 FF and dup em-hardware-init$mta 9 + c! drop
 0 FF and dup em-hardware-init$mta A + c! drop
 1 FF and dup em-hardware-init$mta B + c! drop
 33 FF and dup em-hardware-init$mta C + c! drop
 33 FF and dup em-hardware-init$mta D + c! drop
 FF FF and dup em-hardware-init$mta E + c! drop
 3 FF and dup em-hardware-init$mta F + c! drop
 57 FF and dup em-hardware-init$mta 10 + c! drop
 C FF and dup em-hardware-init$mta 11 + c! drop
 1 FF and dup em-hardware-init$mta 12 + c! drop
 0 FF and dup em-hardware-init$mta 13 + c! drop
 5E FF and dup em-hardware-init$mta 14 + c! drop
 0 FF and dup em-hardware-init$mta 15 + c! drop
 0 FF and dup em-hardware-init$mta 16 + c! drop
 1 FF and dup em-hardware-init$mta 17 + c! drop
 em-hardware-init$adapter l@ adapter.hw em-hardware-init$mta 4 0 em-mc-addr-list-update
 em-hardware-init$adapter l@ em-hardware-init$adapter l@ adapter.hw em-hw.promiscuous c@ FF and em-set-promisc
 em-hardware-init$adapter l@ adapter.hw em-check-for-link drop
 em-hardware-init$adapter l@ adapter.hw em-hw.regs l@ 8 + rl@ 2 and if
 1 FF and dup em-hardware-init$adapter l@ adapter.link-active c! drop else
 0 FF and dup em-hardware-init$adapter l@ adapter.link-active c! drop then
 em-hardware-init$adapter l@ adapter.link-active c@ if
 em-hardware-init$adapter l@ adapter.hw em-hardware-init$adapter l@ adapter.link-speed em-hardware-init$adapter l@ adapter.link-duplex em-get-speed-and-duplex else
 0 FFFF and dup em-hardware-init$adapter l@ adapter.link-speed w! drop
 0 FFFF and dup em-hardware-init$adapter l@ adapter.link-duplex w! drop then
 0 exit
 ; \ end em_hardware_init
variable em-update-stats-counters$adapter

\ function em_update_stats_counters
: em-update-stats-counters
 em-update-stats-counters$adapter l!
 \ saved parameters
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.crcerrs dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4000 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.symerrs dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4008 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.mpc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4010 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.scc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4014 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.ecol dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4018 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.mcc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 401C + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.latecol dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4020 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.colc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4028 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.dc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4030 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.sec dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4038 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.rlec dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4040 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.xonrxc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4048 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.xontxc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 404C + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.xoffrxc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4050 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.xofftxc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4054 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.fcruc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4058 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.prc64 dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 405C + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.prc127 dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4060 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.prc255 dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4064 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.prc511 dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4068 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.prc1023 dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 406C + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.prc1522 dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4070 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.gprc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4074 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.bprc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4078 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.mprc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 407C + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.gptc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4080 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.gorcl dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4088 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.gorch dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 408C + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.gotcl dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4090 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.gotch dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4094 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.rnbc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40A0 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.ruc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40A4 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.rfc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40A8 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.roc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40AC + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.rjc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40B0 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.torl dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40C0 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.torh dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40C4 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.totl dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40C8 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.toth dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40CC + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.tpr dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40D0 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.tpt dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40D4 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.ptc64 dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40D8 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.ptc127 dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40DC + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.ptc255 dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40E0 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.ptc511 dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40E4 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.ptc1023 dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40E8 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.ptc1522 dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40EC + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.mptc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40F0 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.bptc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40F4 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.hw em-hw.mac-type l@ em_82543 >= 1 and if
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.algnerrc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4004 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.rxerrc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 400C + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.tncrs dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 4034 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.cexterr dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 403C + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.tsctc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40F8 + rl@ + tuck swap l! drop
 em-update-stats-counters$adapter l@ adapter.stats em-hw-stats.tsctfc dup l@ em-update-stats-counters$adapter l@ adapter.hw em-hw.regs l@ 40FC + rl@ + tuck swap l! drop then
 ; \ end em_update_stats_counters
0 constant OFFLOAD_NONE \ enum
variable em-setup-transmit-structures$adapter

\ function em_setup_transmit_structures
: em-setup-transmit-structures
 em-setup-transmit-structures$adapter l!
 \ saved parameters
 em-setup-transmit-structures$adapter l@ adapter.tx-desc-base l@ dup em-setup-transmit-structures$adapter l@ adapter.first-tx-desc l! drop
 em-setup-transmit-structures$adapter l@ adapter.first-tx-desc l@ em-setup-transmit-structures$adapter l@ adapter.num-tx-desc w@ FFFF and 1 - 10 * + dup em-setup-transmit-structures$adapter l@ adapter.last-tx-desc l! drop
 em-setup-transmit-structures$adapter l@ adapter.first-tx-desc l@ dup em-setup-transmit-structures$adapter l@ adapter.next-avail-tx-desc l! drop
 em-setup-transmit-structures$adapter l@ adapter.first-tx-desc l@ dup em-setup-transmit-structures$adapter l@ adapter.oldest-used-tx-desc l! drop
 em-setup-transmit-structures$adapter l@ adapter.num-tx-desc w@ dup em-setup-transmit-structures$adapter l@ adapter.num-tx-desc-avail rw! drop
 OFFLOAD_NONE dup em-setup-transmit-structures$adapter l@ adapter.active-checksum-context l! drop
 0 exit
 ; \ end em_setup_transmit_structures
1 constant em_82542_rev2_1 \ enum
variable em-initialize-transmit-unit$adapter
variable em-initialize-transmit-unit$reg-tipg
variable em-initialize-transmit-unit$reg-tctl

\ function em_initialize_transmit_unit
: em-initialize-transmit-unit
 em-initialize-transmit-unit$adapter l!
 \ saved parameters
 0 em-initialize-transmit-unit$reg-tipg l!
 em-initialize-transmit-unit$adapter l@ adapter.hw 3800 em-initialize-transmit-unit$adapter l@ adapter.tx-desc-base-pci l@ em-write-reg
 em-initialize-transmit-unit$adapter l@ adapter.hw 3804 0 em-write-reg
 em-initialize-transmit-unit$adapter l@ adapter.hw 3808 em-initialize-transmit-unit$adapter l@ adapter.num-tx-desc w@ FFFF and 10 * em-write-reg
 em-initialize-transmit-unit$adapter l@ adapter.hw 3810 0 em-write-reg
 em-initialize-transmit-unit$adapter l@ adapter.hw 3818 0 em-write-reg
 em-initialize-transmit-unit$adapter l@ adapter.hw em-hw.mac-type l@ case em_82543 of em-initialize-transmit-unit$adapter l@ adapter.hw em-hw.media-type l@ em_media_type_fiber = 1 and if
 9 dup em-initialize-transmit-unit$reg-tipg l! drop else
 8 dup em-initialize-transmit-unit$reg-tipg l! drop then
 em-initialize-transmit-unit$reg-tipg dup l@ 2000 or tuck swap l! drop
 em-initialize-transmit-unit$reg-tipg dup l@ 600000 or tuck swap l! drop
 endof
 em_82544 of em-initialize-transmit-unit$adapter l@ adapter.hw em-hw.media-type l@ em_media_type_fiber = 1 and if
 9 dup em-initialize-transmit-unit$reg-tipg l! drop else
 8 dup em-initialize-transmit-unit$reg-tipg l! drop then
 em-initialize-transmit-unit$reg-tipg dup l@ 2000 or tuck swap l! drop
 em-initialize-transmit-unit$reg-tipg dup l@ 600000 or tuck swap l! drop
 endof
 em_82540 of em-initialize-transmit-unit$adapter l@ adapter.hw em-hw.media-type l@ em_media_type_fiber = 1 and if
 9 dup em-initialize-transmit-unit$reg-tipg l! drop else
 8 dup em-initialize-transmit-unit$reg-tipg l! drop then
 em-initialize-transmit-unit$reg-tipg dup l@ 2000 or tuck swap l! drop
 em-initialize-transmit-unit$reg-tipg dup l@ 600000 or tuck swap l! drop
 endof
 em_82545 of em-initialize-transmit-unit$adapter l@ adapter.hw em-hw.media-type l@ em_media_type_fiber = 1 and if
 9 dup em-initialize-transmit-unit$reg-tipg l! drop else
 8 dup em-initialize-transmit-unit$reg-tipg l! drop then
 em-initialize-transmit-unit$reg-tipg dup l@ 2000 or tuck swap l! drop
 em-initialize-transmit-unit$reg-tipg dup l@ 600000 or tuck swap l! drop
 endof
 em_82546 of em-initialize-transmit-unit$adapter l@ adapter.hw em-hw.media-type l@ em_media_type_fiber = 1 and if
 9 dup em-initialize-transmit-unit$reg-tipg l! drop else
 8 dup em-initialize-transmit-unit$reg-tipg l! drop then
 em-initialize-transmit-unit$reg-tipg dup l@ 2000 or tuck swap l! drop
 em-initialize-transmit-unit$reg-tipg dup l@ 600000 or tuck swap l! drop
 endof
 em_82542_rev2_0 of A dup em-initialize-transmit-unit$reg-tipg l! drop
 em-initialize-transmit-unit$reg-tipg dup l@ 800 or tuck swap l! drop
 em-initialize-transmit-unit$reg-tipg dup l@ A00000 or tuck swap l! drop
 endof
 em_82542_rev2_1 of A dup em-initialize-transmit-unit$reg-tipg l! drop
 em-initialize-transmit-unit$reg-tipg dup l@ 800 or tuck swap l! drop
 em-initialize-transmit-unit$reg-tipg dup l@ A00000 or tuck swap l! drop
 endof
 dup of " em: Invalid mac type detected" type
 cr
 endof endcase
 em-initialize-transmit-unit$adapter l@ adapter.hw 410 em-initialize-transmit-unit$reg-tipg l@ em-write-reg
 em-initialize-transmit-unit$adapter l@ adapter.hw 3820 em-initialize-transmit-unit$adapter l@ adapter.tx-int-delay l@ em-write-reg
 10A dup em-initialize-transmit-unit$reg-tctl l! drop
 em-initialize-transmit-unit$adapter l@ adapter.link-duplex w@ FFFF and 1 = 1 and if
 em-initialize-transmit-unit$reg-tctl dup l@ 40000 or tuck swap l! drop else
 em-initialize-transmit-unit$reg-tctl dup l@ 40000 or tuck swap l! drop then
 em-initialize-transmit-unit$adapter l@ adapter.hw 400 em-initialize-transmit-unit$reg-tctl l@ em-write-reg
 2000000 dup em-initialize-transmit-unit$adapter l@ adapter.txd-cmd l! drop
 em-initialize-transmit-unit$adapter l@ adapter.tx-int-delay l@ 0 > 1 and if
 em-initialize-transmit-unit$adapter l@ adapter.txd-cmd dup l@ -80000000 or tuck swap l! drop then
 em-initialize-transmit-unit$adapter l@ adapter.hw em-hw.report-tx-early c@ FF and 1 = 1 and if
 em-initialize-transmit-unit$adapter l@ adapter.txd-cmd dup l@ 8000000 or tuck swap l! drop else
 em-initialize-transmit-unit$adapter l@ adapter.txd-cmd dup l@ 10000000 or tuck swap l! drop then
 ; \ end em_initialize_transmit_unit
variable em-setup-receive-structures$adapter

\ function em_setup_receive_structures
: em-setup-receive-structures
 em-setup-receive-structures$adapter l!
 \ saved parameters
 em-setup-receive-structures$adapter l@ adapter.rx-desc-base l@ dup em-setup-receive-structures$adapter l@ adapter.first-rx-desc l! drop
 em-setup-receive-structures$adapter l@ adapter.first-rx-desc l@ em-setup-receive-structures$adapter l@ adapter.num-rx-desc w@ FFFF and 1 - 10 * + dup em-setup-receive-structures$adapter l@ adapter.last-rx-desc l! drop
 em-setup-receive-structures$adapter l@ adapter.first-rx-desc l@ dup em-setup-receive-structures$adapter l@ adapter.next-rx-desc-to-check l! drop
 0 exit
 ; \ end em_setup_receive_structures
variable em-initialize-receive-unit$adapter
variable em-initialize-receive-unit$reg-rctl
variable em-initialize-receive-unit$reg-rxcsum

\ function em_initialize_receive_unit
: em-initialize-receive-unit
 em-initialize-receive-unit$adapter l!
 \ saved parameters
 em-initialize-receive-unit$adapter l@ adapter.hw 100 0 em-write-reg
 em-initialize-receive-unit$adapter l@ adapter.hw 2820 em-initialize-receive-unit$adapter l@ adapter.rx-int-delay l@ -80000000 or em-write-reg
 em-initialize-receive-unit$adapter l@ adapter.hw 2800 em-initialize-receive-unit$adapter l@ adapter.rx-desc-base-pci l@ em-write-reg
 em-initialize-receive-unit$adapter l@ adapter.hw 2804 0 em-write-reg
 em-initialize-receive-unit$adapter l@ adapter.hw 2808 em-initialize-receive-unit$adapter l@ adapter.num-rx-desc w@ FFFF and 10 * em-write-reg
 em-initialize-receive-unit$adapter l@ adapter.hw 2810 0 em-write-reg
 em-initialize-receive-unit$adapter l@ adapter.hw 2818 em-initialize-receive-unit$adapter l@ adapter.last-rx-desc l@ em-initialize-receive-unit$adapter l@ adapter.first-rx-desc l@ - 4 rshift em-write-reg
 8002 em-initialize-receive-unit$adapter l@ adapter.hw em-hw.mc-filter-type l@ C lshift or dup em-initialize-receive-unit$reg-rctl l! drop
 em-initialize-receive-unit$adapter l@ adapter.hw em-hw.tbi-compatibility-on c@ FF and -1 = 1 and if
 em-initialize-receive-unit$reg-rctl dup l@ 4 or tuck swap l! drop then
 em-initialize-receive-unit$adapter l@ adapter.rx-buffer-len l@ case 800 of em-initialize-receive-unit$reg-rctl dup l@ 20 or tuck swap l! drop
 endof
 1000 of em-initialize-receive-unit$reg-rctl dup l@ 2030020 or tuck swap l! drop
 endof
 2000 of em-initialize-receive-unit$reg-rctl dup l@ 2020020 or tuck swap l! drop
 endof
 4000 of em-initialize-receive-unit$reg-rctl dup l@ 2010020 or tuck swap l! drop
 endof
 dup of em-initialize-receive-unit$reg-rctl dup l@ 0 or tuck swap l! drop
 endof endcase
 em-initialize-receive-unit$adapter l@ adapter.hw em-hw.mac-type l@ em_82543 >= 1 and if
 em-initialize-receive-unit$adapter l@ adapter.hw em-hw.regs l@ 5000 + rl@ dup em-initialize-receive-unit$reg-rxcsum l! drop
 em-initialize-receive-unit$reg-rxcsum dup l@ -701 and tuck swap l! drop
 em-initialize-receive-unit$adapter l@ adapter.hw 5000 em-initialize-receive-unit$reg-rxcsum l@ em-write-reg then
 em-initialize-receive-unit$adapter l@ adapter.hw 100 em-initialize-receive-unit$reg-rctl l@ em-write-reg
 ; \ end em_initialize_receive_unit
variable em-enable-vlans$adapter
variable em-enable-vlans$ctrl

\ function em_enable_vlans
: em-enable-vlans
 em-enable-vlans$adapter l!
 \ saved parameters
 em-enable-vlans$adapter l@ adapter.hw 38 8100 em-write-reg
 em-enable-vlans$adapter l@ adapter.hw em-hw.regs l@ rl@ dup em-enable-vlans$ctrl l! drop
 em-enable-vlans$ctrl dup l@ 40000000 or tuck swap l! drop
 em-enable-vlans$adapter l@ adapter.hw 0 em-enable-vlans$ctrl l@ em-write-reg
 ; \ end em_enable_vlans
variable em-open$adapter

\ function em_open
: em-open
 em-open$adapter l!
 \ saved parameters
 em-open$adapter l@ em-identify-hardware
 1 FF and dup em-open$adapter l@ adapter.hw em-hw.wait-autoneg-complete c! drop
 800 dup em-open$adapter l@ adapter.rx-buffer-len l! drop
 1 FF and dup em-open$adapter l@ adapter.rx-checksum c! drop
 8000 FFFF and dup em-open$adapter l@ adapter.hw em-hw.fc-high-water w! drop
 4000 FFFF and dup em-open$adapter l@ adapter.hw em-hw.fc-low-water w! drop
 100 FFFF and dup em-open$adapter l@ adapter.hw em-hw.fc-pause-time w! drop
 -1 FF and dup em-open$adapter l@ adapter.hw em-hw.fc-send-xon c! drop
 em_fc_full dup em-open$adapter l@ adapter.hw em-hw.fc l! drop
 5EE dup em-open$adapter l@ adapter.hw em-hw.max-frame-size l! drop
 3C dup em-open$adapter l@ adapter.hw em-hw.min-frame-size l! drop
 0 if
 2 FF and dup em-open$adapter l@ adapter.hw em-hw.report-tx-early c! drop else
 em-open$adapter l@ adapter.hw em-hw.mac-type l@ em_82543 < 1 and if
 0 FF and dup em-open$adapter l@ adapter.hw em-hw.report-tx-early c! drop else
 1 FF and dup em-open$adapter l@ adapter.hw em-hw.report-tx-early c! drop then then
 em-open$adapter l@ em-sw-init 0<> invert 1 and if
 " em: Allocation of PCI resources failed" type
 cr
 -1 exit then
 em-open$adapter l@ em-hardware-init if
 " em: Unable to initialize the hardware" type
 cr
 -1 exit then
 em-open$adapter l@ em-enable-vlans
 em-open$adapter l@ em-setup-transmit-structures drop
 em-open$adapter l@ em-initialize-transmit-unit
 em-open$adapter l@ em-setup-receive-structures drop
 em-open$adapter l@ em-initialize-receive-unit
 em-open$adapter l@ adapter.hw em-clear-hw-cntrs
 em-open$adapter l@ em-update-stats-counters
 1 FF and dup em-open$adapter l@ adapter.hw em-hw.get-link-status c! drop
 em-open$adapter l@ adapter.hw em-check-for-link drop
 " Copyright 2002-2003 (c) CodeGen, Inc.  All rights reserved." type
 cr
 " Copyright 2001-2002 (c) Intel Corporation.  All rights reserved." type
 cr
 " Intel Gigabit Ethernet Fcode Driver" type
 cr
 " RAMIX RM674TX version -- Jul 27 2014" type
 cr
 em-open$adapter l@ adapter.link-active c@ FF and 1 = 1 and if
 em-open$adapter l@ adapter.hw em-open$adapter l@ adapter.link-speed em-open$adapter l@ adapter.link-duplex em-get-speed-and-duplex
 " Speed:" type
  base @ d# 10 base !  ( asm )

 em-open$adapter l@ adapter.link-speed w@ FFFF and u. ( asm )

  base ! ( asm )

 " Mbps  Duplex:" type
 em-open$adapter l@ adapter.link-duplex w@ FFFF and 2 = 1 and if " Full" else " Half" then type
 cr else
 " em:  Speed:N/A  Duplex:N/A" type
 cr
 2710 ms then
 0 exit
 ; \ end em_open
variable em-enable-intr$adapter

\ function em_enable_intr
: em-enable-intr
 em-enable-intr$adapter l!
 \ saved parameters
 em-enable-intr$adapter l@ adapter.hw D0 9D em-write-reg
 ; \ end em_enable_intr
variable em-disable-intr$adapter

\ function em_disable_intr
: em-disable-intr
 em-disable-intr$adapter l!
 \ saved parameters
 em-disable-intr$adapter l@ adapter.hw D8 -9 em-write-reg
 ; \ end em_disable_intr
variable em-stop$adapter

\ function em_stop
: em-stop
 em-stop$adapter l!
 \ saved parameters
 em-stop$adapter l@ em-disable-intr
 em-stop$adapter l@ adapter.hw em-reset-hw
 ; \ end em_stop
variable em-close$adapter

\ function em_close
: em-close
 em-close$adapter l!
 \ saved parameters
 em-close$adapter l@ em-stop
 em-close$adapter l@ adapter.hw em-phy-hw-reset
 ; \ end em_close
variable em-shutdown$adapter

\ function em_shutdown
: em-shutdown
 em-shutdown$adapter l!
 \ saved parameters
 em-shutdown$adapter l@ em-stop
 0 exit
 ; \ end em_shutdown
variable em-process-receive-packet$adapter
variable em-process-receive-packet$buf
variable em-process-receive-packet$blen
variable em-process-receive-packet$accept-frame
variable em-process-receive-packet$len
variable em-process-receive-packet$icr
variable em-process-receive-packet$current-desc

\ function em_process_receive_packet
: em-process-receive-packet
 em-process-receive-packet$blen l!
 em-process-receive-packet$buf l!
 em-process-receive-packet$adapter l!
 \ saved parameters
 -2 FFFF and em-process-receive-packet$len w!
 0 FF and em-process-receive-packet$accept-frame c!
 em-process-receive-packet$adapter l@ adapter.hw em-hw.regs l@ C0 + rl@ FFFF and dup em-process-receive-packet$icr w! drop
 em-process-receive-packet$adapter l@ adapter.dma-mem l@ em-process-receive-packet$adapter l@ adapter.map-mem l@ em-process-receive-packet$adapter l@ adapter.mem-len l@  " dma-sync" $call-parent ( asm )

 em-process-receive-packet$adapter l@ adapter.next-rx-desc-to-check l@ dup em-process-receive-packet$current-desc l! drop
 em-process-receive-packet$current-desc l@ em-rx-desc.status rb@ FF and 1 and 0<> invert 1 and if
 -2 exit then
 em-process-receive-packet$current-desc l@ em-rx-desc.status rb@ FF and 2 and if
 em-process-receive-packet$current-desc l@ em-rx-desc.length rw@ FFFF and 4 - FFFF and dup em-process-receive-packet$len w! drop
 em-process-receive-packet$current-desc l@ em-rx-desc.errors rb@ FF and 97 and if
 " Proc_rx_ints: errors " type
 em-process-receive-packet$current-desc l@ em-rx-desc.errors rb@ FF and u. ( asm )

 cr
 -2 exit then
 em-process-receive-packet$len w@ FFFF and em-process-receive-packet$adapter l@ adapter.hw em-hw.max-frame-size l@ <= 1 and dup 0<> if drop em-process-receive-packet$len w@ FFFF and em-process-receive-packet$adapter l@ adapter.hw em-hw.min-frame-size l@ >= 1 and then dup 0<> if drop em-process-receive-packet$current-desc l@ em-rx-desc.errors rb@ FF and 0 = 1 and dup 0= if drop em-process-receive-packet$current-desc l@ em-rx-desc.errors rb@ FF and 1 = 1 and then then if
 -1 FF and dup em-process-receive-packet$accept-frame c! drop
 em-process-receive-packet$len w@ FFFF and em-process-receive-packet$blen l@ > 1 and if
 em-process-receive-packet$blen l@ FFFF and dup em-process-receive-packet$len w! drop then
 em-process-receive-packet$adapter l@ adapter.rx-bufs l@ 800 em-process-receive-packet$current-desc l@ em-process-receive-packet$adapter l@ adapter.first-rx-desc l@ - 10 / * + em-process-receive-packet$buf l@ em-process-receive-packet$len w@ FFFF and move else
 " em: Bad packet length: len " type
 em-process-receive-packet$len w@ FFFF and u. ( asm )

 "  errors " type
 em-process-receive-packet$current-desc l@ em-rx-desc.errors rb@ FF and u. ( asm )

 cr then then
 0 FF and dup em-process-receive-packet$current-desc l@ em-rx-desc.status rb! drop
 0 FFFF and dup em-process-receive-packet$current-desc l@ em-rx-desc.length rw! drop
 0 FFFF and dup em-process-receive-packet$current-desc l@ em-rx-desc.csum rw! drop
 0 FF and dup em-process-receive-packet$current-desc l@ em-rx-desc.errors rb! drop
 0 FFFF and dup em-process-receive-packet$current-desc l@ em-rx-desc.special rw! drop
 em-process-receive-packet$current-desc l@ em-process-receive-packet$adapter l@ adapter.last-rx-desc l@ = 1 and if
 em-process-receive-packet$adapter l@ adapter.first-rx-desc l@ dup em-process-receive-packet$adapter l@ adapter.next-rx-desc-to-check l! drop else
 em-process-receive-packet$adapter l@ adapter.next-rx-desc-to-check dup l@ tuck 10 + swap l! drop then
 em-process-receive-packet$adapter l@ adapter.dma-mem l@ em-process-receive-packet$adapter l@ adapter.map-mem l@ em-process-receive-packet$adapter l@ adapter.mem-len l@  " dma-sync" $call-parent ( asm )

 em-process-receive-packet$adapter l@ adapter.hw 2818 em-process-receive-packet$current-desc l@ em-process-receive-packet$adapter l@ adapter.first-rx-desc l@ - 10 / em-write-reg
 em-process-receive-packet$len w@ FFFF and exit
 ; \ end em_process_receive_packet
variable em-print-hw-stats$adapter

\ function em_print_hw_stats
: em-print-hw-stats
 em-print-hw-stats$adapter l!
 \ saved parameters
 " em: Tx Descriptors not Avail = " type
 em-print-hw-stats$adapter l@ adapter.no-tx-desc-avail l@ u. ( asm )

 cr
 " em: Tx Buffer not avail1 = " type
 em-print-hw-stats$adapter l@ adapter.no-tx-buffer-avail1 l@ u. ( asm )

 cr
 " em: Tx Buffer not avail2 = " type
 em-print-hw-stats$adapter l@ adapter.no-tx-buffer-avail2 l@ u. ( asm )

 cr
 " em: Std Mbuf Failed = " type
 em-print-hw-stats$adapter l@ adapter.mbuf-alloc-failed l@ u. ( asm )

 cr
 " em: Std Cluster Failed = " type
 em-print-hw-stats$adapter l@ adapter.mbuf-cluster-failed l@ u. ( asm )

 cr
 " em: Symbol errors = " type
 em-print-hw-stats$adapter l@ adapter.stats em-hw-stats.symerrs l@ u. ( asm )

 " em: Sequence errors = " type
 em-print-hw-stats$adapter l@ adapter.stats em-hw-stats.sec l@ u. ( asm )

 " em: Defer count = " type
 em-print-hw-stats$adapter l@ adapter.stats em-hw-stats.dc l@ u. ( asm )

 " em: Missed Packets = " type
 em-print-hw-stats$adapter l@ adapter.stats em-hw-stats.mpc l@ u. ( asm )

 cr
 " em: Receive No Buffers = " type
 em-print-hw-stats$adapter l@ adapter.stats em-hw-stats.rnbc l@ u. ( asm )

 cr
 " em: Receive length errors = " type
 em-print-hw-stats$adapter l@ adapter.stats em-hw-stats.rlec l@ u. ( asm )

 cr
 " em: Receive errors = " type
 em-print-hw-stats$adapter l@ adapter.stats em-hw-stats.rxerrc l@ u. ( asm )

 cr
 " em: Crc errors = " type
 em-print-hw-stats$adapter l@ adapter.stats em-hw-stats.crcerrs l@ u. ( asm )

 cr
 " em: Alignment errors = " type
 em-print-hw-stats$adapter l@ adapter.stats em-hw-stats.algnerrc l@ u. ( asm )

 cr
 " em: Carrier extension errors = " type
 em-print-hw-stats$adapter l@ adapter.stats em-hw-stats.cexterr l@ u. ( asm )

 cr
 " em: Driver dropped packets = " type
 em-print-hw-stats$adapter l@ adapter.dropped-pkts l@ u. ( asm )

 cr
 " em: XON Rcvd = " type
 em-print-hw-stats$adapter l@ adapter.stats em-hw-stats.xonrxc l@ u. ( asm )

 cr
 " em: XON Xmtd = " type
 em-print-hw-stats$adapter l@ adapter.stats em-hw-stats.xontxc l@ u. ( asm )

 cr
 " em: XOFF Rcvd = " type
 em-print-hw-stats$adapter l@ adapter.stats em-hw-stats.xoffrxc l@ u. ( asm )

 cr
 " em: XOFF Xmtd = " type
 em-print-hw-stats$adapter l@ adapter.stats em-hw-stats.xofftxc l@ u. ( asm )

 cr
 " em: Good Packets Rcvd = " type
 em-print-hw-stats$adapter l@ adapter.stats em-hw-stats.gprc l@ u. ( asm )

 cr
 " em: Good Packets Xmtd = " type
 em-print-hw-stats$adapter l@ adapter.stats em-hw-stats.gptc l@ u. ( asm )

 cr
 ; \ end em_print_hw_stats
variable em-clean-transmit-interrupts$adapter

\ function em_clean_transmit_interrupts
: em-clean-transmit-interrupts
 em-clean-transmit-interrupts$adapter l!
 \ saved parameters
 em-clean-transmit-interrupts$adapter l@ dup em-clean-transmit-interrupts$adapter l! drop
 ; \ end em_clean_transmit_interrupts
variable em-process-transmit-packet$adapter
variable em-process-transmit-packet$current-tx-desc
variable em-process-transmit-packet$icr
variable em-process-transmit-packet$done
variable em-process-transmit-packet$timeout

\ function em_process_transmit_packet
: em-process-transmit-packet
 em-process-transmit-packet$adapter l!
 \ saved parameters
 0 em-process-transmit-packet$done l!
 64 em-process-transmit-packet$timeout l!

 begin em-process-transmit-packet$done l@ 0<> invert 1 and dup 0<> if drop em-process-transmit-packet$timeout l@ 0 > 1 and then while
 em-process-transmit-packet$adapter l@ adapter.hw em-hw.regs l@ C0 + rl@ FFFF and dup em-process-transmit-packet$icr w! drop
 em-process-transmit-packet$adapter l@ adapter.dma-mem l@ em-process-transmit-packet$adapter l@ adapter.map-mem l@ em-process-transmit-packet$adapter l@ adapter.mem-len l@  " dma-sync" $call-parent ( asm )

 em-process-transmit-packet$adapter l@ adapter.oldest-used-tx-desc l@ dup em-process-transmit-packet$current-tx-desc l! drop
 em-process-transmit-packet$current-tx-desc l@ em-process-transmit-packet$adapter l@ adapter.last-tx-desc l@ > 1 and if
 em-process-transmit-packet$current-tx-desc dup l@ em-process-transmit-packet$adapter l@ adapter.num-tx-desc w@ 10 * - tuck swap l! drop then
 em-process-transmit-packet$current-tx-desc l@ em-tx-desc.upper !unnamed-110.status rb@ FF and 1 and if
 0 dup em-process-transmit-packet$current-tx-desc l@ em-tx-desc.lower rl! drop
 0 dup em-process-transmit-packet$current-tx-desc l@ em-tx-desc.upper rl! drop
 em-process-transmit-packet$current-tx-desc l@ em-process-transmit-packet$adapter l@ adapter.last-tx-desc l@ = 1 and if
 em-process-transmit-packet$adapter l@ adapter.first-tx-desc l@ dup em-process-transmit-packet$adapter l@ adapter.oldest-used-tx-desc l! drop else
 em-process-transmit-packet$adapter l@ adapter.oldest-used-tx-desc dup l@ tuck 10 + swap l! drop then
 em-process-transmit-packet$adapter l@ adapter.num-tx-desc-avail rw@ FFFF and 1 + FFFF and dup em-process-transmit-packet$adapter l@ adapter.num-tx-desc-avail rw! drop
 -1 dup em-process-transmit-packet$done l! drop else
 A ms
 em-process-transmit-packet$timeout dup l@ A - tuck swap l! drop then repeat
 em-process-transmit-packet$done l@ 0<> invert 1 and if
 em-process-transmit-packet$adapter l@ adapter.first-tx-desc l@ dup em-process-transmit-packet$current-tx-desc l! drop

 begin em-process-transmit-packet$current-tx-desc l@ em-process-transmit-packet$adapter l@ adapter.last-tx-desc l@ <= 1 and while
 em-debug-level l@ 2 >= 1 and if
 " TxDesc " type
 em-process-transmit-packet$current-tx-desc l@ em-process-transmit-packet$adapter l@ adapter.first-tx-desc l@ - 10 / u. ( asm )

 em-process-transmit-packet$current-tx-desc l@ em-tx-desc.upper !unnamed-110.status rb@ FF and u. ( asm )

 em-process-transmit-packet$current-tx-desc l@ em-tx-desc.buffer-addr uint64.hi rl@ u. ( asm )

 em-process-transmit-packet$current-tx-desc l@ em-tx-desc.buffer-addr uint64.lo rl@ u. ( asm )

 em-process-transmit-packet$current-tx-desc l@ em-tx-desc.lower rl@ u. ( asm )

 em-process-transmit-packet$current-tx-desc l@ em-tx-desc.upper rl@ u. ( asm )

 cr then
 em-process-transmit-packet$current-tx-desc dup l@ tuck 10 + swap l! drop repeat then
 em-process-transmit-packet$done l@ exit
 ; \ end em_process_transmit_packet
variable em-send-buffer$adapter
variable em-send-buffer$buf
variable em-send-buffer$len
variable em-send-buffer$txbuf
variable em-send-buffer$current-tx-desc

\ function em_send_buffer
: em-send-buffer
 em-send-buffer$len l!
 em-send-buffer$buf l!
 em-send-buffer$adapter l!
 \ saved parameters
 em-send-buffer$adapter l@ adapter.num-tx-desc-avail rw@ FFFF and 1 <= 1 and if
 0 exit then
 em-send-buffer$adapter l@ adapter.next-avail-tx-desc l@ dup em-send-buffer$current-tx-desc l! drop
 em-send-buffer$adapter l@ adapter.tx-bufs l@ 800 em-send-buffer$current-tx-desc l@ em-send-buffer$adapter l@ adapter.first-tx-desc l@ - 10 / * + dup em-send-buffer$txbuf l! drop
 em-send-buffer$buf l@ em-send-buffer$txbuf l@ em-send-buffer$len l@ move
 em-send-buffer$len l@ dup em-send-buffer$current-tx-desc l@ em-tx-desc.lower rl! drop
 0 dup em-send-buffer$current-tx-desc l@ em-tx-desc.upper rl! drop
 em-send-buffer$current-tx-desc l@ em-send-buffer$adapter l@ adapter.last-tx-desc l@ = 1 and if
 em-send-buffer$adapter l@ adapter.first-tx-desc l@ dup em-send-buffer$adapter l@ adapter.next-avail-tx-desc l! drop else
 em-send-buffer$adapter l@ adapter.next-avail-tx-desc dup l@ tuck 10 + swap l! drop then
 em-send-buffer$adapter l@ adapter.num-tx-desc-avail rw@ FFFF and 1 - FFFF and dup em-send-buffer$adapter l@ adapter.num-tx-desc-avail rw! drop
 em-send-buffer$adapter l@ adapter.tx-int-delay l@ if
 em-send-buffer$current-tx-desc l@ em-tx-desc.lower dup rl@ -7D000000 or tuck swap rl! drop else
 em-send-buffer$current-tx-desc l@ em-tx-desc.lower dup rl@ 3000000 or tuck swap rl! drop then
 em-send-buffer$current-tx-desc l@ em-tx-desc.lower dup rl@ 8000000 or tuck swap rl! drop
 em-send-buffer$adapter l@ adapter.dma-mem l@ em-send-buffer$adapter l@ adapter.map-mem l@ em-send-buffer$adapter l@ adapter.mem-len l@  " dma-sync" $call-parent ( asm )

 em-send-buffer$adapter l@ adapter.hw 3818 em-send-buffer$adapter l@ adapter.next-avail-tx-desc l@ em-send-buffer$adapter l@ adapter.first-tx-desc l@ - 10 / em-write-reg
 em-send-buffer$adapter l@ em-process-transmit-packet exit
 ; \ end em_send_buffer
variable g-mmio 0 g-mmio l!
variable g-mmiosize 0 g-mmiosize l!
variable g-obptftp 0 g-obptftp l!
8 buffer: fstreq$s1
8 buffer: fstreq$s2
variable fstreq$ret

\ function fstreq
: fstreq
 fstreq$s2
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 fstreq$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 \ saved parameters
 0 fstreq$ret l!
 fstreq$s1 $fstr.len l@ fstreq$s2 $fstr.len l@ = 1 and if
 fstreq$s1 $fstr.str l@ fstreq$s2 $fstr.str l@ fstreq$s1 $fstr.len l@ comp 0 = 1 and dup fstreq$ret l! drop then
 fstreq$ret l@ exit
 ; \ end fstreq
0 constant em_10_half \ enum

struct \ two_strs
   8 field two-strs.right
   8 field two-strs.left
 constant two-strs.$size \ end struct

struct \ font_info
   4 field font-info.addr
   4 field font-info.width
   4 field font-info.height
   4 field font-info.advance
   4 field font-info.min
   4 field font-info.numglyphs
 constant font-info.$size \ end struct

struct \ prop_err
   8 field prop-err.prop
   4 field prop-err.err
 constant prop-err.$size \ end struct

struct \ prop_int
   8 field prop-int.prop
   4 field prop-int.val
 constant prop-int.$size \ end struct
variable open$i
variable open$physhi
variable open$physmid
variable open$adapter
variable open$sizehi
variable open$sizelo
variable open$addr
10 buffer: open$args2
variable open$diag
variable open$speed
variable open$cfg
18 buffer: open$fi
c buffer: open$pe
c buffer: open$pi
variable open$physlo
variable open$fullduplex
variable open$promiscuous
8 buffer: open$args
variable open$nextarg
8 buffer: open$arg

external
\ function open
: open
 diagnostic-mode? ( asm )
 open$diag l!
 my-space -100 and dup open$addr l! drop
 0 dup open$promiscuous l! drop
 -1 dup open$fullduplex l! drop
 0 dup open$speed l! drop
 g-adapter dup open$adapter l! drop
 g-adapter 218 0 fill
 " assigned-addresses" get-my-property dup if 0 0 rot then ( asm )
 open$pe
 >r r@ prop-err.err
 l! r@ prop-err.prop

 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop r> drop
 open$pe prop-err.err l@ if
 " cannot find assigned-addresses property" type
 cr
 0 exit then
 open$pe prop-err.prop
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop open$pi prop-int.prop
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop

 begin open$pi prop-int.prop
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop decode-int open$pi
 >r r@ prop-int.val
 l! r@ prop-int.prop

 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop r> drop
 open$pi prop-int.val l@ dup open$physhi l! drop
 open$pi prop-int.prop
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop decode-int open$pi
 >r r@ prop-int.val
 l! r@ prop-int.prop

 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop r> drop
 open$pi prop-int.val l@ dup open$physmid l! drop
 open$pi prop-int.prop
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop decode-int open$pi
 >r r@ prop-int.val
 l! r@ prop-int.prop

 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop r> drop
 open$pi prop-int.val l@ dup open$physlo l! drop
 open$pi prop-int.prop
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop decode-int open$pi
 >r r@ prop-int.val
 l! r@ prop-int.prop

 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop r> drop
 open$pi prop-int.val l@ dup open$sizehi l! drop
 open$pi prop-int.prop
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop decode-int open$pi
 >r r@ prop-int.val
 l! r@ prop-int.prop

 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop r> drop
 open$pi prop-int.val l@ dup open$sizelo l! drop
 open$pi prop-int.prop $fstr.len l@ 0 > 1 and dup 0<> if drop open$physhi l@ 18 >>a 7 and 2 <> 1 and then while repeat
 open$physhi dup l@ 7FFFFFFF and tuck swap l! drop
 0 dup open$physmid l! drop
 0 dup open$physlo l! drop
 open$sizelo l@ dup g-mmiosize l! drop
 open$physlo l@ open$physmid l@ open$physhi l@ g-mmiosize l@  " map-in" $call-parent ( asm )
 dup g-mmio l! drop
 g-mmio l@ 0 = 1 and if
 " em.open: could not map in registers!" type
 cr
 0 exit then
 my-args open$args
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 open$args
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop 2C FF and dup 80 and if -100 or then left-parse-string open$args2
 >r r@ two-strs.left

 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop r@ two-strs.right

 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop r> drop

 begin open$args2 two-strs.left $fstr.len l@ 0 > 1 and while
 -1 open$nextarg l!
 open$args2 two-strs.left
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop open$arg
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 " arg = " type
 open$arg
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop type
 cr
 open$arg
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop " promiscuous" fstreq if
 -1 dup open$promiscuous l! drop else
 open$arg
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop " speed=auto" fstreq if
 0 dup open$speed l! drop else
 open$arg
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop " speed=10" fstreq if
 A dup open$speed l! drop else
 open$arg
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop " speed=100" fstreq if
 64 dup open$speed l! drop else
 open$arg
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop " speed=1000" fstreq if
 3E8 dup open$speed l! drop else
 open$arg
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop " duplex=half" fstreq if
 0 dup open$fullduplex l! drop else
 open$arg
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop " duplex=full" fstreq if
 -1 dup open$fullduplex l! drop else
 0 dup open$nextarg l! drop then then then then then then then
 open$args2 two-strs.right
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop open$args
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 open$nextarg l@ if
 open$args
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop 2C FF and dup 80 and if -100 or then left-parse-string open$args2
 >r r@ two-strs.left

 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop r@ two-strs.right

 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop r> drop else
 0 dup open$args2 two-strs.left $fstr.len l! drop then repeat
 g-mmio l@ dup g-adapter adapter.hw em-hw.regs l! drop
 open$promiscuous l@ FF and dup g-adapter adapter.hw em-hw.promiscuous c! drop
 open$speed l@ 0 = 1 and dup 0= if drop open$speed l@ 3E8 = 1 and then if
 1 FF and dup g-adapter adapter.hw em-hw.autoneg c! drop
 open$speed l@ 3E8 = 1 and if
 20 FFFF and dup g-adapter adapter.hw em-hw.autoneg-advertised w! drop else
 2F FFFF and dup g-adapter adapter.hw em-hw.autoneg-advertised w! drop then else
 0 FF and dup g-adapter adapter.hw em-hw.autoneg c! drop
 0 FFFF and dup g-adapter adapter.hw em-hw.autoneg-advertised w! drop
 open$speed l@ 64 = 1 and if
 open$fullduplex l@ -1 = 1 and if
 em_100_full FF and dup g-adapter adapter.hw em-hw.forced-speed-duplex c! drop else
 em_100_half FF and dup g-adapter adapter.hw em-hw.forced-speed-duplex c! drop then else
 open$fullduplex l@ -1 = 1 and if
 em_10_full FF and dup g-adapter adapter.hw em-hw.forced-speed-duplex c! drop else
 em_10_half FF and dup g-adapter adapter.hw em-hw.forced-speed-duplex c! drop then then then
 open$addr l@ 10 or  " config-l@" $call-parent ( asm )
 dup open$cfg l! drop
 open$addr l@ 14 or  " config-l@" $call-parent ( asm )
 dup open$cfg l! drop
 open$addr l@ 18 or  " config-l@" $call-parent ( asm )
 dup open$cfg l! drop
 open$addr l@ 1C or  " config-l@" $call-parent ( asm )
 dup open$cfg l! drop
 open$addr l@ 20 or  " config-l@" $call-parent ( asm )
 dup open$cfg l! drop
 open$addr l@ 24 or  " config-l@" $call-parent ( asm )
 dup open$cfg l! drop
 open$addr l@ 30 or  " config-l@" $call-parent ( asm )
 dup open$cfg l! drop
 open$addr l@ 4 or  " config-l@" $call-parent ( asm )
 dup open$cfg l! drop
 open$cfg l@ FFFF and 2 or 4 or open$addr l@ 4 or  " config-l!" $call-parent ( asm )

 force-open l@ if
 -1 exit then
 open$adapter l@ em-open 0 <> 1 and if
 " em.open: could not open adapter!" type
 cr
 g-mmio l@ g-mmiosize l@  " map-out" $call-parent ( asm )

 0 dup g-mmio l! drop
 0 exit then
 open$args
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop " obp-tftp" $open-package ( asm )
 dup g-obptftp l! drop
 g-obptftp l@ 0 = 1 and if
 " em.open: could not create instance of obp-tftp!" type
 cr
 open$adapter l@ em-close
 g-mmio l@ g-mmiosize l@  " map-out" $call-parent ( asm )

 0 dup g-mmio l! drop
 0 exit then
 open$diag l@ if
 " Ethernet MAC addr: " type
 0 dup open$i l! drop
 begin open$i l@ 6 < 1 and while
 g-adapter adapter.hw em-hw.mac-addr open$i l@ + c@ FF and u. ( asm )

 open$i dup l@ tuck 1 + swap l! drop repeat
 cr then
 -1 exit
 ; \ end open
headerless

variable close$addr
variable close$cfg

external
\ function close
: close
 g-obptftp l@ if
 g-obptftp l@ close-package then
 my-space -100 and dup close$addr l! drop
 g-adapter em-close
 close$addr l@ 4 or  " config-l@" $call-parent ( asm )
 dup close$cfg l! drop
 close$cfg l@ FFF8 and close$addr l@ 4 or  " config-l!" $call-parent ( asm )

 g-mmio l@ if
 g-mmio l@ g-mmiosize l@  " map-out" $call-parent ( asm )
 then
 0 dup g-obptftp l! drop
 0 dup g-mmio l! drop
 ; \ end close
headerless

variable read$buf
variable read$len

external
\ function read
: read
 read$len l!
 read$buf l!
 \ saved parameters
 g-adapter read$buf l@ read$len l@ em-process-receive-packet exit
 ; \ end read
headerless

variable write$buf
variable write$len

external
\ function write
: write
 write$len l!
 write$buf l!
 \ saved parameters
 g-adapter write$buf l@ write$len l@ em-send-buffer if write$len l@ else 0 then exit
 ; \ end write
headerless

variable ee-read$offset
variable ee-read$ok
variable ee-read$inst
variable ee-read$data
variable ee-read$oldinst

external
\ function ee_read
: ee-read
 ee-read$offset l!
 \ saved parameters
  my-self ( asm )
 dup ee-read$oldinst l! drop
 1 dup force-open l! drop
 " netnv" " open-dev" evaluate ( asm )
 dup ee-read$inst l! drop
 0 dup force-open l! drop
 ee-read$inst l@ 0 = 1 and if
 " Unable to open netnv" type
 cr
 -1 exit then
 ee-read$inst l@  to my-self ( asm )

 g-adapter adapter.hw ee-read$offset l@ FFFF and ee-read$data em-read-eeprom 0 = 1 and dup ee-read$ok l! drop
 ee-read$oldinst l@  to my-self ( asm )

 ee-read$inst l@ " close-dev" evaluate ( asm )

 ee-read$ok l@ 0<> invert 1 and if
 " Unable to read eeprom" type
 cr
 -1 exit then
 ee-read$data w@ FFFF and exit
 ; \ end ee_read
headerless

variable ee-write$data
variable ee-write$offset
variable ee-write$ok
variable ee-write$inst
variable ee-write$oldinst

external
\ function ee_write
: ee-write
 ee-write$offset l!
 ee-write$data l!
 \ saved parameters
  my-self ( asm )
 dup ee-write$oldinst l! drop
 1 dup force-open l! drop
 " netnv" " open-dev" evaluate ( asm )
 dup ee-write$inst l! drop
 0 dup force-open l! drop
 ee-write$inst l@ 0 = 1 and if
 " Unable to open netnv" type
 cr
 exit then
 ee-write$inst l@  to my-self ( asm )

 g-adapter adapter.hw ee-write$offset l@ FFFF and ee-write$data l@ FFFF and em-write-eeprom 0 = 1 and dup ee-write$ok l! drop
 ee-write$oldinst l@  to my-self ( asm )

 ee-write$inst l@ " close-dev" evaluate ( asm )

 ee-write$ok l@ 0<> invert 1 and if
 " Unable to write eeprom" type
 cr then
 ; \ end ee_write
headerless

variable ee-fill-array$data

\ function ee_fill_array
: ee-fill-array
 ee-fill-array$data l!
 \ saved parameters
 3000 FFFF and dup ee-fill-array$data l@ w! drop
 11F7 FFFF and dup ee-fill-array$data l@ 2 + w! drop
 3322 FFFF and dup ee-fill-array$data l@ 4 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 6 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 8 + w! drop
 0 FFFF and dup ee-fill-array$data l@ A + w! drop
 0 FFFF and dup ee-fill-array$data l@ C + w! drop
 0 FFFF and dup ee-fill-array$data l@ E + w! drop
 0 FFFF and dup ee-fill-array$data l@ 10 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 12 + w! drop
 67AF FFFF and dup ee-fill-array$data l@ 14 + w! drop
 670 FFFF and dup ee-fill-array$data l@ 16 + w! drop
 140B FFFF and dup ee-fill-array$data l@ 18 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 1A + w! drop
 0 FFFF and dup ee-fill-array$data l@ 1C + w! drop
 30F0 FFFF and dup ee-fill-array$data l@ 1E + w! drop
 0 FFFF and dup ee-fill-array$data l@ 20 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 22 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 24 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 26 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 28 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 2A + w! drop
 0 FFFF and dup ee-fill-array$data l@ 2C + w! drop
 0 FFFF and dup ee-fill-array$data l@ 2E + w! drop
 0 FFFF and dup ee-fill-array$data l@ 30 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 32 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 34 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 36 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 38 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 3A + w! drop
 0 FFFF and dup ee-fill-array$data l@ 3C + w! drop
 0 FFFF and dup ee-fill-array$data l@ 3E + w! drop
 0 FFFF and dup ee-fill-array$data l@ 40 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 42 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 44 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 46 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 48 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 4A + w! drop
 0 FFFF and dup ee-fill-array$data l@ 4C + w! drop
 0 FFFF and dup ee-fill-array$data l@ 4E + w! drop
 0 FFFF and dup ee-fill-array$data l@ 50 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 52 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 54 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 56 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 58 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 5A + w! drop
 0 FFFF and dup ee-fill-array$data l@ 5C + w! drop
 0 FFFF and dup ee-fill-array$data l@ 5E + w! drop
 0 FFFF and dup ee-fill-array$data l@ 60 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 62 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 64 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 66 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 68 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 6A + w! drop
 0 FFFF and dup ee-fill-array$data l@ 6C + w! drop
 0 FFFF and dup ee-fill-array$data l@ 6E + w! drop
 0 FFFF and dup ee-fill-array$data l@ 70 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 72 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 74 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 76 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 78 + w! drop
 0 FFFF and dup ee-fill-array$data l@ 7A + w! drop
 0 FFFF and dup ee-fill-array$data l@ 7C + w! drop
 9287 FFFF and dup ee-fill-array$data l@ 7E + w! drop
 ; \ end ee_fill_array
variable ee-prog$i
variable ee-prog$inst
variable ee-prog$ok
80 buffer: ee-prog$data
variable ee-prog$oldinst

external
\ function ee_prog
: ee-prog
 -1 ee-prog$ok l!
  my-self ( asm )
 dup ee-prog$oldinst l! drop
 1 dup force-open l! drop
 " netnv" " open-dev" evaluate ( asm )
 dup ee-prog$inst l! drop
 0 dup force-open l! drop
 ee-prog$inst l@ 0 = 1 and if
 " Unable to open netnv" type
 cr
 exit then
 ee-prog$inst l@  to my-self ( asm )

 ee-prog$data ee-fill-array
 0 dup ee-prog$i l! drop
 begin ee-prog$i l@ 40 < 1 and while
 g-adapter adapter.hw ee-prog$i l@ FFFF and ee-prog$data ee-prog$i l@ 2 * + w@ em-write-eeprom 0 = 1 and dup 0<> if drop ee-prog$ok l@ then dup ee-prog$ok l! drop
 ee-prog$i dup l@ tuck 1 + swap l! drop repeat
 ee-prog$oldinst l@  to my-self ( asm )

 ee-prog$inst l@ " close-dev" evaluate ( asm )

 ee-prog$ok l@ 0<> invert 1 and if
 " Unable to program eeprom" type
 cr then
 ; \ end ee_prog
headerless

variable ee-dump$i
variable ee-dump$inst
variable ee-dump$ok
variable ee-dump$data
variable ee-dump$oldinst

external
\ function ee_dump
: ee-dump
 -1 ee-dump$ok l!
  my-self ( asm )
 dup ee-dump$oldinst l! drop
 1 dup force-open l! drop
 " netnv" " open-dev" evaluate ( asm )
 dup ee-dump$inst l! drop
 0 dup force-open l! drop
 ee-dump$inst l@ 0 = 1 and if
 " Unable to open netnv" type
 cr
 exit then
 ee-dump$inst l@  to my-self ( asm )

 0 dup ee-dump$i l! drop
 begin ee-dump$i l@ 40 < 1 and while
 g-adapter adapter.hw ee-dump$i l@ FFFF and ee-dump$data em-read-eeprom 0 = 1 and dup 0<> if drop ee-dump$ok l@ then dup ee-dump$ok l! drop
 ee-dump$i l@ u. ( asm )

 ee-dump$data w@ FFFF and u. ( asm )

 cr
 ee-dump$i dup l@ tuck 1 + swap l! drop repeat
 ee-dump$oldinst l@  to my-self ( asm )

 ee-dump$inst l@ " close-dev" evaluate ( asm )

 ee-dump$ok l@ 0<> invert 1 and if
 " Unable to program eeprom" type
 cr then
 ; \ end ee_dump
headerless

variable load$addr

external
\ function load
: load
 load$addr l!
 \ saved parameters
 load$addr l@ ( push ) ( asm )

 " load" g-obptftp l@ $call-method ( asm )

 ( pop ) ( asm )
 exit
 ; \ end load
headerless

variable ping$ipaddr
variable ping$msecs

external
\ function ping
: ping
 ping$msecs l!
 ping$ipaddr l!
 \ saved parameters
 ping$ipaddr l@ ( push ) ( asm )

 ping$msecs l@ ( push ) ( asm )

 " ping" g-obptftp l@ $call-method ( asm )

 ( pop ) ( asm )
 exit
 ; \ end ping
headerless

variable selftest$err
variable selftest$diag

external
\ function selftest
: selftest
 diagnostic-mode? ( asm )
 dup selftest$diag l! drop
 selftest$diag l@ if
 " em selftest..." type then
 0 dup selftest$err l! drop
 selftest$err l@ if
 selftest$diag l@ if
 " FAILED!" type
 cr then else
 selftest$diag l@ if
 " ok" type
 cr then then
 selftest$err l@ exit
 ; \ end selftest
headerless

variable map-flash$fbase
variable map-flash$fsize
variable map-flash$physhi
variable map-flash$physmid
variable map-flash$sizehi
c buffer: map-flash$pe
variable map-flash$physlo
c buffer: map-flash$pi
variable map-flash$sizelo
10 buffer: map-flash$args2
variable map-flash$diag
8 buffer: map-flash$args
variable map-flash$addr
variable map-flash$fs
variable map-flash$fb

\ function map_flash
: map-flash
 map-flash$fsize l!
 map-flash$fbase l!
 \ saved parameters
 diagnostic-mode? ( asm )
 map-flash$diag l!
 map-flash$diag l@ dup map-flash$diag l! drop
 my-space -100 and dup map-flash$addr l! drop
 " assigned-addresses" get-my-property dup if 0 0 rot then ( asm )
 map-flash$pe
 >r r@ prop-err.err
 l! r@ prop-err.prop

 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop r> drop
 map-flash$pe prop-err.err l@ if
 " cannot find assigned-addresses property" type
 cr
 0 exit then
 map-flash$pe prop-err.prop
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop map-flash$pi prop-int.prop
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop

 begin map-flash$pi prop-int.prop
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop decode-int map-flash$pi
 >r r@ prop-int.val
 l! r@ prop-int.prop

 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop r> drop
 map-flash$pi prop-int.val l@ dup map-flash$physhi l! drop
 map-flash$pi prop-int.prop
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop decode-int map-flash$pi
 >r r@ prop-int.val
 l! r@ prop-int.prop

 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop r> drop
 map-flash$pi prop-int.val l@ dup map-flash$physmid l! drop
 map-flash$pi prop-int.prop
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop decode-int map-flash$pi
 >r r@ prop-int.val
 l! r@ prop-int.prop

 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop r> drop
 map-flash$pi prop-int.val l@ dup map-flash$physlo l! drop
 map-flash$pi prop-int.prop
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop decode-int map-flash$pi
 >r r@ prop-int.val
 l! r@ prop-int.prop

 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop r> drop
 map-flash$pi prop-int.val l@ dup map-flash$sizehi l! drop
 map-flash$pi prop-int.prop
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop decode-int map-flash$pi
 >r r@ prop-int.val
 l! r@ prop-int.prop

 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop r> drop
 map-flash$pi prop-int.val l@ dup map-flash$sizelo l! drop
 map-flash$pi prop-int.prop $fstr.len l@ 0 > 1 and dup 0<> if drop map-flash$physhi l@ 18 >>a 7 and 2 <> 1 and dup 0= if drop map-flash$physhi l@ FF and 30 <> 1 and then then while repeat
 map-flash$physhi dup l@ 7FFFFFFF and tuck swap l! drop
 0 dup map-flash$physmid l! drop
 0 dup map-flash$physlo l! drop
 map-flash$sizelo l@ dup map-flash$fs l! drop
 map-flash$physlo l@ map-flash$physmid l@ map-flash$physhi l@ map-flash$fs l@  " map-in" $call-parent ( asm )
 dup map-flash$fb l! drop
 map-flash$fb l@ 0 = 1 and if
 " em.flash_update: could not map in registers!" type
 cr
 0 exit then
 map-flash$fb l@ dup map-flash$fbase l@ l! drop
 map-flash$fs l@ dup map-flash$fsize l@ l! drop
 -1 exit
 ; \ end map_flash
variable flash-update$buf
variable flash-update$len
variable flash-update$cfg
variable flash-update$mfg
variable flash-update$dev
variable flash-update$diag
variable flash-update$fsize
variable flash-update$addr
variable flash-update$adapter
variable flash-update$fbase

external
\ function flash_update
: flash-update
 flash-update$len l!
 flash-update$buf l!
 \ saved parameters
 diagnostic-mode? ( asm )
 flash-update$diag l!
 my-space -100 and dup flash-update$addr l! drop
 flash-update$fbase flash-update$fsize map-flash 0<> invert 1 and if
 0 exit then
 flash-update$buf l@ dup flash-update$buf l! drop
 flash-update$len l@ dup flash-update$len l! drop
 flash-update$diag l@ dup flash-update$diag l! drop
 g-adapter dup flash-update$adapter l! drop
 flash-update$adapter l@ adapter.hw 10 20 em-write-reg
 flash-update$addr l@ 30 or  " config-l@" $call-parent ( asm )
 dup flash-update$cfg l! drop
 flash-update$cfg l@ 1 or flash-update$addr l@ 30 or  " config-l!" $call-parent ( asm )

 F0 FF and dup flash-update$fbase l@ 555 + rb! drop
 AA FF and dup flash-update$fbase l@ 555 + rb! drop
 55 FF and dup flash-update$fbase l@ 2AA + rb! drop
 90 FF and dup flash-update$fbase l@ 555 + rb! drop
 flash-update$fbase l@ rb@ FF and dup flash-update$mfg l! drop
 flash-update$fbase l@ 1 + rb@ FF and dup flash-update$dev l! drop
 F0 FF and dup flash-update$fbase l@ 555 + rb! drop
 flash-update$cfg l@ flash-update$addr l@ 30 or  " config-l!" $call-parent ( asm )

 flash-update$adapter l@ adapter.hw 10 10 em-write-reg
 flash-update$fbase l@ flash-update$fsize l@  " map-out" $call-parent ( asm )

 0 exit
 ; \ end flash_update
headerless

8 buffer: encode-reg$s1
variable encode-reg$pcireg
variable encode-reg$save
variable encode-reg$physhi
variable encode-reg$size
variable encode-reg$ptype
variable encode-reg$cfg
8 buffer: encode-reg$s2
variable encode-reg$p
variable encode-reg$reg
variable encode-reg$set
variable encode-reg$t
variable encode-reg$addr
variable encode-reg$space

\ function encode_reg
: encode-reg
 encode-reg$pcireg l!
 encode-reg$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 \ saved parameters
 0 encode-reg$t l!
 0 encode-reg$p l!
 0 encode-reg$size l!
 0 encode-reg$ptype l!
 0 encode-reg$space l!
 0 encode-reg$physhi l!
 my-space -100 and dup encode-reg$addr l! drop
 encode-reg$pcireg l@ encode-reg$addr l@ or dup encode-reg$reg l! drop
 encode-reg$addr l@ 4 or  " config-l@" $call-parent ( asm )
 dup encode-reg$cfg l! drop
 encode-reg$cfg l@ FFF8 and encode-reg$addr l@ 4 or  " config-l!" $call-parent ( asm )

 encode-reg$reg l@  " config-l@" $call-parent ( asm )
 dup encode-reg$save l! drop
 -1 encode-reg$reg l@  " config-l!" $call-parent ( asm )

 encode-reg$reg l@  " config-l@" $call-parent ( asm )
 dup encode-reg$set l! drop
 encode-reg$save l@ encode-reg$reg l@  " config-l!" $call-parent ( asm )

 encode-reg$set l@ 1 and if
 encode-reg$set l@ invert 3 or 1 + dup encode-reg$size l! drop
 encode-reg$size dup l@ encode-reg$size l@ negate and tuck swap l! drop
 encode-reg$set l@ 3 and dup encode-reg$ptype l! drop else
 encode-reg$set l@ invert F or 1 + dup encode-reg$size l! drop
 encode-reg$size dup l@ encode-reg$size l@ negate and tuck swap l! drop
 encode-reg$set l@ F and dup encode-reg$ptype l! drop then
 encode-reg$ptype l@ 1 and if
 1 dup encode-reg$space l! drop
 encode-reg$ptype l@ 1 >>a 1 and dup encode-reg$t l! drop else
 encode-reg$ptype l@ 3 >>a 1 and dup encode-reg$p l! drop
 2 dup encode-reg$space l! drop
 encode-reg$ptype l@ 6 and 2 = 1 and if
 1 dup encode-reg$t l! drop then then
 encode-reg$pcireg l@ 30 = 1 and if
 encode-reg$set l@ invert 7FF or 1 + dup encode-reg$size l! drop
 encode-reg$size dup l@ encode-reg$size l@ negate and tuck swap l! drop
 2 dup encode-reg$space l! drop then
 encode-reg$cfg l@ FFFF and encode-reg$addr l@ 4 or  " config-l!" $call-parent ( asm )

 0 encode-reg$p l@ 1E lshift or encode-reg$t l@ 1D lshift or encode-reg$space l@ 18 lshift or 0 or 0 or 0 or encode-reg$reg l@ or dup encode-reg$physhi l! drop
 encode-reg$physhi dup l@ my-space or tuck swap l! drop
 encode-reg$size l@ if
 0 0 encode-reg$physhi l@ encode-phys encode-reg$s2
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 encode-reg$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop encode-reg$s2
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop encode+ ( asm )
 encode-reg$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 0 encode-int encode-reg$s2
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 encode-reg$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop encode-reg$s2
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop encode+ ( asm )
 encode-reg$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 encode-reg$size l@ encode-int encode-reg$s2
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 encode-reg$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop encode-reg$s2
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop encode+ ( asm )
 encode-reg$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop then
 encode-reg$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop exit
 ; \ end encode_reg
8 buffer: make-compatible-property$s2
8 buffer: make-compatible-property$s1

external
\ function make_compatible_property
: make-compatible-property
 " RAMIX,RM674TX" encode-string make-compatible-property$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 " pci8086,1008.8086.1008.2" encode-string make-compatible-property$s2
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 make-compatible-property$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop make-compatible-property$s2
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop encode+ ( asm )
 make-compatible-property$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 " pci8086,1008.8086.1008" encode-string make-compatible-property$s2
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 make-compatible-property$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop make-compatible-property$s2
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop encode+ ( asm )
 make-compatible-property$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 " pci8086.1008" encode-string make-compatible-property$s2
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 make-compatible-property$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop make-compatible-property$s2
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop encode+ ( asm )
 make-compatible-property$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 " pci8086,1008.2" encode-string make-compatible-property$s2
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 make-compatible-property$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop make-compatible-property$s2
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop encode+ ( asm )
 make-compatible-property$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 " pci8086,1008" encode-string make-compatible-property$s2
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 make-compatible-property$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop make-compatible-property$s2
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop encode+ ( asm )
 make-compatible-property$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 " pciclass,020000" encode-string make-compatible-property$s2
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 make-compatible-property$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop make-compatible-property$s2
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop encode+ ( asm )
 make-compatible-property$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 " pciclass,0200" encode-string make-compatible-property$s2
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 make-compatible-property$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop make-compatible-property$s2
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop encode+ ( asm )
 make-compatible-property$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 make-compatible-property$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop " compatible" property
 ; \ end make_compatible_property
headerless


struct \ phys3
   4 field phys3.lo
   4 field phys3.mid
   4 field phys3.hi
 constant phys3.$size \ end struct
c buffer: main$phys
8 buffer: main$s2
8 buffer: main$s1

\ main
 " ethernet" device-name
 " network" device-type
 my-address 0 ( asm )
 main$phys
 >r r@ phys3.hi
 l! r@ phys3.mid
 l! r@ phys3.lo
 l! r> drop
 my-space dup main$phys phys3.hi l! drop
 main$phys phys3.lo l@ main$phys phys3.mid l@ main$phys phys3.hi l@ encode-phys main$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 0 encode-int main$s2
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 main$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop main$s2
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop encode+ ( asm )
 main$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 0 encode-int main$s2
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 main$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop main$s2
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop encode+ ( asm )
 main$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 main$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop 10 encode-reg main$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 main$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop 14 encode-reg main$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 main$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop 18 encode-reg main$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 main$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop 1C encode-reg main$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 main$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop 20 encode-reg main$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 main$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop 24 encode-reg main$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 main$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop 30 encode-reg main$s1
 >r r@ $fstr.len
 l! r@ $fstr.str
 l! r> drop
 main$s1
 >r r@ $fstr.str
 l@ r@ $fstr.len
 l@ r> drop " reg" property
 30 encode-int " address-bits" property
 5EA encode-int " maximum-frame-size" property
 make-compatible-property
\ end main
headerless


fcode-end
