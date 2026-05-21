
build/bin/RELOJ.elf:     file format elf32-littlearm
build/bin/RELOJ.elf
architecture: armv7e-m, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x1a000885

Program Header:
    LOAD off    0x00000054 vaddr 0x10000054 paddr 0x10000054 align 2**12
         filesz 0x00000000 memsz 0x00000198 flags rw-
    LOAD off    0x00001000 vaddr 0x1a000000 paddr 0x1a000000 align 2**12
         filesz 0x00001b78 memsz 0x00001b78 flags r-x
    LOAD off    0x00003000 vaddr 0x10000000 paddr 0x1a001b78 align 2**12
         filesz 0x00000054 memsz 0x00000054 flags rw-
private flags = 0x5000200: [Version5 EABI] [soft-float ABI]

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text         00000248  1a000000  1a000000  00001000  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .init         00000004  1a000248  1a000248  00001248  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .fini         00000004  1a00024c  1a00024c  0000124c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  3 .data         00000054  10000000  1a001b78  00003000  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  4 .data_RAM2    00000000  10080000  10080000  00003054  2**2
                  CONTENTS
  5 .data_RAM3    00000000  20000000  20000000  00003054  2**2
                  CONTENTS
  6 .data_RAM4    00000000  20008000  20008000  00003054  2**2
                  CONTENTS
  7 .data_RAM5    00000000  2000c000  2000c000  00003054  2**2
                  CONTENTS
  8 .bss          00000198  10000054  10000054  00001054  2**2
                  ALLOC
  9 .text         00001928  1a000250  1a000250  00001250  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 10 .uninit_RESERVED 00000000  10000000  10000000  00003054  2**2
                  CONTENTS
 11 .noinit_RAM2  00000000  10080000  10080000  00003054  2**2
                  CONTENTS
 12 .noinit_RAM3  00000000  20000000  20000000  00003054  2**2
                  CONTENTS
 13 .noinit_RAM4  00000000  20008000  20008000  00003054  2**2
                  CONTENTS
 14 .noinit_RAM5  00000000  2000c000  2000c000  00003054  2**2
                  CONTENTS
 15 .noinit       00000000  100001ec  100001ec  00000000  2**2
                  ALLOC
 16 .ARM.attributes 0000002e  00000000  00000000  00003054  2**0
                  CONTENTS, READONLY
 17 .comment      00000012  00000000  00000000  00003082  2**0
                  CONTENTS, READONLY
 18 .debug_info   0000961e  00000000  00000000  00003094  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 19 .debug_abbrev 0000221d  00000000  00000000  0000c6b2  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 20 .debug_aranges 000004b8  00000000  00000000  0000e8cf  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 21 .debug_rnglists 0000036d  00000000  00000000  0000ed87  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 22 .debug_macro  00006fa1  00000000  00000000  0000f0f4  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 23 .debug_line   00005a67  00000000  00000000  00016095  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 24 .debug_str    0001c8a8  00000000  00000000  0001bafc  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 25 .debug_frame  00001080  00000000  00000000  000383a4  2**2
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 26 .debug_loclists 000009e6  00000000  00000000  00039424  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
SYMBOL TABLE:
1a000000 l    d  .text	00000000 .text
1a000248 l    d  .init	00000000 .init
1a00024c l    d  .fini	00000000 .fini
10000000 l    d  .data	00000000 .data
10080000 l    d  .data_RAM2	00000000 .data_RAM2
20000000 l    d  .data_RAM3	00000000 .data_RAM3
20008000 l    d  .data_RAM4	00000000 .data_RAM4
2000c000 l    d  .data_RAM5	00000000 .data_RAM5
10000054 l    d  .bss	00000000 .bss
1a000250 l    d  .text	00000000 .text
10000000 l    d  .uninit_RESERVED	00000000 .uninit_RESERVED
10080000 l    d  .noinit_RAM2	00000000 .noinit_RAM2
20000000 l    d  .noinit_RAM3	00000000 .noinit_RAM3
20008000 l    d  .noinit_RAM4	00000000 .noinit_RAM4
2000c000 l    d  .noinit_RAM5	00000000 .noinit_RAM5
100001ec l    d  .noinit	00000000 .noinit
00000000 l    d  .ARM.attributes	00000000 .ARM.attributes
00000000 l    d  .comment	00000000 .comment
00000000 l    d  .debug_info	00000000 .debug_info
00000000 l    d  .debug_abbrev	00000000 .debug_abbrev
00000000 l    d  .debug_aranges	00000000 .debug_aranges
00000000 l    d  .debug_rnglists	00000000 .debug_rnglists
00000000 l    d  .debug_macro	00000000 .debug_macro
00000000 l    d  .debug_line	00000000 .debug_line
00000000 l    d  .debug_str	00000000 .debug_str
00000000 l    d  .debug_frame	00000000 .debug_frame
00000000 l    d  .debug_loclists	00000000 .debug_loclists
00000000 l    df *ABS*	00000000 cr_startup_lpc43xx.c
00000000 l    df *ABS*	00000000 crti.o
00000000 l    df *ABS*	00000000 main.c
1a00043c l     F .text	00000034 Chip_SCU_PinMuxSet
1a000470 l     F .text	00000034 Chip_GPIO_ReadPortBit
1a0004a4 l     F .text	0000003e Chip_GPIO_SetPinDIROutput
1a0004e2 l     F .text	00000040 Chip_GPIO_SetPinDIRInput
1a000522 l     F .text	00000042 Chip_GPIO_SetPinDIR
1a000564 l     F .text	000000b0 ConfigureLeds
1a000614 l     F .text	00000064 ConfigureKeys
1a000678 l     F .text	000000b4 FlashLed
1000006c l     O .bss	00000004 divisor.2
10000000 l     O .data	00000001 state.1
1a00072c l     F .text	00000050 SwitchLed
1a00077c l     F .text	00000064 ToggleLed
10000070 l     O .bss	00000001 last_state.0
1a0007e0 l     F .text	0000003c TestLed
1a00081c l     F .text	0000003e Delay
00000000 l    df *ABS*	00000000 impure.c
00000000 l    df *ABS*	00000000 digital.c
1a000250 l     F .text	00000038 Chip_GPIO_SetPinState
1a000288 l     F .text	0000003e Chip_GPIO_SetPinDIROutput
1a0002c6 l     F .text	00000040 Chip_GPIO_SetPinDIRInput
1a000306 l     F .text	00000042 Chip_GPIO_SetPinDIR
1a000348 l     F .text	00000032 Chip_GPIO_SetPinToggle
00000000 l    df *ABS*	00000000 board.c
1a000968 l     F .text	00000034 Chip_SCU_PinMuxSet
1a00099c l     F .text	00000054 Chip_CREG_SetFlashAcceleration
1a0009f0 l     F .text	00000038 Chip_GPIO_SetPinState
1a000a28 l     F .text	0000003e Chip_GPIO_SetPinDIROutput
1a000a66 l     F .text	00000040 Chip_GPIO_SetPinDIRInput
1a000aa6 l     F .text	00000042 Chip_GPIO_SetPinDIR
1a001ab0 l     O .text	00000004 InitClkStates
1a000ae8 l     F .text	00000074 SetupClocking
00000000 l    df *ABS*	00000000 chip_18xx_43xx.c
00000000 l    df *ABS*	00000000 clock_18xx_43xx.c
1a001abc l     O .text	0000006c periph_to_base
10000078 l     O .bss	00000008 audio_usb_pll_freq
1a000cac l     F .text	00000022 ABS
1a000cd0 l     F .text	00000124 pll_calc_divs
1a000df4 l     F .text	00000180 pll_get_frac
1a000f74 l     F .text	00000040 Chip_Clock_GetDivRate
1a000fb4 l     F .text	00000090 Chip_Clock_FindBaseClock
00000000 l    df *ABS*	00000000 sysinit_18xx_43xx.c
1a001594 l     F .text	00000020 Chip_Clock_DisableMainPLL
1a0015b4 l     F .text	00000048 Chip_Clock_SetupMainPLL
1a0015fc l     F .text	00000024 Chip_Clock_MainPLLLocked
1a001b30 l     O .text	00000048 InitClkStates
00000000 l    df *ABS*	00000000 malloc.c
00000000 l    df *ABS*	00000000 mallocr.c
1a001788 l     F .text	00000048 sbrk_aligned
00000000 l    df *ABS*	00000000 mlock.c
00000000 l    df *ABS*	00000000 memset.c
00000000 l    df *ABS*	00000000 sbrkr.c
00000000 l    df *ABS*	00000000 lock.c
00000000 l    df *ABS*	00000000 freer.c
00000000 l    df *ABS*	00000000 sbrk.c
100001e8 l     O .bss	00000004 heap_end.0
00000000 l    df *ABS*	00000000 findfp.c
00000000 l    df *ABS*	00000000 reent.c
1a001248 g     F .text	00000040 Chip_Clock_GetDividerSource
1a000b5c g     F .text	00000138 BoardSetup
1a000240  w    F .text	00000008 TIMER2_IRQHandler
1a000228  w    F .text	00000008 DebugMon_Handler
1a000240  w    F .text	00000008 RIT_IRQHandler
1a080000 g       *ABS*	00000000 __top_MFlashA512
1a000114 g       .text	00000000 __section_table_start
1a000240  w    F .text	00000008 FLASH_EEPROM_IRQHandler
1a000240  w    F .text	00000008 I2C0_IRQHandler
100001e0 g     O .bss	00000001 __lock___atexit_recursive_mutex
1a000200  w    F .text	00000008 HardFault_Handler
2000c000 g       *ABS*	00000000 __base_RamAHB_ETB16
1a000000 g       *ABS*	00000000 __vectors_start__
1a0018dc g     F .text	0000000c __malloc_unlock
1a00037c g     F .text	00000048 DigitalOutputCreate
1a000238  w    F .text	00000008 SysTick_Handler
2000c000 g       *ABS*	00000000 __top_RAM4
100001c8 g     O .bss	00000001 __lock___arc4random_mutex
1a000240  w    F .text	00000008 SDIO_IRQHandler
20000000 g       *ABS*	00000000 __base_RamAHB32
1a000240  w    F .text	00000008 ATIMER_IRQHandler
10080000 g       *ABS*	00000000 __base_RAM2
1a000230  w    F .text	00000008 PendSV_Handler
1a0001f8  w    F .text	00000008 NMI_Handler
1a001b78 g       .text	00000000 __exidx_end
1a000150 g       .text	00000000 __data_section_table_end
1a000240  w    F .text	00000008 I2C1_IRQHandler
1a000240  w    F .text	00000008 UART1_IRQHandler
1a000240  w    F .text	00000008 GPIO5_IRQHandler
1a0019b8 g     F .text	00000002 __retarget_lock_close
1a000240  w    F .text	00000008 CAN1_IRQHandler
100001c0 g     O .bss	00000004 __stdio_exit_handler
53ff6d4e g       *ABS*	00000000 __valid_user_code_checksum
100001c4 g     O .bss	00000004 errno
10000068 g     O .bss	00000004 led_rgb_azul
1a001b78 g       .text	00000000 _etext
1a000240  w    F .text	00000008 USB1_IRQHandler
1a000240  w    F .text	00000008 I2S0_IRQHandler
1a000240  w    F .text	00000008 TIMER3_IRQHandler
1a001400 g     F .text	00000024 Chip_Clock_GetBaseClocktHz
1a000240  w    F .text	00000008 UART0_IRQHandler
1a0001be g     F .text	0000003a bss_init
1a000240  w    F .text	00000008 SGPIO_IRQHandler
100001ec g       .noinit	00000000 _noinit
10000074 g     O .bss	00000004 SystemCoreClock
2000c000 g       *ABS*	00000000 __base_RAM5
1a0003ec g     F .text	00000028 DigitalOutputDeactivate
1a000240  w    F .text	00000008 ADC0_IRQHandler
1a001768 g     F .text	00000010 malloc
1a000218  w    F .text	00000008 UsageFault_Handler
10008000 g       *ABS*	00000000 __top_RAM
1a00150c g     F .text	00000088 Chip_Clock_GetRate
1a0003c4 g     F .text	00000028 DigitalOutputActivate
1a000240  w    F .text	00000008 GPIO6_IRQHandler
20008000 g       *ABS*	00000000 __top_RamAHB32
1a00198c g     F .text	00000024 _sbrk_r
1a001ab4 g     O .text	00000004 ExtRateIn
1a000240  w    F .text	00000008 IntDefaultHandler
1008a000 g       *ABS*	00000000 __top_RAM2
1a000240  w    F .text	00000008 GPIO1_IRQHandler
1a000240  w    F .text	00000008 SSP0_IRQHandler
1a001b78 g       .text	00000000 __exidx_start
100001d4 g     O .bss	00000001 __lock___env_recursive_mutex
1a000240  w    F .text	00000008 ADC1_IRQHandler
1a001a94 g     F .text	0000001c _sbrk
1a000248 g     F .init	00000000 _init
1a000114 g       .text	00000000 __data_section_table
10000000 g       *ABS*	00000000 __base_RamLoc32
1a000240  w    F .text	00000008 RTC_IRQHandler
100001ec g       .bss	00000000 _ebss
1a000240  w    F .text	00000008 TIMER0_IRQHandler
20010000 g       *ABS*	00000000 __top_RamAHB_ETB16
1a000240  w    F .text	00000008 SPI_IRQHandler
1a000240  w    F .text	00000008 LCD_IRQHandler
1a001044 g     F .text	00000070 Chip_Clock_EnableCrystal
20000000 g       *ABS*	00000000 __base_RAM3
100001d8 g     O .bss	00000001 __lock___malloc_recursive_mutex
10000088 g     O .bss	00000138 __sf
20010000 g       *ABS*	00000000 __top_RAM5
10008000 g       *ABS*	00000000 __top_RamLoc32
1a000240  w    F .text	00000008 VADC_IRQHandler
1a000178 g     F .text	00000046 data_init
1a000240  w    F .text	00000008 TIMER1_IRQHandler
100001ec g       .bss	00000000 end
1a0019d4 g     F .text	00000002 __retarget_lock_release_recursive
1a000240  w    F .text	00000008 UART2_IRQHandler
1a00118c g     F .text	000000bc Chip_Clock_GetMainPLLHz
1a0019cc g     F .text	00000004 __retarget_lock_try_acquire_recursive
1a000000 g       *ABS*	00000000 __base_Flash
1a000240  w    F .text	00000008 GPIO2_IRQHandler
1a0019d8 g     F .text	000000bc _free_r
1a0014c0 g     F .text	0000004c Chip_Clock_GetBaseClock
1b080000 g       *ABS*	00000000 __top_Flash2
10000054 g       .bss	00000000 _bss
1a0019c8 g     F .text	00000004 __retarget_lock_try_acquire
1a000240  w    F .text	00000008 I2S1_IRQHandler
1a001ab8 g     O .text	00000004 OscRateIn
1a080000 g       *ABS*	00000000 __top_Flash
100001ec g       .noinit	00000000 _end_noinit
10008000 g       *ABS*	00000000 _vStackTop
1a000240  w    F .text	00000008 SSP1_IRQHandler
10000058 g     O .bss	00000004 led_verde
1a000178 g       .text	00000000 __bss_section_table_end
1a000000 g       *ABS*	00000000 __base_MFlashA512
1b000000 g       *ABS*	00000000 __base_Flash2
1a0019bc g     F .text	00000002 __retarget_lock_close_recursive
1a000240  w    F .text	00000008 USB0_IRQHandler
1a000414 g     F .text	00000028 DigitalOutputToggle
20008000 g       *ABS*	00000000 __base_RamAHB16
1a000240  w    F .text	00000008 GPIO3_IRQHandler
1a0018d0 g     F .text	0000000c __malloc_lock
1a000240  w    F .text	00000008 SCT_IRQHandler
1a001288 g     F .text	00000038 Chip_Clock_GetDividerDivisor
1a0019c4 g     F .text	00000002 __retarget_lock_acquire_recursive
1a0018e8 g     F .text	000000a2 memset
1a000208  w    F .text	00000008 MemManage_Handler
1a00085a g     F .text	00000028 main
1a0019b4 g     F .text	00000002 __retarget_lock_init_recursive
1a000240  w    F .text	00000008 WDT_IRQHandler
2000c000 g       *ABS*	00000000 __top_RamAHB16
1008a000 g       *ABS*	00000000 __top_RamLoc40
1a000220  w    F .text	00000008 SVC_Handler
1a0017d0 g     F .text	00000100 _malloc_r
20008000 g       *ABS*	00000000 __base_RAM4
10000054 g     O .bss	00000004 led_rojo
1a000240  w    F .text	00000008 GPIO7_IRQHandler
1a0012c0 g     F .text	00000140 Chip_Clock_GetClockInputHz
1a0010b4 g     F .text	000000d8 Chip_Clock_CalcMainPLLValue
1a0019b0 g     F .text	00000002 __retarget_lock_init
1a000240  w    F .text	00000008 SPIFI_IRQHandler
1a000240  w    F .text	00000008 QEI_IRQHandler
1a000150 g       .text	00000000 __bss_section_table
1a00024c g     F .fini	00000000 _fini
10080000 g       *ABS*	00000000 __base_RamLoc40
10000060 g     O .bss	00000004 led_rgb_rojo
1a000240  w    F .text	00000008 ETH_IRQHandler
1a000240  w    F .text	00000008 M0CORE_IRQHandler
10000004 g     O .data	00000004 _impure_ptr
10000000 g       .uninit_RESERVED	00000000 _end_uninit_RESERVED
1a000240  w    F .text	00000008 CAN0_IRQHandler
10000000 g       .data	00000000 _data
1a000178 g       .text	00000000 __section_table_end
1a000240  w    F .text	00000008 GINT0_IRQHandler
1b000000 g       *ABS*	00000000 __base_MFlashB512
1a000240  w    F .text	00000008 DAC_IRQHandler
10000054 g       .data	00000000 _edata
1000005c g     O .bss	00000004 led_amarillo
1a000240  w    F .text	00000008 M0SUB_IRQHandler
100001dc g     O .bss	00000001 __lock___at_quick_exit_mutex
1a001620 g     F .text	00000148 Chip_SetupCoreClock
1a000240  w    F .text	00000008 GPIO0_IRQHandler
10000000 g       *ABS*	00000000 __base_RAM
1a000000 g     O .text	00000114 g_pfnVectors
1a000884 g     F .text	000000e0 ResetISR
1a000c94 g     F .text	00000018 SystemCoreClockUpdate
10000008 g     O .data	0000004c _impure_data
1a000240  w    F .text	00000008 DMA_IRQHandler
1a000240  w    F .text	00000008 EVRT_IRQHandler
1b080000 g       *ABS*	00000000 __top_MFlashB512
1a0019c0 g     F .text	00000002 __retarget_lock_acquire
1a0019d0 g     F .text	00000002 __retarget_lock_release
20008000 g       *ABS*	00000000 __top_RAM3
10000064 g     O .bss	00000004 led_rgb_verde
1a000210  w    F .text	00000008 BusFault_Handler
100001cc g     O .bss	00000001 __lock___dd_hash_mutex
100001d0 g     O .bss	00000001 __lock___tz_mutex
1a000240  w    F .text	00000008 UART3_IRQHandler
10000080 g     O .bss	00000004 __malloc_sbrk_start
1a000240  w    F .text	00000008 MCPWM_IRQHandler
10000084 g     O .bss	00000004 __malloc_free_list
1a000240  w    F .text	00000008 GINT1_IRQHandler
1a001424 g     F .text	0000009c Chip_Clock_SetBaseClock
1a000240  w    F .text	00000008 GPIO4_IRQHandler
100001e4 g     O .bss	00000001 __lock___sfp_recursive_mutex
1a001778 g     F .text	00000010 free



Disassembly of section .text:

1a000000 <g_pfnVectors>:
1a000000:	00 80 00 10 85 08 00 1a f9 01 00 1a 01 02 00 1a     ................
1a000010:	09 02 00 1a 11 02 00 1a 19 02 00 1a 4e 6d ff 53     ............Nm.S
	...
1a00002c:	21 02 00 1a 29 02 00 1a 00 00 00 00 31 02 00 1a     !...).......1...
1a00003c:	39 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     9...A...A...A...
1a00004c:	00 00 00 00 41 02 00 1a 41 02 00 1a 41 02 00 1a     ....A...A...A...
1a00005c:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a00006c:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a00007c:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a00008c:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a00009c:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a0000ac:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a0000bc:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a0000cc:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a0000dc:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a0000ec:	41 02 00 1a 00 00 00 00 41 02 00 1a 41 02 00 1a     A.......A...A...
1a0000fc:	41 02 00 1a 00 00 00 00 41 02 00 1a 41 02 00 1a     A.......A...A...
1a00010c:	41 02 00 1a 41 02 00 1a                             A...A...

1a000114 <__data_section_table>:
1a000114:	1a001b78 	.word	0x1a001b78
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000054 	.word	0x00000054
1a000120:	1a001b78 	.word	0x1a001b78
1a000124:	10080000 	.word	0x10080000
1a000128:	00000000 	.word	0x00000000
1a00012c:	1a001b78 	.word	0x1a001b78
1a000130:	20000000 	.word	0x20000000
1a000134:	00000000 	.word	0x00000000
1a000138:	1a001b78 	.word	0x1a001b78
1a00013c:	20008000 	.word	0x20008000
1a000140:	00000000 	.word	0x00000000
1a000144:	1a001b78 	.word	0x1a001b78
1a000148:	2000c000 	.word	0x2000c000
1a00014c:	00000000 	.word	0x00000000

1a000150 <__bss_section_table>:
1a000150:	10000054 	.word	0x10000054
1a000154:	00000198 	.word	0x00000198
1a000158:	10080000 	.word	0x10080000
1a00015c:	00000000 	.word	0x00000000
1a000160:	20000000 	.word	0x20000000
1a000164:	00000000 	.word	0x00000000
1a000168:	20008000 	.word	0x20008000
1a00016c:	00000000 	.word	0x00000000
1a000170:	2000c000 	.word	0x2000c000
1a000174:	00000000 	.word	0x00000000

1a000178 <data_init>:
// are written as separate functions rather than being inlined within the
// ResetISR() function in order to cope with MCUs with multiple banks of
// memory.
//*****************************************************************************
__attribute__((section(".after_vectors"))) void data_init(unsigned int romstart, unsigned int start,
                                                          unsigned int len) {
1a000178:	b480      	push	{r7}
1a00017a:	b089      	sub	sp, #36	@ 0x24
1a00017c:	af00      	add	r7, sp, #0
1a00017e:	60f8      	str	r0, [r7, #12]
1a000180:	60b9      	str	r1, [r7, #8]
1a000182:	607a      	str	r2, [r7, #4]
    unsigned int * pulDest = (unsigned int *)start;
1a000184:	68bb      	ldr	r3, [r7, #8]
1a000186:	61fb      	str	r3, [r7, #28]
    unsigned int * pulSrc = (unsigned int *)romstart;
1a000188:	68fb      	ldr	r3, [r7, #12]
1a00018a:	61bb      	str	r3, [r7, #24]
    unsigned int loop;
    for (loop = 0; loop < len; loop = loop + 4)
1a00018c:	2300      	movs	r3, #0
1a00018e:	617b      	str	r3, [r7, #20]
1a000190:	e00a      	b.n	1a0001a8 <data_init+0x30>
        *pulDest++ = *pulSrc++;
1a000192:	69ba      	ldr	r2, [r7, #24]
1a000194:	1d13      	adds	r3, r2, #4
1a000196:	61bb      	str	r3, [r7, #24]
1a000198:	69fb      	ldr	r3, [r7, #28]
1a00019a:	1d19      	adds	r1, r3, #4
1a00019c:	61f9      	str	r1, [r7, #28]
1a00019e:	6812      	ldr	r2, [r2, #0]
1a0001a0:	601a      	str	r2, [r3, #0]
    for (loop = 0; loop < len; loop = loop + 4)
1a0001a2:	697b      	ldr	r3, [r7, #20]
1a0001a4:	3304      	adds	r3, #4
1a0001a6:	617b      	str	r3, [r7, #20]
1a0001a8:	697a      	ldr	r2, [r7, #20]
1a0001aa:	687b      	ldr	r3, [r7, #4]
1a0001ac:	429a      	cmp	r2, r3
1a0001ae:	d3f0      	bcc.n	1a000192 <data_init+0x1a>
}
1a0001b0:	bf00      	nop
1a0001b2:	bf00      	nop
1a0001b4:	3724      	adds	r7, #36	@ 0x24
1a0001b6:	46bd      	mov	sp, r7
1a0001b8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0001bc:	4770      	bx	lr

1a0001be <bss_init>:

__attribute__((section(".after_vectors"))) void bss_init(unsigned int start, unsigned int len) {
1a0001be:	b480      	push	{r7}
1a0001c0:	b085      	sub	sp, #20
1a0001c2:	af00      	add	r7, sp, #0
1a0001c4:	6078      	str	r0, [r7, #4]
1a0001c6:	6039      	str	r1, [r7, #0]
    unsigned int * pulDest = (unsigned int *)start;
1a0001c8:	687b      	ldr	r3, [r7, #4]
1a0001ca:	60fb      	str	r3, [r7, #12]
    unsigned int loop;
    for (loop = 0; loop < len; loop = loop + 4)
1a0001cc:	2300      	movs	r3, #0
1a0001ce:	60bb      	str	r3, [r7, #8]
1a0001d0:	e007      	b.n	1a0001e2 <bss_init+0x24>
        *pulDest++ = 0;
1a0001d2:	68fb      	ldr	r3, [r7, #12]
1a0001d4:	1d1a      	adds	r2, r3, #4
1a0001d6:	60fa      	str	r2, [r7, #12]
1a0001d8:	2200      	movs	r2, #0
1a0001da:	601a      	str	r2, [r3, #0]
    for (loop = 0; loop < len; loop = loop + 4)
1a0001dc:	68bb      	ldr	r3, [r7, #8]
1a0001de:	3304      	adds	r3, #4
1a0001e0:	60bb      	str	r3, [r7, #8]
1a0001e2:	68ba      	ldr	r2, [r7, #8]
1a0001e4:	683b      	ldr	r3, [r7, #0]
1a0001e6:	429a      	cmp	r2, r3
1a0001e8:	d3f3      	bcc.n	1a0001d2 <bss_init+0x14>
}
1a0001ea:	bf00      	nop
1a0001ec:	bf00      	nop
1a0001ee:	3714      	adds	r7, #20
1a0001f0:	46bd      	mov	sp, r7
1a0001f2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0001f6:	4770      	bx	lr

1a0001f8 <NMI_Handler>:

//*****************************************************************************
// Default exception handlers. Override the ones here by defining your own
// handler routines in your application code.
//*****************************************************************************
__attribute__((section(".after_vectors"))) void NMI_Handler(void) {
1a0001f8:	b480      	push	{r7}
1a0001fa:	af00      	add	r7, sp, #0
    while (1) {
1a0001fc:	bf00      	nop
1a0001fe:	e7fd      	b.n	1a0001fc <NMI_Handler+0x4>

1a000200 <HardFault_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void HardFault_Handler(void) {
1a000200:	b480      	push	{r7}
1a000202:	af00      	add	r7, sp, #0
    while (1) {
1a000204:	bf00      	nop
1a000206:	e7fd      	b.n	1a000204 <HardFault_Handler+0x4>

1a000208 <MemManage_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void MemManage_Handler(void) {
1a000208:	b480      	push	{r7}
1a00020a:	af00      	add	r7, sp, #0
    while (1) {
1a00020c:	bf00      	nop
1a00020e:	e7fd      	b.n	1a00020c <MemManage_Handler+0x4>

1a000210 <BusFault_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void BusFault_Handler(void) {
1a000210:	b480      	push	{r7}
1a000212:	af00      	add	r7, sp, #0
    while (1) {
1a000214:	bf00      	nop
1a000216:	e7fd      	b.n	1a000214 <BusFault_Handler+0x4>

1a000218 <UsageFault_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void UsageFault_Handler(void) {
1a000218:	b480      	push	{r7}
1a00021a:	af00      	add	r7, sp, #0
    while (1) {
1a00021c:	bf00      	nop
1a00021e:	e7fd      	b.n	1a00021c <UsageFault_Handler+0x4>

1a000220 <SVC_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void SVC_Handler(void) {
1a000220:	b480      	push	{r7}
1a000222:	af00      	add	r7, sp, #0
    while (1) {
1a000224:	bf00      	nop
1a000226:	e7fd      	b.n	1a000224 <SVC_Handler+0x4>

1a000228 <DebugMon_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void DebugMon_Handler(void) {
1a000228:	b480      	push	{r7}
1a00022a:	af00      	add	r7, sp, #0
    while (1) {
1a00022c:	bf00      	nop
1a00022e:	e7fd      	b.n	1a00022c <DebugMon_Handler+0x4>

1a000230 <PendSV_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void PendSV_Handler(void) {
1a000230:	b480      	push	{r7}
1a000232:	af00      	add	r7, sp, #0
    while (1) {
1a000234:	bf00      	nop
1a000236:	e7fd      	b.n	1a000234 <PendSV_Handler+0x4>

1a000238 <SysTick_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void SysTick_Handler(void) {
1a000238:	b480      	push	{r7}
1a00023a:	af00      	add	r7, sp, #0
    while (1) {
1a00023c:	bf00      	nop
1a00023e:	e7fd      	b.n	1a00023c <SysTick_Handler+0x4>

1a000240 <ADC0_IRQHandler>:
//
// Processor ends up here if an unexpected interrupt occurs or a specific
// handler is not present in the application code.
//
//*****************************************************************************
__attribute__((section(".after_vectors"))) void IntDefaultHandler(void) {
1a000240:	b480      	push	{r7}
1a000242:	af00      	add	r7, sp, #0
    while (1) {
1a000244:	bf00      	nop
1a000246:	e7fd      	b.n	1a000244 <ADC0_IRQHandler+0x4>

Disassembly of section .init:

1a000248 <_init>:
1a000248:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a00024a:	bf00      	nop

Disassembly of section .fini:

1a00024c <_fini>:
1a00024c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a00024e:	bf00      	nop

Disassembly of section .text:

1a000250 <Chip_GPIO_SetPinState>:
 * @param	setting	: true for high, false for low
 * @return	Nothing
 * @note	This function replaces Chip_GPIO_WritePortBit()
 */
STATIC INLINE void Chip_GPIO_SetPinState(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin, bool setting)
{
1a000250:	b480      	push	{r7}
1a000252:	b083      	sub	sp, #12
1a000254:	af00      	add	r7, sp, #0
1a000256:	6078      	str	r0, [r7, #4]
1a000258:	4608      	mov	r0, r1
1a00025a:	4611      	mov	r1, r2
1a00025c:	461a      	mov	r2, r3
1a00025e:	4603      	mov	r3, r0
1a000260:	70fb      	strb	r3, [r7, #3]
1a000262:	460b      	mov	r3, r1
1a000264:	70bb      	strb	r3, [r7, #2]
1a000266:	4613      	mov	r3, r2
1a000268:	707b      	strb	r3, [r7, #1]
	pGPIO->B[port][pin] = setting;
1a00026a:	78fa      	ldrb	r2, [r7, #3]
1a00026c:	78bb      	ldrb	r3, [r7, #2]
1a00026e:	7878      	ldrb	r0, [r7, #1]
1a000270:	6879      	ldr	r1, [r7, #4]
1a000272:	0152      	lsls	r2, r2, #5
1a000274:	440a      	add	r2, r1
1a000276:	4413      	add	r3, r2
1a000278:	4602      	mov	r2, r0
1a00027a:	701a      	strb	r2, [r3, #0]
}
1a00027c:	bf00      	nop
1a00027e:	370c      	adds	r7, #12
1a000280:	46bd      	mov	sp, r7
1a000282:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000286:	4770      	bx	lr

1a000288 <Chip_GPIO_SetPinDIROutput>:
 * @param	port	: GPIO Port number where @a pin is located
 * @param	pin		: GPIO pin to set direction on as output
 * @return	Nothing
 */
STATIC INLINE void Chip_GPIO_SetPinDIROutput(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
1a000288:	b480      	push	{r7}
1a00028a:	b083      	sub	sp, #12
1a00028c:	af00      	add	r7, sp, #0
1a00028e:	6078      	str	r0, [r7, #4]
1a000290:	460b      	mov	r3, r1
1a000292:	70fb      	strb	r3, [r7, #3]
1a000294:	4613      	mov	r3, r2
1a000296:	70bb      	strb	r3, [r7, #2]
	pGPIO->DIR[port] |= 1UL << pin;
1a000298:	78fa      	ldrb	r2, [r7, #3]
1a00029a:	687b      	ldr	r3, [r7, #4]
1a00029c:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a0002a0:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a0002a4:	78bb      	ldrb	r3, [r7, #2]
1a0002a6:	2201      	movs	r2, #1
1a0002a8:	fa02 f303 	lsl.w	r3, r2, r3
1a0002ac:	78fa      	ldrb	r2, [r7, #3]
1a0002ae:	4319      	orrs	r1, r3
1a0002b0:	687b      	ldr	r3, [r7, #4]
1a0002b2:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a0002b6:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a0002ba:	bf00      	nop
1a0002bc:	370c      	adds	r7, #12
1a0002be:	46bd      	mov	sp, r7
1a0002c0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0002c4:	4770      	bx	lr

1a0002c6 <Chip_GPIO_SetPinDIRInput>:
 * @param	port	: GPIO Port number where @a pin is located
 * @param	pin		: GPIO pin to set direction on as input
 * @return	Nothing
 */
STATIC INLINE void Chip_GPIO_SetPinDIRInput(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
1a0002c6:	b480      	push	{r7}
1a0002c8:	b083      	sub	sp, #12
1a0002ca:	af00      	add	r7, sp, #0
1a0002cc:	6078      	str	r0, [r7, #4]
1a0002ce:	460b      	mov	r3, r1
1a0002d0:	70fb      	strb	r3, [r7, #3]
1a0002d2:	4613      	mov	r3, r2
1a0002d4:	70bb      	strb	r3, [r7, #2]
	pGPIO->DIR[port] &= ~(1UL << pin);
1a0002d6:	78fa      	ldrb	r2, [r7, #3]
1a0002d8:	687b      	ldr	r3, [r7, #4]
1a0002da:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a0002de:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a0002e2:	78bb      	ldrb	r3, [r7, #2]
1a0002e4:	2201      	movs	r2, #1
1a0002e6:	fa02 f303 	lsl.w	r3, r2, r3
1a0002ea:	43db      	mvns	r3, r3
1a0002ec:	78fa      	ldrb	r2, [r7, #3]
1a0002ee:	4019      	ands	r1, r3
1a0002f0:	687b      	ldr	r3, [r7, #4]
1a0002f2:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a0002f6:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a0002fa:	bf00      	nop
1a0002fc:	370c      	adds	r7, #12
1a0002fe:	46bd      	mov	sp, r7
1a000300:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000304:	4770      	bx	lr

1a000306 <Chip_GPIO_SetPinDIR>:
 * @param	pin		: GPIO pin to set direction for
 * @param	output	: true for output, false for input
 * @return	Nothing
 */
STATIC INLINE void Chip_GPIO_SetPinDIR(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin, bool output)
{
1a000306:	b580      	push	{r7, lr}
1a000308:	b082      	sub	sp, #8
1a00030a:	af00      	add	r7, sp, #0
1a00030c:	6078      	str	r0, [r7, #4]
1a00030e:	4608      	mov	r0, r1
1a000310:	4611      	mov	r1, r2
1a000312:	461a      	mov	r2, r3
1a000314:	4603      	mov	r3, r0
1a000316:	70fb      	strb	r3, [r7, #3]
1a000318:	460b      	mov	r3, r1
1a00031a:	70bb      	strb	r3, [r7, #2]
1a00031c:	4613      	mov	r3, r2
1a00031e:	707b      	strb	r3, [r7, #1]
	if (output) {
1a000320:	787b      	ldrb	r3, [r7, #1]
1a000322:	2b00      	cmp	r3, #0
1a000324:	d006      	beq.n	1a000334 <Chip_GPIO_SetPinDIR+0x2e>
		Chip_GPIO_SetPinDIROutput(pGPIO, port, pin);
1a000326:	78ba      	ldrb	r2, [r7, #2]
1a000328:	78fb      	ldrb	r3, [r7, #3]
1a00032a:	4619      	mov	r1, r3
1a00032c:	6878      	ldr	r0, [r7, #4]
1a00032e:	f7ff ffab 	bl	1a000288 <Chip_GPIO_SetPinDIROutput>
	}
	else {
		Chip_GPIO_SetPinDIRInput(pGPIO, port, pin);
	}
}
1a000332:	e005      	b.n	1a000340 <Chip_GPIO_SetPinDIR+0x3a>
		Chip_GPIO_SetPinDIRInput(pGPIO, port, pin);
1a000334:	78ba      	ldrb	r2, [r7, #2]
1a000336:	78fb      	ldrb	r3, [r7, #3]
1a000338:	4619      	mov	r1, r3
1a00033a:	6878      	ldr	r0, [r7, #4]
1a00033c:	f7ff ffc3 	bl	1a0002c6 <Chip_GPIO_SetPinDIRInput>
}
1a000340:	bf00      	nop
1a000342:	3708      	adds	r7, #8
1a000344:	46bd      	mov	sp, r7
1a000346:	bd80      	pop	{r7, pc}

1a000348 <Chip_GPIO_SetPinToggle>:
 * @return	None
 * @note	Any bit set as a '0' will not have it's state changed. This only
 * applies to ports configured as an output.
 */
STATIC INLINE void Chip_GPIO_SetPinToggle(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
1a000348:	b480      	push	{r7}
1a00034a:	b083      	sub	sp, #12
1a00034c:	af00      	add	r7, sp, #0
1a00034e:	6078      	str	r0, [r7, #4]
1a000350:	460b      	mov	r3, r1
1a000352:	70fb      	strb	r3, [r7, #3]
1a000354:	4613      	mov	r3, r2
1a000356:	70bb      	strb	r3, [r7, #2]
	pGPIO->NOT[port] = (1 << pin);
1a000358:	78bb      	ldrb	r3, [r7, #2]
1a00035a:	2201      	movs	r2, #1
1a00035c:	fa02 f303 	lsl.w	r3, r2, r3
1a000360:	78fa      	ldrb	r2, [r7, #3]
1a000362:	4619      	mov	r1, r3
1a000364:	687b      	ldr	r3, [r7, #4]
1a000366:	f502 620c 	add.w	r2, r2, #2240	@ 0x8c0
1a00036a:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a00036e:	bf00      	nop
1a000370:	370c      	adds	r7, #12
1a000372:	46bd      	mov	sp, r7
1a000374:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000378:	4770      	bx	lr
	...

1a00037c <DigitalOutputCreate>:

/* === Private function definitions ============================================================ */

/* === Public function implementation ========================================================== */

digital_output_t DigitalOutputCreate(uint32_t puerto, uint8_t terminal) {
1a00037c:	b580      	push	{r7, lr}
1a00037e:	b084      	sub	sp, #16
1a000380:	af00      	add	r7, sp, #0
1a000382:	6078      	str	r0, [r7, #4]
1a000384:	460b      	mov	r3, r1
1a000386:	70fb      	strb	r3, [r7, #3]
    digital_output_t self;
    self = malloc(sizeof(struct digital_output_s));
1a000388:	2008      	movs	r0, #8
1a00038a:	f001 f9ed 	bl	1a001768 <malloc>
1a00038e:	4603      	mov	r3, r0
1a000390:	60fb      	str	r3, [r7, #12]
    if (self != NULL) {
1a000392:	68fb      	ldr	r3, [r7, #12]
1a000394:	2b00      	cmp	r3, #0
1a000396:	d00e      	beq.n	1a0003b6 <DigitalOutputCreate+0x3a>
        self->puerto = puerto;
1a000398:	68fb      	ldr	r3, [r7, #12]
1a00039a:	687a      	ldr	r2, [r7, #4]
1a00039c:	601a      	str	r2, [r3, #0]
        self->terminal = terminal;
1a00039e:	68fb      	ldr	r3, [r7, #12]
1a0003a0:	78fa      	ldrb	r2, [r7, #3]
1a0003a2:	711a      	strb	r2, [r3, #4]
        Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, self->puerto, self->terminal, true);
1a0003a4:	68fb      	ldr	r3, [r7, #12]
1a0003a6:	681b      	ldr	r3, [r3, #0]
1a0003a8:	b2d9      	uxtb	r1, r3
1a0003aa:	68fb      	ldr	r3, [r7, #12]
1a0003ac:	791a      	ldrb	r2, [r3, #4]
1a0003ae:	2301      	movs	r3, #1
1a0003b0:	4803      	ldr	r0, [pc, #12]	@ (1a0003c0 <DigitalOutputCreate+0x44>)
1a0003b2:	f7ff ffa8 	bl	1a000306 <Chip_GPIO_SetPinDIR>

    }
    return self;
1a0003b6:	68fb      	ldr	r3, [r7, #12]
}
1a0003b8:	4618      	mov	r0, r3
1a0003ba:	3710      	adds	r7, #16
1a0003bc:	46bd      	mov	sp, r7
1a0003be:	bd80      	pop	{r7, pc}
1a0003c0:	400f4000 	.word	0x400f4000

1a0003c4 <DigitalOutputActivate>:

void DigitalOutputActivate(digital_output_t self) {
1a0003c4:	b580      	push	{r7, lr}
1a0003c6:	b082      	sub	sp, #8
1a0003c8:	af00      	add	r7, sp, #0
1a0003ca:	6078      	str	r0, [r7, #4]
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, self->puerto, self->terminal, true);
1a0003cc:	687b      	ldr	r3, [r7, #4]
1a0003ce:	681b      	ldr	r3, [r3, #0]
1a0003d0:	b2d9      	uxtb	r1, r3
1a0003d2:	687b      	ldr	r3, [r7, #4]
1a0003d4:	791a      	ldrb	r2, [r3, #4]
1a0003d6:	2301      	movs	r3, #1
1a0003d8:	4803      	ldr	r0, [pc, #12]	@ (1a0003e8 <DigitalOutputActivate+0x24>)
1a0003da:	f7ff ff39 	bl	1a000250 <Chip_GPIO_SetPinState>
    // Activar la salida digital (setear el pin)
}
1a0003de:	bf00      	nop
1a0003e0:	3708      	adds	r7, #8
1a0003e2:	46bd      	mov	sp, r7
1a0003e4:	bd80      	pop	{r7, pc}
1a0003e6:	bf00      	nop
1a0003e8:	400f4000 	.word	0x400f4000

1a0003ec <DigitalOutputDeactivate>:

void DigitalOutputDeactivate(digital_output_t self) {
1a0003ec:	b580      	push	{r7, lr}
1a0003ee:	b082      	sub	sp, #8
1a0003f0:	af00      	add	r7, sp, #0
1a0003f2:	6078      	str	r0, [r7, #4]
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, self->puerto, self->terminal, false);
1a0003f4:	687b      	ldr	r3, [r7, #4]
1a0003f6:	681b      	ldr	r3, [r3, #0]
1a0003f8:	b2d9      	uxtb	r1, r3
1a0003fa:	687b      	ldr	r3, [r7, #4]
1a0003fc:	791a      	ldrb	r2, [r3, #4]
1a0003fe:	2300      	movs	r3, #0
1a000400:	4803      	ldr	r0, [pc, #12]	@ (1a000410 <DigitalOutputDeactivate+0x24>)
1a000402:	f7ff ff25 	bl	1a000250 <Chip_GPIO_SetPinState>
    // Desactivar la salida digital (resetear el pin)
}
1a000406:	bf00      	nop
1a000408:	3708      	adds	r7, #8
1a00040a:	46bd      	mov	sp, r7
1a00040c:	bd80      	pop	{r7, pc}
1a00040e:	bf00      	nop
1a000410:	400f4000 	.word	0x400f4000

1a000414 <DigitalOutputToggle>:

void DigitalOutputToggle(digital_output_t self) {
1a000414:	b580      	push	{r7, lr}
1a000416:	b082      	sub	sp, #8
1a000418:	af00      	add	r7, sp, #0
1a00041a:	6078      	str	r0, [r7, #4]
    Chip_GPIO_SetPinToggle(LPC_GPIO_PORT, self->puerto, self->terminal);
1a00041c:	687b      	ldr	r3, [r7, #4]
1a00041e:	681b      	ldr	r3, [r3, #0]
1a000420:	b2d9      	uxtb	r1, r3
1a000422:	687b      	ldr	r3, [r7, #4]
1a000424:	791b      	ldrb	r3, [r3, #4]
1a000426:	461a      	mov	r2, r3
1a000428:	4803      	ldr	r0, [pc, #12]	@ (1a000438 <DigitalOutputToggle+0x24>)
1a00042a:	f7ff ff8d 	bl	1a000348 <Chip_GPIO_SetPinToggle>
    // Alternar el estado de la salida digital (toggle del pin)
}
1a00042e:	bf00      	nop
1a000430:	3708      	adds	r7, #8
1a000432:	46bd      	mov	sp, r7
1a000434:	bd80      	pop	{r7, pc}
1a000436:	bf00      	nop
1a000438:	400f4000 	.word	0x400f4000

1a00043c <Chip_SCU_PinMuxSet>:
 * @return	Nothing
 * @note	Do not use for clock pins (SFSCLK0 .. SFSCLK4). Use
 * Chip_SCU_ClockPinMux() function for SFSCLKx clock pins.
 */
STATIC INLINE void Chip_SCU_PinMuxSet(uint8_t port, uint8_t pin, uint16_t modefunc)
{
1a00043c:	b480      	push	{r7}
1a00043e:	b083      	sub	sp, #12
1a000440:	af00      	add	r7, sp, #0
1a000442:	4603      	mov	r3, r0
1a000444:	71fb      	strb	r3, [r7, #7]
1a000446:	460b      	mov	r3, r1
1a000448:	71bb      	strb	r3, [r7, #6]
1a00044a:	4613      	mov	r3, r2
1a00044c:	80bb      	strh	r3, [r7, #4]
	LPC_SCU->SFSP[port][pin] = modefunc;
1a00044e:	4807      	ldr	r0, [pc, #28]	@ (1a00046c <Chip_SCU_PinMuxSet+0x30>)
1a000450:	79f9      	ldrb	r1, [r7, #7]
1a000452:	79bb      	ldrb	r3, [r7, #6]
1a000454:	88ba      	ldrh	r2, [r7, #4]
1a000456:	0149      	lsls	r1, r1, #5
1a000458:	440b      	add	r3, r1
1a00045a:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
}
1a00045e:	bf00      	nop
1a000460:	370c      	adds	r7, #12
1a000462:	46bd      	mov	sp, r7
1a000464:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000468:	4770      	bx	lr
1a00046a:	bf00      	nop
1a00046c:	40086000 	.word	0x40086000

1a000470 <Chip_GPIO_ReadPortBit>:
{
1a000470:	b480      	push	{r7}
1a000472:	b085      	sub	sp, #20
1a000474:	af00      	add	r7, sp, #0
1a000476:	60f8      	str	r0, [r7, #12]
1a000478:	60b9      	str	r1, [r7, #8]
1a00047a:	4613      	mov	r3, r2
1a00047c:	71fb      	strb	r3, [r7, #7]
	return (bool) pGPIO->B[port][pin];
1a00047e:	79fb      	ldrb	r3, [r7, #7]
1a000480:	68f9      	ldr	r1, [r7, #12]
1a000482:	68ba      	ldr	r2, [r7, #8]
1a000484:	0152      	lsls	r2, r2, #5
1a000486:	440a      	add	r2, r1
1a000488:	4413      	add	r3, r2
1a00048a:	781b      	ldrb	r3, [r3, #0]
1a00048c:	b2db      	uxtb	r3, r3
1a00048e:	2b00      	cmp	r3, #0
1a000490:	bf14      	ite	ne
1a000492:	2301      	movne	r3, #1
1a000494:	2300      	moveq	r3, #0
1a000496:	b2db      	uxtb	r3, r3
}
1a000498:	4618      	mov	r0, r3
1a00049a:	3714      	adds	r7, #20
1a00049c:	46bd      	mov	sp, r7
1a00049e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0004a2:	4770      	bx	lr

1a0004a4 <Chip_GPIO_SetPinDIROutput>:
{
1a0004a4:	b480      	push	{r7}
1a0004a6:	b083      	sub	sp, #12
1a0004a8:	af00      	add	r7, sp, #0
1a0004aa:	6078      	str	r0, [r7, #4]
1a0004ac:	460b      	mov	r3, r1
1a0004ae:	70fb      	strb	r3, [r7, #3]
1a0004b0:	4613      	mov	r3, r2
1a0004b2:	70bb      	strb	r3, [r7, #2]
	pGPIO->DIR[port] |= 1UL << pin;
1a0004b4:	78fa      	ldrb	r2, [r7, #3]
1a0004b6:	687b      	ldr	r3, [r7, #4]
1a0004b8:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a0004bc:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a0004c0:	78bb      	ldrb	r3, [r7, #2]
1a0004c2:	2201      	movs	r2, #1
1a0004c4:	fa02 f303 	lsl.w	r3, r2, r3
1a0004c8:	78fa      	ldrb	r2, [r7, #3]
1a0004ca:	4319      	orrs	r1, r3
1a0004cc:	687b      	ldr	r3, [r7, #4]
1a0004ce:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a0004d2:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a0004d6:	bf00      	nop
1a0004d8:	370c      	adds	r7, #12
1a0004da:	46bd      	mov	sp, r7
1a0004dc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0004e0:	4770      	bx	lr

1a0004e2 <Chip_GPIO_SetPinDIRInput>:
{
1a0004e2:	b480      	push	{r7}
1a0004e4:	b083      	sub	sp, #12
1a0004e6:	af00      	add	r7, sp, #0
1a0004e8:	6078      	str	r0, [r7, #4]
1a0004ea:	460b      	mov	r3, r1
1a0004ec:	70fb      	strb	r3, [r7, #3]
1a0004ee:	4613      	mov	r3, r2
1a0004f0:	70bb      	strb	r3, [r7, #2]
	pGPIO->DIR[port] &= ~(1UL << pin);
1a0004f2:	78fa      	ldrb	r2, [r7, #3]
1a0004f4:	687b      	ldr	r3, [r7, #4]
1a0004f6:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a0004fa:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a0004fe:	78bb      	ldrb	r3, [r7, #2]
1a000500:	2201      	movs	r2, #1
1a000502:	fa02 f303 	lsl.w	r3, r2, r3
1a000506:	43db      	mvns	r3, r3
1a000508:	78fa      	ldrb	r2, [r7, #3]
1a00050a:	4019      	ands	r1, r3
1a00050c:	687b      	ldr	r3, [r7, #4]
1a00050e:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a000512:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a000516:	bf00      	nop
1a000518:	370c      	adds	r7, #12
1a00051a:	46bd      	mov	sp, r7
1a00051c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000520:	4770      	bx	lr

1a000522 <Chip_GPIO_SetPinDIR>:
{
1a000522:	b580      	push	{r7, lr}
1a000524:	b082      	sub	sp, #8
1a000526:	af00      	add	r7, sp, #0
1a000528:	6078      	str	r0, [r7, #4]
1a00052a:	4608      	mov	r0, r1
1a00052c:	4611      	mov	r1, r2
1a00052e:	461a      	mov	r2, r3
1a000530:	4603      	mov	r3, r0
1a000532:	70fb      	strb	r3, [r7, #3]
1a000534:	460b      	mov	r3, r1
1a000536:	70bb      	strb	r3, [r7, #2]
1a000538:	4613      	mov	r3, r2
1a00053a:	707b      	strb	r3, [r7, #1]
	if (output) {
1a00053c:	787b      	ldrb	r3, [r7, #1]
1a00053e:	2b00      	cmp	r3, #0
1a000540:	d006      	beq.n	1a000550 <Chip_GPIO_SetPinDIR+0x2e>
		Chip_GPIO_SetPinDIROutput(pGPIO, port, pin);
1a000542:	78ba      	ldrb	r2, [r7, #2]
1a000544:	78fb      	ldrb	r3, [r7, #3]
1a000546:	4619      	mov	r1, r3
1a000548:	6878      	ldr	r0, [r7, #4]
1a00054a:	f7ff ffab 	bl	1a0004a4 <Chip_GPIO_SetPinDIROutput>
}
1a00054e:	e005      	b.n	1a00055c <Chip_GPIO_SetPinDIR+0x3a>
		Chip_GPIO_SetPinDIRInput(pGPIO, port, pin);
1a000550:	78ba      	ldrb	r2, [r7, #2]
1a000552:	78fb      	ldrb	r3, [r7, #3]
1a000554:	4619      	mov	r1, r3
1a000556:	6878      	ldr	r0, [r7, #4]
1a000558:	f7ff ffc3 	bl	1a0004e2 <Chip_GPIO_SetPinDIRInput>
}
1a00055c:	bf00      	nop
1a00055e:	3708      	adds	r7, #8
1a000560:	46bd      	mov	sp, r7
1a000562:	bd80      	pop	{r7, pc}

1a000564 <ConfigureLeds>:

/* === Private variable definitions ============================================================ */

/* === Private function implementation ========================================================= */

static void ConfigureLeds(void) {
1a000564:	b580      	push	{r7, lr}
1a000566:	af00      	add	r7, sp, #0
    Chip_SCU_PinMuxSet(LED_R_PORT, LED_R_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_R_FUNC);
1a000568:	2254      	movs	r2, #84	@ 0x54
1a00056a:	2100      	movs	r1, #0
1a00056c:	2002      	movs	r0, #2
1a00056e:	f7ff ff65 	bl	1a00043c <Chip_SCU_PinMuxSet>
    led_rgb_rojo = DigitalOutputCreate(LED_R_GPIO, LED_R_BIT);
1a000572:	2100      	movs	r1, #0
1a000574:	2005      	movs	r0, #5
1a000576:	f7ff ff01 	bl	1a00037c <DigitalOutputCreate>
1a00057a:	4603      	mov	r3, r0
1a00057c:	4a1f      	ldr	r2, [pc, #124]	@ (1a0005fc <ConfigureLeds+0x98>)
1a00057e:	6013      	str	r3, [r2, #0]
    // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_R_GPIO, LED_R_BIT, false);
    // Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_R_GPIO, LED_R_BIT, true);

    Chip_SCU_PinMuxSet(LED_G_PORT, LED_G_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_G_FUNC);
1a000580:	2254      	movs	r2, #84	@ 0x54
1a000582:	2101      	movs	r1, #1
1a000584:	2002      	movs	r0, #2
1a000586:	f7ff ff59 	bl	1a00043c <Chip_SCU_PinMuxSet>
    led_rgb_verde = DigitalOutputCreate(LED_G_GPIO, LED_G_BIT);
1a00058a:	2101      	movs	r1, #1
1a00058c:	2005      	movs	r0, #5
1a00058e:	f7ff fef5 	bl	1a00037c <DigitalOutputCreate>
1a000592:	4603      	mov	r3, r0
1a000594:	4a1a      	ldr	r2, [pc, #104]	@ (1a000600 <ConfigureLeds+0x9c>)
1a000596:	6013      	str	r3, [r2, #0]
    // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_G_GPIO, LED_G_BIT, false);
    // Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_G_GPIO, LED_G_BIT, true);

    Chip_SCU_PinMuxSet(LED_B_PORT, LED_B_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_B_FUNC);
1a000598:	2254      	movs	r2, #84	@ 0x54
1a00059a:	2102      	movs	r1, #2
1a00059c:	2002      	movs	r0, #2
1a00059e:	f7ff ff4d 	bl	1a00043c <Chip_SCU_PinMuxSet>
    led_rgb_azul = DigitalOutputCreate(LED_B_GPIO, LED_B_BIT);
1a0005a2:	2102      	movs	r1, #2
1a0005a4:	2005      	movs	r0, #5
1a0005a6:	f7ff fee9 	bl	1a00037c <DigitalOutputCreate>
1a0005aa:	4603      	mov	r3, r0
1a0005ac:	4a15      	ldr	r2, [pc, #84]	@ (1a000604 <ConfigureLeds+0xa0>)
1a0005ae:	6013      	str	r3, [r2, #0]
    // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_B_GPIO, LED_B_BIT, false);
    // Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_B_GPIO, LED_B_BIT, true);

    /******************/
    Chip_SCU_PinMuxSet(LED_1_PORT, LED_1_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_1_FUNC);
1a0005b0:	2250      	movs	r2, #80	@ 0x50
1a0005b2:	210a      	movs	r1, #10
1a0005b4:	2002      	movs	r0, #2
1a0005b6:	f7ff ff41 	bl	1a00043c <Chip_SCU_PinMuxSet>
    led_amarillo = DigitalOutputCreate(LED_1_GPIO, LED_1_BIT);
1a0005ba:	210e      	movs	r1, #14
1a0005bc:	2000      	movs	r0, #0
1a0005be:	f7ff fedd 	bl	1a00037c <DigitalOutputCreate>
1a0005c2:	4603      	mov	r3, r0
1a0005c4:	4a10      	ldr	r2, [pc, #64]	@ (1a000608 <ConfigureLeds+0xa4>)
1a0005c6:	6013      	str	r3, [r2, #0]
    // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_1_GPIO, LED_1_BIT, false);
    // Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_1_GPIO, LED_1_BIT, true);

    Chip_SCU_PinMuxSet(LED_2_PORT, LED_2_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_2_FUNC);
1a0005c8:	2250      	movs	r2, #80	@ 0x50
1a0005ca:	210b      	movs	r1, #11
1a0005cc:	2002      	movs	r0, #2
1a0005ce:	f7ff ff35 	bl	1a00043c <Chip_SCU_PinMuxSet>
    led_rojo = DigitalOutputCreate(LED_2_GPIO, LED_2_BIT);
1a0005d2:	210b      	movs	r1, #11
1a0005d4:	2001      	movs	r0, #1
1a0005d6:	f7ff fed1 	bl	1a00037c <DigitalOutputCreate>
1a0005da:	4603      	mov	r3, r0
1a0005dc:	4a0b      	ldr	r2, [pc, #44]	@ (1a00060c <ConfigureLeds+0xa8>)
1a0005de:	6013      	str	r3, [r2, #0]
    // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_2_GPIO, LED_2_BIT, false);
    // Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_2_GPIO, LED_2_BIT, true);

    Chip_SCU_PinMuxSet(LED_3_PORT, LED_3_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_3_FUNC);
1a0005e0:	2250      	movs	r2, #80	@ 0x50
1a0005e2:	210c      	movs	r1, #12
1a0005e4:	2002      	movs	r0, #2
1a0005e6:	f7ff ff29 	bl	1a00043c <Chip_SCU_PinMuxSet>
    led_verde = DigitalOutputCreate(LED_3_GPIO, LED_3_BIT);
1a0005ea:	210c      	movs	r1, #12
1a0005ec:	2001      	movs	r0, #1
1a0005ee:	f7ff fec5 	bl	1a00037c <DigitalOutputCreate>
1a0005f2:	4603      	mov	r3, r0
1a0005f4:	4a06      	ldr	r2, [pc, #24]	@ (1a000610 <ConfigureLeds+0xac>)
1a0005f6:	6013      	str	r3, [r2, #0]
    // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_3_GPIO, LED_3_BIT, false);
    // Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_3_GPIO, LED_3_BIT, true);
}
1a0005f8:	bf00      	nop
1a0005fa:	bd80      	pop	{r7, pc}
1a0005fc:	10000060 	.word	0x10000060
1a000600:	10000064 	.word	0x10000064
1a000604:	10000068 	.word	0x10000068
1a000608:	1000005c 	.word	0x1000005c
1a00060c:	10000054 	.word	0x10000054
1a000610:	10000058 	.word	0x10000058

1a000614 <ConfigureKeys>:

static void ConfigureKeys(void) {
1a000614:	b580      	push	{r7, lr}
1a000616:	af00      	add	r7, sp, #0
    Chip_SCU_PinMuxSet(TEC_1_PORT, TEC_1_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_1_FUNC);
1a000618:	2240      	movs	r2, #64	@ 0x40
1a00061a:	2100      	movs	r1, #0
1a00061c:	2001      	movs	r0, #1
1a00061e:	f7ff ff0d 	bl	1a00043c <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_1_GPIO, TEC_1_BIT, false);
1a000622:	2300      	movs	r3, #0
1a000624:	2204      	movs	r2, #4
1a000626:	2100      	movs	r1, #0
1a000628:	4812      	ldr	r0, [pc, #72]	@ (1a000674 <ConfigureKeys+0x60>)
1a00062a:	f7ff ff7a 	bl	1a000522 <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(TEC_2_PORT, TEC_2_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_2_FUNC);
1a00062e:	2240      	movs	r2, #64	@ 0x40
1a000630:	2101      	movs	r1, #1
1a000632:	2001      	movs	r0, #1
1a000634:	f7ff ff02 	bl	1a00043c <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_2_GPIO, TEC_2_BIT, false);
1a000638:	2300      	movs	r3, #0
1a00063a:	2208      	movs	r2, #8
1a00063c:	2100      	movs	r1, #0
1a00063e:	480d      	ldr	r0, [pc, #52]	@ (1a000674 <ConfigureKeys+0x60>)
1a000640:	f7ff ff6f 	bl	1a000522 <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(TEC_3_PORT, TEC_3_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_3_FUNC);
1a000644:	2240      	movs	r2, #64	@ 0x40
1a000646:	2102      	movs	r1, #2
1a000648:	2001      	movs	r0, #1
1a00064a:	f7ff fef7 	bl	1a00043c <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_3_GPIO, TEC_3_BIT, false);
1a00064e:	2300      	movs	r3, #0
1a000650:	2209      	movs	r2, #9
1a000652:	2100      	movs	r1, #0
1a000654:	4807      	ldr	r0, [pc, #28]	@ (1a000674 <ConfigureKeys+0x60>)
1a000656:	f7ff ff64 	bl	1a000522 <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(TEC_4_PORT, TEC_4_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_4_FUNC);
1a00065a:	2240      	movs	r2, #64	@ 0x40
1a00065c:	2106      	movs	r1, #6
1a00065e:	2001      	movs	r0, #1
1a000660:	f7ff feec 	bl	1a00043c <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_4_GPIO, TEC_4_BIT, false);
1a000664:	2300      	movs	r3, #0
1a000666:	2209      	movs	r2, #9
1a000668:	2101      	movs	r1, #1
1a00066a:	4802      	ldr	r0, [pc, #8]	@ (1a000674 <ConfigureKeys+0x60>)
1a00066c:	f7ff ff59 	bl	1a000522 <Chip_GPIO_SetPinDIR>
}
1a000670:	bf00      	nop
1a000672:	bd80      	pop	{r7, pc}
1a000674:	400f4000 	.word	0x400f4000

1a000678 <FlashLed>:

static void FlashLed(void) {
1a000678:	b580      	push	{r7, lr}
1a00067a:	af00      	add	r7, sp, #0
    static int divisor = 0;
    static rgb_color_t state = LED_BLUE_OFF;

    divisor++;
1a00067c:	4b25      	ldr	r3, [pc, #148]	@ (1a000714 <FlashLed+0x9c>)
1a00067e:	681b      	ldr	r3, [r3, #0]
1a000680:	3301      	adds	r3, #1
1a000682:	4a24      	ldr	r2, [pc, #144]	@ (1a000714 <FlashLed+0x9c>)
1a000684:	6013      	str	r3, [r2, #0]
    if (divisor == 5) {
1a000686:	4b23      	ldr	r3, [pc, #140]	@ (1a000714 <FlashLed+0x9c>)
1a000688:	681b      	ldr	r3, [r3, #0]
1a00068a:	2b05      	cmp	r3, #5
1a00068c:	d13f      	bne.n	1a00070e <FlashLed+0x96>
        divisor = 0;
1a00068e:	4b21      	ldr	r3, [pc, #132]	@ (1a000714 <FlashLed+0x9c>)
1a000690:	2200      	movs	r2, #0
1a000692:	601a      	str	r2, [r3, #0]
        state = (state + 1) % (LED_BLUE_OFF + 1);
1a000694:	4b20      	ldr	r3, [pc, #128]	@ (1a000718 <FlashLed+0xa0>)
1a000696:	781b      	ldrb	r3, [r3, #0]
1a000698:	1c5a      	adds	r2, r3, #1
1a00069a:	4b20      	ldr	r3, [pc, #128]	@ (1a00071c <FlashLed+0xa4>)
1a00069c:	fb83 3102 	smull	r3, r1, r3, r2
1a0006a0:	17d3      	asrs	r3, r2, #31
1a0006a2:	1ac9      	subs	r1, r1, r3
1a0006a4:	460b      	mov	r3, r1
1a0006a6:	005b      	lsls	r3, r3, #1
1a0006a8:	440b      	add	r3, r1
1a0006aa:	005b      	lsls	r3, r3, #1
1a0006ac:	1ad1      	subs	r1, r2, r3
1a0006ae:	b2ca      	uxtb	r2, r1
1a0006b0:	4b19      	ldr	r3, [pc, #100]	@ (1a000718 <FlashLed+0xa0>)
1a0006b2:	701a      	strb	r2, [r3, #0]

        switch (state) {
1a0006b4:	4b18      	ldr	r3, [pc, #96]	@ (1a000718 <FlashLed+0xa0>)
1a0006b6:	781b      	ldrb	r3, [r3, #0]
1a0006b8:	2b04      	cmp	r3, #4
1a0006ba:	d012      	beq.n	1a0006e2 <FlashLed+0x6a>
1a0006bc:	2b04      	cmp	r3, #4
1a0006be:	dc16      	bgt.n	1a0006ee <FlashLed+0x76>
1a0006c0:	2b00      	cmp	r3, #0
1a0006c2:	d002      	beq.n	1a0006ca <FlashLed+0x52>
1a0006c4:	2b02      	cmp	r3, #2
1a0006c6:	d006      	beq.n	1a0006d6 <FlashLed+0x5e>
1a0006c8:	e011      	b.n	1a0006ee <FlashLed+0x76>
        case LED_RED_ON:
            // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_R_GPIO, LED_R_BIT, true);
            DigitalOutputActivate(led_rgb_rojo);
1a0006ca:	4b15      	ldr	r3, [pc, #84]	@ (1a000720 <FlashLed+0xa8>)
1a0006cc:	681b      	ldr	r3, [r3, #0]
1a0006ce:	4618      	mov	r0, r3
1a0006d0:	f7ff fe78 	bl	1a0003c4 <DigitalOutputActivate>
            break;
1a0006d4:	e01b      	b.n	1a00070e <FlashLed+0x96>
        case LED_GREEN_ON:
            // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_G_GPIO, LED_G_BIT, true);
            DigitalOutputActivate(led_rgb_verde);
1a0006d6:	4b13      	ldr	r3, [pc, #76]	@ (1a000724 <FlashLed+0xac>)
1a0006d8:	681b      	ldr	r3, [r3, #0]
1a0006da:	4618      	mov	r0, r3
1a0006dc:	f7ff fe72 	bl	1a0003c4 <DigitalOutputActivate>
            break;
1a0006e0:	e015      	b.n	1a00070e <FlashLed+0x96>
        case LED_BLUE_ON:
            // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_B_GPIO, LED_B_BIT, true);
            DigitalOutputActivate(led_rgb_azul);
1a0006e2:	4b11      	ldr	r3, [pc, #68]	@ (1a000728 <FlashLed+0xb0>)
1a0006e4:	681b      	ldr	r3, [r3, #0]
1a0006e6:	4618      	mov	r0, r3
1a0006e8:	f7ff fe6c 	bl	1a0003c4 <DigitalOutputActivate>
            break;
1a0006ec:	e00f      	b.n	1a00070e <FlashLed+0x96>
        default:
            // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_R_GPIO, LED_R_BIT, false);
            // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_G_GPIO, LED_G_BIT, false);
            // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_B_GPIO, LED_B_BIT, false);
            DigitalOutputDeactivate(led_rgb_rojo);
1a0006ee:	4b0c      	ldr	r3, [pc, #48]	@ (1a000720 <FlashLed+0xa8>)
1a0006f0:	681b      	ldr	r3, [r3, #0]
1a0006f2:	4618      	mov	r0, r3
1a0006f4:	f7ff fe7a 	bl	1a0003ec <DigitalOutputDeactivate>
            DigitalOutputDeactivate(led_rgb_verde);
1a0006f8:	4b0a      	ldr	r3, [pc, #40]	@ (1a000724 <FlashLed+0xac>)
1a0006fa:	681b      	ldr	r3, [r3, #0]
1a0006fc:	4618      	mov	r0, r3
1a0006fe:	f7ff fe75 	bl	1a0003ec <DigitalOutputDeactivate>
            DigitalOutputDeactivate(led_rgb_azul);
1a000702:	4b09      	ldr	r3, [pc, #36]	@ (1a000728 <FlashLed+0xb0>)
1a000704:	681b      	ldr	r3, [r3, #0]
1a000706:	4618      	mov	r0, r3
1a000708:	f7ff fe70 	bl	1a0003ec <DigitalOutputDeactivate>
            break;
1a00070c:	bf00      	nop
        }
    }
}
1a00070e:	bf00      	nop
1a000710:	bd80      	pop	{r7, pc}
1a000712:	bf00      	nop
1a000714:	1000006c 	.word	0x1000006c
1a000718:	10000000 	.word	0x10000000
1a00071c:	2aaaaaab 	.word	0x2aaaaaab
1a000720:	10000060 	.word	0x10000060
1a000724:	10000064 	.word	0x10000064
1a000728:	10000068 	.word	0x10000068

1a00072c <SwitchLed>:

static void SwitchLed(void) {
1a00072c:	b580      	push	{r7, lr}
1a00072e:	af00      	add	r7, sp, #0
    if (Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, TEC_1_GPIO, TEC_1_BIT) == 0) {
1a000730:	2204      	movs	r2, #4
1a000732:	2100      	movs	r1, #0
1a000734:	480f      	ldr	r0, [pc, #60]	@ (1a000774 <SwitchLed+0x48>)
1a000736:	f7ff fe9b 	bl	1a000470 <Chip_GPIO_ReadPortBit>
1a00073a:	4603      	mov	r3, r0
1a00073c:	f083 0301 	eor.w	r3, r3, #1
1a000740:	b2db      	uxtb	r3, r3
1a000742:	2b00      	cmp	r3, #0
1a000744:	d004      	beq.n	1a000750 <SwitchLed+0x24>
        // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_1_GPIO, LED_1_BIT, true);
        DigitalOutputActivate(led_amarillo);
1a000746:	4b0c      	ldr	r3, [pc, #48]	@ (1a000778 <SwitchLed+0x4c>)
1a000748:	681b      	ldr	r3, [r3, #0]
1a00074a:	4618      	mov	r0, r3
1a00074c:	f7ff fe3a 	bl	1a0003c4 <DigitalOutputActivate>
    }
    if (Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, TEC_2_GPIO, TEC_2_BIT) == 0) {
1a000750:	2208      	movs	r2, #8
1a000752:	2100      	movs	r1, #0
1a000754:	4807      	ldr	r0, [pc, #28]	@ (1a000774 <SwitchLed+0x48>)
1a000756:	f7ff fe8b 	bl	1a000470 <Chip_GPIO_ReadPortBit>
1a00075a:	4603      	mov	r3, r0
1a00075c:	f083 0301 	eor.w	r3, r3, #1
1a000760:	b2db      	uxtb	r3, r3
1a000762:	2b00      	cmp	r3, #0
1a000764:	d004      	beq.n	1a000770 <SwitchLed+0x44>
        // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_1_GPIO, LED_1_BIT, false);
        DigitalOutputDeactivate(led_amarillo);
1a000766:	4b04      	ldr	r3, [pc, #16]	@ (1a000778 <SwitchLed+0x4c>)
1a000768:	681b      	ldr	r3, [r3, #0]
1a00076a:	4618      	mov	r0, r3
1a00076c:	f7ff fe3e 	bl	1a0003ec <DigitalOutputDeactivate>
    }
    
}
1a000770:	bf00      	nop
1a000772:	bd80      	pop	{r7, pc}
1a000774:	400f4000 	.word	0x400f4000
1a000778:	1000005c 	.word	0x1000005c

1a00077c <ToggleLed>:

static void ToggleLed(void) {
1a00077c:	b580      	push	{r7, lr}
1a00077e:	b082      	sub	sp, #8
1a000780:	af00      	add	r7, sp, #0
    static bool last_state = false;
    bool current_state;
    current_state = (Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, TEC_3_GPIO, TEC_3_BIT) == 0);
1a000782:	2209      	movs	r2, #9
1a000784:	2100      	movs	r1, #0
1a000786:	4813      	ldr	r0, [pc, #76]	@ (1a0007d4 <ToggleLed+0x58>)
1a000788:	f7ff fe72 	bl	1a000470 <Chip_GPIO_ReadPortBit>
1a00078c:	4603      	mov	r3, r0
1a00078e:	2b00      	cmp	r3, #0
1a000790:	bf14      	ite	ne
1a000792:	2301      	movne	r3, #1
1a000794:	2300      	moveq	r3, #0
1a000796:	b2db      	uxtb	r3, r3
1a000798:	f083 0301 	eor.w	r3, r3, #1
1a00079c:	b2db      	uxtb	r3, r3
1a00079e:	71fb      	strb	r3, [r7, #7]
1a0007a0:	79fb      	ldrb	r3, [r7, #7]
1a0007a2:	f003 0301 	and.w	r3, r3, #1
1a0007a6:	71fb      	strb	r3, [r7, #7]
    if ((current_state) && (!last_state)) {
1a0007a8:	79fb      	ldrb	r3, [r7, #7]
1a0007aa:	2b00      	cmp	r3, #0
1a0007ac:	d00b      	beq.n	1a0007c6 <ToggleLed+0x4a>
1a0007ae:	4b0a      	ldr	r3, [pc, #40]	@ (1a0007d8 <ToggleLed+0x5c>)
1a0007b0:	781b      	ldrb	r3, [r3, #0]
1a0007b2:	f083 0301 	eor.w	r3, r3, #1
1a0007b6:	b2db      	uxtb	r3, r3
1a0007b8:	2b00      	cmp	r3, #0
1a0007ba:	d004      	beq.n	1a0007c6 <ToggleLed+0x4a>
        // Chip_GPIO_SetPinToggle(LPC_GPIO_PORT, LED_2_GPIO, LED_2_BIT);
        DigitalOutputToggle(led_rojo);
1a0007bc:	4b07      	ldr	r3, [pc, #28]	@ (1a0007dc <ToggleLed+0x60>)
1a0007be:	681b      	ldr	r3, [r3, #0]
1a0007c0:	4618      	mov	r0, r3
1a0007c2:	f7ff fe27 	bl	1a000414 <DigitalOutputToggle>
    }
    last_state = current_state;
1a0007c6:	4a04      	ldr	r2, [pc, #16]	@ (1a0007d8 <ToggleLed+0x5c>)
1a0007c8:	79fb      	ldrb	r3, [r7, #7]
1a0007ca:	7013      	strb	r3, [r2, #0]

}
1a0007cc:	bf00      	nop
1a0007ce:	3708      	adds	r7, #8
1a0007d0:	46bd      	mov	sp, r7
1a0007d2:	bd80      	pop	{r7, pc}
1a0007d4:	400f4000 	.word	0x400f4000
1a0007d8:	10000070 	.word	0x10000070
1a0007dc:	10000054 	.word	0x10000054

1a0007e0 <TestLed>:

static void TestLed(void) {
1a0007e0:	b580      	push	{r7, lr}
1a0007e2:	af00      	add	r7, sp, #0
    if (Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, TEC_4_GPIO, TEC_4_BIT) == 0) {
1a0007e4:	2209      	movs	r2, #9
1a0007e6:	2101      	movs	r1, #1
1a0007e8:	480a      	ldr	r0, [pc, #40]	@ (1a000814 <TestLed+0x34>)
1a0007ea:	f7ff fe41 	bl	1a000470 <Chip_GPIO_ReadPortBit>
1a0007ee:	4603      	mov	r3, r0
1a0007f0:	f083 0301 	eor.w	r3, r3, #1
1a0007f4:	b2db      	uxtb	r3, r3
1a0007f6:	2b00      	cmp	r3, #0
1a0007f8:	d005      	beq.n	1a000806 <TestLed+0x26>
    // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_3_GPIO, LED_3_BIT, true);
        DigitalOutputActivate(led_verde);
1a0007fa:	4b07      	ldr	r3, [pc, #28]	@ (1a000818 <TestLed+0x38>)
1a0007fc:	681b      	ldr	r3, [r3, #0]
1a0007fe:	4618      	mov	r0, r3
1a000800:	f7ff fde0 	bl	1a0003c4 <DigitalOutputActivate>
    } else {
        // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_3_GPIO, LED_3_BIT, false);
        DigitalOutputDeactivate(led_verde);
    }
}
1a000804:	e004      	b.n	1a000810 <TestLed+0x30>
        DigitalOutputDeactivate(led_verde);
1a000806:	4b04      	ldr	r3, [pc, #16]	@ (1a000818 <TestLed+0x38>)
1a000808:	681b      	ldr	r3, [r3, #0]
1a00080a:	4618      	mov	r0, r3
1a00080c:	f7ff fdee 	bl	1a0003ec <DigitalOutputDeactivate>
}
1a000810:	bf00      	nop
1a000812:	bd80      	pop	{r7, pc}
1a000814:	400f4000 	.word	0x400f4000
1a000818:	10000058 	.word	0x10000058

1a00081c <Delay>:

static void Delay(void) {
1a00081c:	b480      	push	{r7}
1a00081e:	b083      	sub	sp, #12
1a000820:	af00      	add	r7, sp, #0
    for (int index = 0; index < 100; index++) {
1a000822:	2300      	movs	r3, #0
1a000824:	607b      	str	r3, [r7, #4]
1a000826:	e00e      	b.n	1a000846 <Delay+0x2a>
        for (int delay = 0; delay < 25000; delay++) {
1a000828:	2300      	movs	r3, #0
1a00082a:	603b      	str	r3, [r7, #0]
1a00082c:	e003      	b.n	1a000836 <Delay+0x1a>
            __asm("NOP");
1a00082e:	bf00      	nop
        for (int delay = 0; delay < 25000; delay++) {
1a000830:	683b      	ldr	r3, [r7, #0]
1a000832:	3301      	adds	r3, #1
1a000834:	603b      	str	r3, [r7, #0]
1a000836:	683b      	ldr	r3, [r7, #0]
1a000838:	f246 12a7 	movw	r2, #24999	@ 0x61a7
1a00083c:	4293      	cmp	r3, r2
1a00083e:	ddf6      	ble.n	1a00082e <Delay+0x12>
    for (int index = 0; index < 100; index++) {
1a000840:	687b      	ldr	r3, [r7, #4]
1a000842:	3301      	adds	r3, #1
1a000844:	607b      	str	r3, [r7, #4]
1a000846:	687b      	ldr	r3, [r7, #4]
1a000848:	2b63      	cmp	r3, #99	@ 0x63
1a00084a:	dded      	ble.n	1a000828 <Delay+0xc>
        }
    }
}
1a00084c:	bf00      	nop
1a00084e:	bf00      	nop
1a000850:	370c      	adds	r7, #12
1a000852:	46bd      	mov	sp, r7
1a000854:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000858:	4770      	bx	lr

1a00085a <main>:

/* === Public function implementation ========================================================== */

int main(void) {
1a00085a:	b580      	push	{r7, lr}
1a00085c:	af00      	add	r7, sp, #0

    BoardSetup();
1a00085e:	f000 f97d 	bl	1a000b5c <BoardSetup>
    ConfigureLeds();
1a000862:	f7ff fe7f 	bl	1a000564 <ConfigureLeds>
    ConfigureKeys();
1a000866:	f7ff fed5 	bl	1a000614 <ConfigureKeys>

    while (true) {
        FlashLed();
1a00086a:	f7ff ff05 	bl	1a000678 <FlashLed>
        SwitchLed();
1a00086e:	f7ff ff5d 	bl	1a00072c <SwitchLed>
        ToggleLed();
1a000872:	f7ff ff83 	bl	1a00077c <ToggleLed>
        TestLed();
1a000876:	f7ff ffb3 	bl	1a0007e0 <TestLed>

        Delay();
1a00087a:	f7ff ffcf 	bl	1a00081c <Delay>
        FlashLed();
1a00087e:	bf00      	nop
1a000880:	e7f3      	b.n	1a00086a <main+0x10>
	...

1a000884 <ResetISR>:
void ResetISR(void) {
1a000884:	b580      	push	{r7, lr}
1a000886:	b088      	sub	sp, #32
1a000888:	af00      	add	r7, sp, #0
    __asm volatile("cpsid i");
1a00088a:	b672      	cpsid	i
    unsigned int * RESET_CONTROL = (unsigned int *)0x40053100;
1a00088c:	4b2c      	ldr	r3, [pc, #176]	@ (1a000940 <ResetISR+0xbc>)
1a00088e:	617b      	str	r3, [r7, #20]
    *(RESET_CONTROL + 0) = 0x10DF1000;
1a000890:	697b      	ldr	r3, [r7, #20]
1a000892:	4a2c      	ldr	r2, [pc, #176]	@ (1a000944 <ResetISR+0xc0>)
1a000894:	601a      	str	r2, [r3, #0]
    *(RESET_CONTROL + 1) = 0x01DFF7FF;
1a000896:	697b      	ldr	r3, [r7, #20]
1a000898:	3304      	adds	r3, #4
1a00089a:	4a2b      	ldr	r2, [pc, #172]	@ (1a000948 <ResetISR+0xc4>)
1a00089c:	601a      	str	r2, [r3, #0]
    volatile unsigned int * NVIC_ICPR = (unsigned int *)0xE000E280;
1a00089e:	4b2b      	ldr	r3, [pc, #172]	@ (1a00094c <ResetISR+0xc8>)
1a0008a0:	613b      	str	r3, [r7, #16]
    for (irqpendloop = 0; irqpendloop < 8; irqpendloop++) {
1a0008a2:	2300      	movs	r3, #0
1a0008a4:	61fb      	str	r3, [r7, #28]
1a0008a6:	e009      	b.n	1a0008bc <ResetISR+0x38>
        *(NVIC_ICPR + irqpendloop) = 0xFFFFFFFF;
1a0008a8:	69fb      	ldr	r3, [r7, #28]
1a0008aa:	009b      	lsls	r3, r3, #2
1a0008ac:	693a      	ldr	r2, [r7, #16]
1a0008ae:	4413      	add	r3, r2
1a0008b0:	f04f 32ff 	mov.w	r2, #4294967295
1a0008b4:	601a      	str	r2, [r3, #0]
    for (irqpendloop = 0; irqpendloop < 8; irqpendloop++) {
1a0008b6:	69fb      	ldr	r3, [r7, #28]
1a0008b8:	3301      	adds	r3, #1
1a0008ba:	61fb      	str	r3, [r7, #28]
1a0008bc:	69fb      	ldr	r3, [r7, #28]
1a0008be:	2b07      	cmp	r3, #7
1a0008c0:	d9f2      	bls.n	1a0008a8 <ResetISR+0x24>
    __asm volatile("cpsie i");
1a0008c2:	b662      	cpsie	i
    SectionTableAddr = &__data_section_table;
1a0008c4:	4b22      	ldr	r3, [pc, #136]	@ (1a000950 <ResetISR+0xcc>)
1a0008c6:	61bb      	str	r3, [r7, #24]
    while (SectionTableAddr < &__data_section_table_end) {
1a0008c8:	e013      	b.n	1a0008f2 <ResetISR+0x6e>
        LoadAddr = *SectionTableAddr++;
1a0008ca:	69bb      	ldr	r3, [r7, #24]
1a0008cc:	1d1a      	adds	r2, r3, #4
1a0008ce:	61ba      	str	r2, [r7, #24]
1a0008d0:	681b      	ldr	r3, [r3, #0]
1a0008d2:	603b      	str	r3, [r7, #0]
        ExeAddr = *SectionTableAddr++;
1a0008d4:	69bb      	ldr	r3, [r7, #24]
1a0008d6:	1d1a      	adds	r2, r3, #4
1a0008d8:	61ba      	str	r2, [r7, #24]
1a0008da:	681b      	ldr	r3, [r3, #0]
1a0008dc:	60bb      	str	r3, [r7, #8]
        SectionLen = *SectionTableAddr++;
1a0008de:	69bb      	ldr	r3, [r7, #24]
1a0008e0:	1d1a      	adds	r2, r3, #4
1a0008e2:	61ba      	str	r2, [r7, #24]
1a0008e4:	681b      	ldr	r3, [r3, #0]
1a0008e6:	607b      	str	r3, [r7, #4]
        data_init(LoadAddr, ExeAddr, SectionLen);
1a0008e8:	687a      	ldr	r2, [r7, #4]
1a0008ea:	68b9      	ldr	r1, [r7, #8]
1a0008ec:	6838      	ldr	r0, [r7, #0]
1a0008ee:	f7ff fc43 	bl	1a000178 <data_init>
    while (SectionTableAddr < &__data_section_table_end) {
1a0008f2:	69bb      	ldr	r3, [r7, #24]
1a0008f4:	4a17      	ldr	r2, [pc, #92]	@ (1a000954 <ResetISR+0xd0>)
1a0008f6:	4293      	cmp	r3, r2
1a0008f8:	d3e7      	bcc.n	1a0008ca <ResetISR+0x46>
    while (SectionTableAddr < &__bss_section_table_end) {
1a0008fa:	e00d      	b.n	1a000918 <ResetISR+0x94>
        ExeAddr = *SectionTableAddr++;
1a0008fc:	69bb      	ldr	r3, [r7, #24]
1a0008fe:	1d1a      	adds	r2, r3, #4
1a000900:	61ba      	str	r2, [r7, #24]
1a000902:	681b      	ldr	r3, [r3, #0]
1a000904:	60bb      	str	r3, [r7, #8]
        SectionLen = *SectionTableAddr++;
1a000906:	69bb      	ldr	r3, [r7, #24]
1a000908:	1d1a      	adds	r2, r3, #4
1a00090a:	61ba      	str	r2, [r7, #24]
1a00090c:	681b      	ldr	r3, [r3, #0]
1a00090e:	607b      	str	r3, [r7, #4]
        bss_init(ExeAddr, SectionLen);
1a000910:	6879      	ldr	r1, [r7, #4]
1a000912:	68b8      	ldr	r0, [r7, #8]
1a000914:	f7ff fc53 	bl	1a0001be <bss_init>
    while (SectionTableAddr < &__bss_section_table_end) {
1a000918:	69bb      	ldr	r3, [r7, #24]
1a00091a:	4a0f      	ldr	r2, [pc, #60]	@ (1a000958 <ResetISR+0xd4>)
1a00091c:	4293      	cmp	r3, r2
1a00091e:	d3ed      	bcc.n	1a0008fc <ResetISR+0x78>
    asm("LDR.W R0, =0xE000ED88");
1a000920:	f8df 0040 	ldr.w	r0, [pc, #64]	@ 1a000964 <ResetISR+0xe0>
    asm("LDR R1, [R0]");
1a000924:	6801      	ldr	r1, [r0, #0]
    asm(" ORR R1, R1, #(0xF << 20)");
1a000926:	f441 0170 	orr.w	r1, r1, #15728640	@ 0xf00000
    asm("STR R1, [R0]");
1a00092a:	6001      	str	r1, [r0, #0]
    unsigned int * pSCB_VTOR = (unsigned int *)0xE000ED08;
1a00092c:	4b0b      	ldr	r3, [pc, #44]	@ (1a00095c <ResetISR+0xd8>)
1a00092e:	60fb      	str	r3, [r7, #12]
        *pSCB_VTOR = (unsigned int)g_pfnVectors;
1a000930:	4a0b      	ldr	r2, [pc, #44]	@ (1a000960 <ResetISR+0xdc>)
1a000932:	68fb      	ldr	r3, [r7, #12]
1a000934:	601a      	str	r2, [r3, #0]
    main();
1a000936:	f7ff ff90 	bl	1a00085a <main>
    while (1) {
1a00093a:	bf00      	nop
1a00093c:	e7fd      	b.n	1a00093a <ResetISR+0xb6>
1a00093e:	bf00      	nop
1a000940:	40053100 	.word	0x40053100
1a000944:	10df1000 	.word	0x10df1000
1a000948:	01dff7ff 	.word	0x01dff7ff
1a00094c:	e000e280 	.word	0xe000e280
1a000950:	1a000114 	.word	0x1a000114
1a000954:	1a000150 	.word	0x1a000150
1a000958:	1a000178 	.word	0x1a000178
1a00095c:	e000ed08 	.word	0xe000ed08
1a000960:	1a000000 	.word	0x1a000000
1a000964:	e000ed88 	.word	0xe000ed88

1a000968 <Chip_SCU_PinMuxSet>:
{
1a000968:	b480      	push	{r7}
1a00096a:	b083      	sub	sp, #12
1a00096c:	af00      	add	r7, sp, #0
1a00096e:	4603      	mov	r3, r0
1a000970:	71fb      	strb	r3, [r7, #7]
1a000972:	460b      	mov	r3, r1
1a000974:	71bb      	strb	r3, [r7, #6]
1a000976:	4613      	mov	r3, r2
1a000978:	80bb      	strh	r3, [r7, #4]
	LPC_SCU->SFSP[port][pin] = modefunc;
1a00097a:	4807      	ldr	r0, [pc, #28]	@ (1a000998 <Chip_SCU_PinMuxSet+0x30>)
1a00097c:	79f9      	ldrb	r1, [r7, #7]
1a00097e:	79bb      	ldrb	r3, [r7, #6]
1a000980:	88ba      	ldrh	r2, [r7, #4]
1a000982:	0149      	lsls	r1, r1, #5
1a000984:	440b      	add	r3, r1
1a000986:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
}
1a00098a:	bf00      	nop
1a00098c:	370c      	adds	r7, #12
1a00098e:	46bd      	mov	sp, r7
1a000990:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000994:	4770      	bx	lr
1a000996:	bf00      	nop
1a000998:	40086000 	.word	0x40086000

1a00099c <Chip_CREG_SetFlashAcceleration>:
 * This function should be called with the higher frequency before the clock frequency is
 * increased and it should be called with the new lower value after the clock frequency is
 * decreased.
 */
STATIC INLINE void Chip_CREG_SetFlashAcceleration(uint32_t Hz)
{
1a00099c:	b480      	push	{r7}
1a00099e:	b085      	sub	sp, #20
1a0009a0:	af00      	add	r7, sp, #0
1a0009a2:	6078      	str	r0, [r7, #4]
	uint32_t FAValue = Hz / 21510000;
1a0009a4:	687b      	ldr	r3, [r7, #4]
1a0009a6:	4a10      	ldr	r2, [pc, #64]	@ (1a0009e8 <Chip_CREG_SetFlashAcceleration+0x4c>)
1a0009a8:	fba2 2303 	umull	r2, r3, r2, r3
1a0009ac:	0ddb      	lsrs	r3, r3, #23
1a0009ae:	60fb      	str	r3, [r7, #12]

	LPC_CREG->FLASHCFGA = (LPC_CREG->FLASHCFGA & (~(0xF << 12))) | (FAValue << 12);
1a0009b0:	4b0e      	ldr	r3, [pc, #56]	@ (1a0009ec <Chip_CREG_SetFlashAcceleration+0x50>)
1a0009b2:	f8d3 3120 	ldr.w	r3, [r3, #288]	@ 0x120
1a0009b6:	f423 4270 	bic.w	r2, r3, #61440	@ 0xf000
1a0009ba:	68fb      	ldr	r3, [r7, #12]
1a0009bc:	031b      	lsls	r3, r3, #12
1a0009be:	490b      	ldr	r1, [pc, #44]	@ (1a0009ec <Chip_CREG_SetFlashAcceleration+0x50>)
1a0009c0:	4313      	orrs	r3, r2
1a0009c2:	f8c1 3120 	str.w	r3, [r1, #288]	@ 0x120
	LPC_CREG->FLASHCFGB = (LPC_CREG->FLASHCFGB & (~(0xF << 12))) | (FAValue << 12);
1a0009c6:	4b09      	ldr	r3, [pc, #36]	@ (1a0009ec <Chip_CREG_SetFlashAcceleration+0x50>)
1a0009c8:	f8d3 3124 	ldr.w	r3, [r3, #292]	@ 0x124
1a0009cc:	f423 4270 	bic.w	r2, r3, #61440	@ 0xf000
1a0009d0:	68fb      	ldr	r3, [r7, #12]
1a0009d2:	031b      	lsls	r3, r3, #12
1a0009d4:	4905      	ldr	r1, [pc, #20]	@ (1a0009ec <Chip_CREG_SetFlashAcceleration+0x50>)
1a0009d6:	4313      	orrs	r3, r2
1a0009d8:	f8c1 3124 	str.w	r3, [r1, #292]	@ 0x124
}
1a0009dc:	bf00      	nop
1a0009de:	3714      	adds	r7, #20
1a0009e0:	46bd      	mov	sp, r7
1a0009e2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009e6:	4770      	bx	lr
1a0009e8:	63d6267d 	.word	0x63d6267d
1a0009ec:	40043000 	.word	0x40043000

1a0009f0 <Chip_GPIO_SetPinState>:
{
1a0009f0:	b480      	push	{r7}
1a0009f2:	b083      	sub	sp, #12
1a0009f4:	af00      	add	r7, sp, #0
1a0009f6:	6078      	str	r0, [r7, #4]
1a0009f8:	4608      	mov	r0, r1
1a0009fa:	4611      	mov	r1, r2
1a0009fc:	461a      	mov	r2, r3
1a0009fe:	4603      	mov	r3, r0
1a000a00:	70fb      	strb	r3, [r7, #3]
1a000a02:	460b      	mov	r3, r1
1a000a04:	70bb      	strb	r3, [r7, #2]
1a000a06:	4613      	mov	r3, r2
1a000a08:	707b      	strb	r3, [r7, #1]
	pGPIO->B[port][pin] = setting;
1a000a0a:	78fa      	ldrb	r2, [r7, #3]
1a000a0c:	78bb      	ldrb	r3, [r7, #2]
1a000a0e:	7878      	ldrb	r0, [r7, #1]
1a000a10:	6879      	ldr	r1, [r7, #4]
1a000a12:	0152      	lsls	r2, r2, #5
1a000a14:	440a      	add	r2, r1
1a000a16:	4413      	add	r3, r2
1a000a18:	4602      	mov	r2, r0
1a000a1a:	701a      	strb	r2, [r3, #0]
}
1a000a1c:	bf00      	nop
1a000a1e:	370c      	adds	r7, #12
1a000a20:	46bd      	mov	sp, r7
1a000a22:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a26:	4770      	bx	lr

1a000a28 <Chip_GPIO_SetPinDIROutput>:
{
1a000a28:	b480      	push	{r7}
1a000a2a:	b083      	sub	sp, #12
1a000a2c:	af00      	add	r7, sp, #0
1a000a2e:	6078      	str	r0, [r7, #4]
1a000a30:	460b      	mov	r3, r1
1a000a32:	70fb      	strb	r3, [r7, #3]
1a000a34:	4613      	mov	r3, r2
1a000a36:	70bb      	strb	r3, [r7, #2]
	pGPIO->DIR[port] |= 1UL << pin;
1a000a38:	78fa      	ldrb	r2, [r7, #3]
1a000a3a:	687b      	ldr	r3, [r7, #4]
1a000a3c:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a000a40:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000a44:	78bb      	ldrb	r3, [r7, #2]
1a000a46:	2201      	movs	r2, #1
1a000a48:	fa02 f303 	lsl.w	r3, r2, r3
1a000a4c:	78fa      	ldrb	r2, [r7, #3]
1a000a4e:	4319      	orrs	r1, r3
1a000a50:	687b      	ldr	r3, [r7, #4]
1a000a52:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a000a56:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a000a5a:	bf00      	nop
1a000a5c:	370c      	adds	r7, #12
1a000a5e:	46bd      	mov	sp, r7
1a000a60:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a64:	4770      	bx	lr

1a000a66 <Chip_GPIO_SetPinDIRInput>:
{
1a000a66:	b480      	push	{r7}
1a000a68:	b083      	sub	sp, #12
1a000a6a:	af00      	add	r7, sp, #0
1a000a6c:	6078      	str	r0, [r7, #4]
1a000a6e:	460b      	mov	r3, r1
1a000a70:	70fb      	strb	r3, [r7, #3]
1a000a72:	4613      	mov	r3, r2
1a000a74:	70bb      	strb	r3, [r7, #2]
	pGPIO->DIR[port] &= ~(1UL << pin);
1a000a76:	78fa      	ldrb	r2, [r7, #3]
1a000a78:	687b      	ldr	r3, [r7, #4]
1a000a7a:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a000a7e:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000a82:	78bb      	ldrb	r3, [r7, #2]
1a000a84:	2201      	movs	r2, #1
1a000a86:	fa02 f303 	lsl.w	r3, r2, r3
1a000a8a:	43db      	mvns	r3, r3
1a000a8c:	78fa      	ldrb	r2, [r7, #3]
1a000a8e:	4019      	ands	r1, r3
1a000a90:	687b      	ldr	r3, [r7, #4]
1a000a92:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a000a96:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a000a9a:	bf00      	nop
1a000a9c:	370c      	adds	r7, #12
1a000a9e:	46bd      	mov	sp, r7
1a000aa0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000aa4:	4770      	bx	lr

1a000aa6 <Chip_GPIO_SetPinDIR>:
{
1a000aa6:	b580      	push	{r7, lr}
1a000aa8:	b082      	sub	sp, #8
1a000aaa:	af00      	add	r7, sp, #0
1a000aac:	6078      	str	r0, [r7, #4]
1a000aae:	4608      	mov	r0, r1
1a000ab0:	4611      	mov	r1, r2
1a000ab2:	461a      	mov	r2, r3
1a000ab4:	4603      	mov	r3, r0
1a000ab6:	70fb      	strb	r3, [r7, #3]
1a000ab8:	460b      	mov	r3, r1
1a000aba:	70bb      	strb	r3, [r7, #2]
1a000abc:	4613      	mov	r3, r2
1a000abe:	707b      	strb	r3, [r7, #1]
	if (output) {
1a000ac0:	787b      	ldrb	r3, [r7, #1]
1a000ac2:	2b00      	cmp	r3, #0
1a000ac4:	d006      	beq.n	1a000ad4 <Chip_GPIO_SetPinDIR+0x2e>
		Chip_GPIO_SetPinDIROutput(pGPIO, port, pin);
1a000ac6:	78ba      	ldrb	r2, [r7, #2]
1a000ac8:	78fb      	ldrb	r3, [r7, #3]
1a000aca:	4619      	mov	r1, r3
1a000acc:	6878      	ldr	r0, [r7, #4]
1a000ace:	f7ff ffab 	bl	1a000a28 <Chip_GPIO_SetPinDIROutput>
}
1a000ad2:	e005      	b.n	1a000ae0 <Chip_GPIO_SetPinDIR+0x3a>
		Chip_GPIO_SetPinDIRInput(pGPIO, port, pin);
1a000ad4:	78ba      	ldrb	r2, [r7, #2]
1a000ad6:	78fb      	ldrb	r3, [r7, #3]
1a000ad8:	4619      	mov	r1, r3
1a000ada:	6878      	ldr	r0, [r7, #4]
1a000adc:	f7ff ffc3 	bl	1a000a66 <Chip_GPIO_SetPinDIRInput>
}
1a000ae0:	bf00      	nop
1a000ae2:	3708      	adds	r7, #8
1a000ae4:	46bd      	mov	sp, r7
1a000ae6:	bd80      	pop	{r7, pc}

1a000ae8 <SetupClocking>:

/* === Private variable definitions ============================================================ */

/* === Private function implementation ========================================================= */

static void SetupClocking(void) {
1a000ae8:	b580      	push	{r7, lr}
1a000aea:	b082      	sub	sp, #8
1a000aec:	af00      	add	r7, sp, #0
    Chip_CREG_SetFlashAcceleration(MAX_CLOCK_FREQ);
1a000aee:	4818      	ldr	r0, [pc, #96]	@ (1a000b50 <SetupClocking+0x68>)
1a000af0:	f7ff ff54 	bl	1a00099c <Chip_CREG_SetFlashAcceleration>
    Chip_SetupCoreClock(CLKIN_CRYSTAL, MAX_CLOCK_FREQ, true);
1a000af4:	2201      	movs	r2, #1
1a000af6:	4916      	ldr	r1, [pc, #88]	@ (1a000b50 <SetupClocking+0x68>)
1a000af8:	2006      	movs	r0, #6
1a000afa:	f000 fd91 	bl	1a001620 <Chip_SetupCoreClock>

    /* Setup system base clocks and initial states. This won't enable and
       disable individual clocks, but sets up the base clock sources for
       each individual peripheral clock. */
    for (uint32_t i = 0; i < (sizeof(InitClkStates) / sizeof(InitClkStates[0])); ++i) {
1a000afe:	2300      	movs	r3, #0
1a000b00:	607b      	str	r3, [r7, #4]
1a000b02:	e011      	b.n	1a000b28 <SetupClocking+0x40>
        const struct CLK_BASE_STATES * c = &InitClkStates[i];
1a000b04:	687b      	ldr	r3, [r7, #4]
1a000b06:	009b      	lsls	r3, r3, #2
1a000b08:	4a12      	ldr	r2, [pc, #72]	@ (1a000b54 <SetupClocking+0x6c>)
1a000b0a:	4413      	add	r3, r2
1a000b0c:	603b      	str	r3, [r7, #0]
        Chip_Clock_SetBaseClock(c->clk, c->clkin, c->autoblock_enab, c->powerdn);
1a000b0e:	683b      	ldr	r3, [r7, #0]
1a000b10:	7818      	ldrb	r0, [r3, #0]
1a000b12:	683b      	ldr	r3, [r7, #0]
1a000b14:	7859      	ldrb	r1, [r3, #1]
1a000b16:	683b      	ldr	r3, [r7, #0]
1a000b18:	789a      	ldrb	r2, [r3, #2]
1a000b1a:	683b      	ldr	r3, [r7, #0]
1a000b1c:	78db      	ldrb	r3, [r3, #3]
1a000b1e:	f000 fc81 	bl	1a001424 <Chip_Clock_SetBaseClock>
    for (uint32_t i = 0; i < (sizeof(InitClkStates) / sizeof(InitClkStates[0])); ++i) {
1a000b22:	687b      	ldr	r3, [r7, #4]
1a000b24:	3301      	adds	r3, #1
1a000b26:	607b      	str	r3, [r7, #4]
1a000b28:	687b      	ldr	r3, [r7, #4]
1a000b2a:	2b00      	cmp	r3, #0
1a000b2c:	d0ea      	beq.n	1a000b04 <SetupClocking+0x1c>
    }

    /* Reset and enable 32Khz oscillator */
    LPC_CREG->CREG0 &= ~((1 << 3) | (1 << 2));
1a000b2e:	4b0a      	ldr	r3, [pc, #40]	@ (1a000b58 <SetupClocking+0x70>)
1a000b30:	685b      	ldr	r3, [r3, #4]
1a000b32:	4a09      	ldr	r2, [pc, #36]	@ (1a000b58 <SetupClocking+0x70>)
1a000b34:	f023 030c 	bic.w	r3, r3, #12
1a000b38:	6053      	str	r3, [r2, #4]
    LPC_CREG->CREG0 |= (1 << 1) | (1 << 0);
1a000b3a:	4b07      	ldr	r3, [pc, #28]	@ (1a000b58 <SetupClocking+0x70>)
1a000b3c:	685b      	ldr	r3, [r3, #4]
1a000b3e:	4a06      	ldr	r2, [pc, #24]	@ (1a000b58 <SetupClocking+0x70>)
1a000b40:	f043 0303 	orr.w	r3, r3, #3
1a000b44:	6053      	str	r3, [r2, #4]
}
1a000b46:	bf00      	nop
1a000b48:	3708      	adds	r7, #8
1a000b4a:	46bd      	mov	sp, r7
1a000b4c:	bd80      	pop	{r7, pc}
1a000b4e:	bf00      	nop
1a000b50:	0c28cb00 	.word	0x0c28cb00
1a000b54:	1a001ab0 	.word	0x1a001ab0
1a000b58:	40043000 	.word	0x40043000

1a000b5c <BoardSetup>:

/* === Public function implementation ========================================================== */

void BoardSetup(void) {
1a000b5c:	b580      	push	{r7, lr}
1a000b5e:	af00      	add	r7, sp, #0
    SetupClocking();
1a000b60:	f7ff ffc2 	bl	1a000ae8 <SetupClocking>
    SystemCoreClockUpdate();
1a000b64:	f000 f896 	bl	1a000c94 <SystemCoreClockUpdate>
    GpioSetDirection(TEC_1, false);
    GpioSetDirection(TEC_2, false);
    GpioSetDirection(TEC_3, false);
    GpioSetDirection(TEC_4, false);
#elif defined(USE_DRIVERS)
    Chip_SCU_PinMuxSet(LED_R_PORT, LED_R_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_R_FUNC);
1a000b68:	2254      	movs	r2, #84	@ 0x54
1a000b6a:	2100      	movs	r1, #0
1a000b6c:	2002      	movs	r0, #2
1a000b6e:	f7ff fefb 	bl	1a000968 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_R_GPIO, LED_R_BIT, false);
1a000b72:	2300      	movs	r3, #0
1a000b74:	2200      	movs	r2, #0
1a000b76:	2105      	movs	r1, #5
1a000b78:	4845      	ldr	r0, [pc, #276]	@ (1a000c90 <BoardSetup+0x134>)
1a000b7a:	f7ff ff39 	bl	1a0009f0 <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_R_GPIO, LED_R_BIT, true);
1a000b7e:	2301      	movs	r3, #1
1a000b80:	2200      	movs	r2, #0
1a000b82:	2105      	movs	r1, #5
1a000b84:	4842      	ldr	r0, [pc, #264]	@ (1a000c90 <BoardSetup+0x134>)
1a000b86:	f7ff ff8e 	bl	1a000aa6 <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(LED_G_PORT, LED_G_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_G_FUNC);
1a000b8a:	2254      	movs	r2, #84	@ 0x54
1a000b8c:	2101      	movs	r1, #1
1a000b8e:	2002      	movs	r0, #2
1a000b90:	f7ff feea 	bl	1a000968 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_G_GPIO, LED_G_BIT, false);
1a000b94:	2300      	movs	r3, #0
1a000b96:	2201      	movs	r2, #1
1a000b98:	2105      	movs	r1, #5
1a000b9a:	483d      	ldr	r0, [pc, #244]	@ (1a000c90 <BoardSetup+0x134>)
1a000b9c:	f7ff ff28 	bl	1a0009f0 <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_G_GPIO, LED_G_BIT, true);
1a000ba0:	2301      	movs	r3, #1
1a000ba2:	2201      	movs	r2, #1
1a000ba4:	2105      	movs	r1, #5
1a000ba6:	483a      	ldr	r0, [pc, #232]	@ (1a000c90 <BoardSetup+0x134>)
1a000ba8:	f7ff ff7d 	bl	1a000aa6 <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(LED_B_PORT, LED_B_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_B_FUNC);
1a000bac:	2254      	movs	r2, #84	@ 0x54
1a000bae:	2102      	movs	r1, #2
1a000bb0:	2002      	movs	r0, #2
1a000bb2:	f7ff fed9 	bl	1a000968 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_B_GPIO, LED_B_BIT, false);
1a000bb6:	2300      	movs	r3, #0
1a000bb8:	2202      	movs	r2, #2
1a000bba:	2105      	movs	r1, #5
1a000bbc:	4834      	ldr	r0, [pc, #208]	@ (1a000c90 <BoardSetup+0x134>)
1a000bbe:	f7ff ff17 	bl	1a0009f0 <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_B_GPIO, LED_B_BIT, true);
1a000bc2:	2301      	movs	r3, #1
1a000bc4:	2202      	movs	r2, #2
1a000bc6:	2105      	movs	r1, #5
1a000bc8:	4831      	ldr	r0, [pc, #196]	@ (1a000c90 <BoardSetup+0x134>)
1a000bca:	f7ff ff6c 	bl	1a000aa6 <Chip_GPIO_SetPinDIR>

    /******************/
    Chip_SCU_PinMuxSet(LED_1_PORT, LED_1_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_1_FUNC);
1a000bce:	2250      	movs	r2, #80	@ 0x50
1a000bd0:	210a      	movs	r1, #10
1a000bd2:	2002      	movs	r0, #2
1a000bd4:	f7ff fec8 	bl	1a000968 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_1_GPIO, LED_1_BIT, false);
1a000bd8:	2300      	movs	r3, #0
1a000bda:	220e      	movs	r2, #14
1a000bdc:	2100      	movs	r1, #0
1a000bde:	482c      	ldr	r0, [pc, #176]	@ (1a000c90 <BoardSetup+0x134>)
1a000be0:	f7ff ff06 	bl	1a0009f0 <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_1_GPIO, LED_1_BIT, true);
1a000be4:	2301      	movs	r3, #1
1a000be6:	220e      	movs	r2, #14
1a000be8:	2100      	movs	r1, #0
1a000bea:	4829      	ldr	r0, [pc, #164]	@ (1a000c90 <BoardSetup+0x134>)
1a000bec:	f7ff ff5b 	bl	1a000aa6 <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(LED_2_PORT, LED_2_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_2_FUNC);
1a000bf0:	2250      	movs	r2, #80	@ 0x50
1a000bf2:	210b      	movs	r1, #11
1a000bf4:	2002      	movs	r0, #2
1a000bf6:	f7ff feb7 	bl	1a000968 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_2_GPIO, LED_2_BIT, false);
1a000bfa:	2300      	movs	r3, #0
1a000bfc:	220b      	movs	r2, #11
1a000bfe:	2101      	movs	r1, #1
1a000c00:	4823      	ldr	r0, [pc, #140]	@ (1a000c90 <BoardSetup+0x134>)
1a000c02:	f7ff fef5 	bl	1a0009f0 <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_2_GPIO, LED_2_BIT, true);
1a000c06:	2301      	movs	r3, #1
1a000c08:	220b      	movs	r2, #11
1a000c0a:	2101      	movs	r1, #1
1a000c0c:	4820      	ldr	r0, [pc, #128]	@ (1a000c90 <BoardSetup+0x134>)
1a000c0e:	f7ff ff4a 	bl	1a000aa6 <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(LED_3_PORT, LED_3_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_3_FUNC);
1a000c12:	2250      	movs	r2, #80	@ 0x50
1a000c14:	210c      	movs	r1, #12
1a000c16:	2002      	movs	r0, #2
1a000c18:	f7ff fea6 	bl	1a000968 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_3_GPIO, LED_3_BIT, false);
1a000c1c:	2300      	movs	r3, #0
1a000c1e:	220c      	movs	r2, #12
1a000c20:	2101      	movs	r1, #1
1a000c22:	481b      	ldr	r0, [pc, #108]	@ (1a000c90 <BoardSetup+0x134>)
1a000c24:	f7ff fee4 	bl	1a0009f0 <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_3_GPIO, LED_3_BIT, true);
1a000c28:	2301      	movs	r3, #1
1a000c2a:	220c      	movs	r2, #12
1a000c2c:	2101      	movs	r1, #1
1a000c2e:	4818      	ldr	r0, [pc, #96]	@ (1a000c90 <BoardSetup+0x134>)
1a000c30:	f7ff ff39 	bl	1a000aa6 <Chip_GPIO_SetPinDIR>

    /******************/
    Chip_SCU_PinMuxSet(TEC_1_PORT, TEC_1_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_1_FUNC);
1a000c34:	2240      	movs	r2, #64	@ 0x40
1a000c36:	2100      	movs	r1, #0
1a000c38:	2001      	movs	r0, #1
1a000c3a:	f7ff fe95 	bl	1a000968 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_1_GPIO, TEC_1_BIT, false);
1a000c3e:	2300      	movs	r3, #0
1a000c40:	2204      	movs	r2, #4
1a000c42:	2100      	movs	r1, #0
1a000c44:	4812      	ldr	r0, [pc, #72]	@ (1a000c90 <BoardSetup+0x134>)
1a000c46:	f7ff ff2e 	bl	1a000aa6 <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(TEC_2_PORT, TEC_2_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_2_FUNC);
1a000c4a:	2240      	movs	r2, #64	@ 0x40
1a000c4c:	2101      	movs	r1, #1
1a000c4e:	2001      	movs	r0, #1
1a000c50:	f7ff fe8a 	bl	1a000968 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_2_GPIO, TEC_2_BIT, false);
1a000c54:	2300      	movs	r3, #0
1a000c56:	2208      	movs	r2, #8
1a000c58:	2100      	movs	r1, #0
1a000c5a:	480d      	ldr	r0, [pc, #52]	@ (1a000c90 <BoardSetup+0x134>)
1a000c5c:	f7ff ff23 	bl	1a000aa6 <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(TEC_3_PORT, TEC_3_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_3_FUNC);
1a000c60:	2240      	movs	r2, #64	@ 0x40
1a000c62:	2102      	movs	r1, #2
1a000c64:	2001      	movs	r0, #1
1a000c66:	f7ff fe7f 	bl	1a000968 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_3_GPIO, TEC_3_BIT, false);
1a000c6a:	2300      	movs	r3, #0
1a000c6c:	2209      	movs	r2, #9
1a000c6e:	2100      	movs	r1, #0
1a000c70:	4807      	ldr	r0, [pc, #28]	@ (1a000c90 <BoardSetup+0x134>)
1a000c72:	f7ff ff18 	bl	1a000aa6 <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(TEC_4_PORT, TEC_4_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_4_FUNC);
1a000c76:	2240      	movs	r2, #64	@ 0x40
1a000c78:	2106      	movs	r1, #6
1a000c7a:	2001      	movs	r0, #1
1a000c7c:	f7ff fe74 	bl	1a000968 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_4_GPIO, TEC_4_BIT, false);
1a000c80:	2300      	movs	r3, #0
1a000c82:	2209      	movs	r2, #9
1a000c84:	2101      	movs	r1, #1
1a000c86:	4802      	ldr	r0, [pc, #8]	@ (1a000c90 <BoardSetup+0x134>)
1a000c88:	f7ff ff0d 	bl	1a000aa6 <Chip_GPIO_SetPinDIR>
    the program does not execute when the board is not in debugging
    */
#if (ENABLE_ARM_SEMIHOSTING)
    initialise_monitor_handles();
#endif
}
1a000c8c:	bf00      	nop
1a000c8e:	bd80      	pop	{r7, pc}
1a000c90:	400f4000 	.word	0x400f4000

1a000c94 <SystemCoreClockUpdate>:


/* Update system core clock rate, should be called if the system has
   a clock rate change */
void SystemCoreClockUpdate(void)
{
1a000c94:	b580      	push	{r7, lr}
1a000c96:	af00      	add	r7, sp, #0
	/* CPU core speed */
	SystemCoreClock = Chip_Clock_GetRate(CLK_MX_MXCORE);
1a000c98:	2069      	movs	r0, #105	@ 0x69
1a000c9a:	f000 fc37 	bl	1a00150c <Chip_Clock_GetRate>
1a000c9e:	4603      	mov	r3, r0
1a000ca0:	4a01      	ldr	r2, [pc, #4]	@ (1a000ca8 <SystemCoreClockUpdate+0x14>)
1a000ca2:	6013      	str	r3, [r2, #0]
}
1a000ca4:	bf00      	nop
1a000ca6:	bd80      	pop	{r7, pc}
1a000ca8:	10000074 	.word	0x10000074

1a000cac <ABS>:

/*****************************************************************************
 * Private functions
 ****************************************************************************/
__STATIC_INLINE uint32_t ABS(int val)
{
1a000cac:	b480      	push	{r7}
1a000cae:	b083      	sub	sp, #12
1a000cb0:	af00      	add	r7, sp, #0
1a000cb2:	6078      	str	r0, [r7, #4]
	if (val < 0)
1a000cb4:	687b      	ldr	r3, [r7, #4]
1a000cb6:	2b00      	cmp	r3, #0
1a000cb8:	da02      	bge.n	1a000cc0 <ABS+0x14>
		return -val;
1a000cba:	687b      	ldr	r3, [r7, #4]
1a000cbc:	425b      	negs	r3, r3
1a000cbe:	e000      	b.n	1a000cc2 <ABS+0x16>
	return val;
1a000cc0:	687b      	ldr	r3, [r7, #4]
}
1a000cc2:	4618      	mov	r0, r3
1a000cc4:	370c      	adds	r7, #12
1a000cc6:	46bd      	mov	sp, r7
1a000cc8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ccc:	4770      	bx	lr
	...

1a000cd0 <pll_calc_divs>:

static void pll_calc_divs(uint32_t freq, PLL_PARAM_T *ppll)
{
1a000cd0:	b580      	push	{r7, lr}
1a000cd2:	b088      	sub	sp, #32
1a000cd4:	af00      	add	r7, sp, #0
1a000cd6:	6078      	str	r0, [r7, #4]
1a000cd8:	6039      	str	r1, [r7, #0]

	uint32_t prev = freq;
1a000cda:	687b      	ldr	r3, [r7, #4]
1a000cdc:	61fb      	str	r3, [r7, #28]
	int n, m, p;

	/* When direct mode is set FBSEL should be a don't care */
	if (ppll->ctrl & (1 << 7)) {
1a000cde:	683b      	ldr	r3, [r7, #0]
1a000ce0:	681b      	ldr	r3, [r3, #0]
1a000ce2:	f003 0380 	and.w	r3, r3, #128	@ 0x80
1a000ce6:	2b00      	cmp	r3, #0
1a000ce8:	d005      	beq.n	1a000cf6 <pll_calc_divs+0x26>
		ppll->ctrl &= ~(1 << 6);
1a000cea:	683b      	ldr	r3, [r7, #0]
1a000cec:	681b      	ldr	r3, [r3, #0]
1a000cee:	f023 0240 	bic.w	r2, r3, #64	@ 0x40
1a000cf2:	683b      	ldr	r3, [r7, #0]
1a000cf4:	601a      	str	r2, [r3, #0]
	}
	for (n = 1; n <= 4; n++) {
1a000cf6:	2301      	movs	r3, #1
1a000cf8:	61bb      	str	r3, [r7, #24]
1a000cfa:	e06f      	b.n	1a000ddc <pll_calc_divs+0x10c>
		for (p = 0; p < 4; p ++) {
1a000cfc:	2300      	movs	r3, #0
1a000cfe:	613b      	str	r3, [r7, #16]
1a000d00:	e066      	b.n	1a000dd0 <pll_calc_divs+0x100>
			for (m = 1; m <= 256; m++) {
1a000d02:	2301      	movs	r3, #1
1a000d04:	617b      	str	r3, [r7, #20]
1a000d06:	e05a      	b.n	1a000dbe <pll_calc_divs+0xee>
				uint32_t fcco, fout;
				if (ppll->ctrl & (1 << 6)) {
1a000d08:	683b      	ldr	r3, [r7, #0]
1a000d0a:	681b      	ldr	r3, [r3, #0]
1a000d0c:	f003 0340 	and.w	r3, r3, #64	@ 0x40
1a000d10:	2b00      	cmp	r3, #0
1a000d12:	d00e      	beq.n	1a000d32 <pll_calc_divs+0x62>
					fcco = ((m << (p + 1)) * ppll->fin) / n;
1a000d14:	693b      	ldr	r3, [r7, #16]
1a000d16:	3301      	adds	r3, #1
1a000d18:	697a      	ldr	r2, [r7, #20]
1a000d1a:	fa02 f303 	lsl.w	r3, r2, r3
1a000d1e:	461a      	mov	r2, r3
1a000d20:	683b      	ldr	r3, [r7, #0]
1a000d22:	695b      	ldr	r3, [r3, #20]
1a000d24:	fb03 f202 	mul.w	r2, r3, r2
1a000d28:	69bb      	ldr	r3, [r7, #24]
1a000d2a:	fbb2 f3f3 	udiv	r3, r2, r3
1a000d2e:	60fb      	str	r3, [r7, #12]
1a000d30:	e008      	b.n	1a000d44 <pll_calc_divs+0x74>
				} else {
					fcco = (m * ppll->fin) / n;
1a000d32:	683b      	ldr	r3, [r7, #0]
1a000d34:	695b      	ldr	r3, [r3, #20]
1a000d36:	697a      	ldr	r2, [r7, #20]
1a000d38:	fb03 f202 	mul.w	r2, r3, r2
1a000d3c:	69bb      	ldr	r3, [r7, #24]
1a000d3e:	fbb2 f3f3 	udiv	r3, r2, r3
1a000d42:	60fb      	str	r3, [r7, #12]
				}
				if (fcco < PLL_MIN_CCO_FREQ) continue;
1a000d44:	68fb      	ldr	r3, [r7, #12]
1a000d46:	4a29      	ldr	r2, [pc, #164]	@ (1a000dec <pll_calc_divs+0x11c>)
1a000d48:	4293      	cmp	r3, r2
1a000d4a:	d934      	bls.n	1a000db6 <pll_calc_divs+0xe6>
				if (fcco > PLL_MAX_CCO_FREQ) break;
1a000d4c:	68fb      	ldr	r3, [r7, #12]
1a000d4e:	4a28      	ldr	r2, [pc, #160]	@ (1a000df0 <pll_calc_divs+0x120>)
1a000d50:	4293      	cmp	r3, r2
1a000d52:	d839      	bhi.n	1a000dc8 <pll_calc_divs+0xf8>
				if (ppll->ctrl & (1 << 7)) {
1a000d54:	683b      	ldr	r3, [r7, #0]
1a000d56:	681b      	ldr	r3, [r3, #0]
1a000d58:	f003 0380 	and.w	r3, r3, #128	@ 0x80
1a000d5c:	2b00      	cmp	r3, #0
1a000d5e:	d002      	beq.n	1a000d66 <pll_calc_divs+0x96>
					fout = fcco;
1a000d60:	68fb      	ldr	r3, [r7, #12]
1a000d62:	60bb      	str	r3, [r7, #8]
1a000d64:	e005      	b.n	1a000d72 <pll_calc_divs+0xa2>
				} else {
					fout = fcco >> (p + 1);
1a000d66:	693b      	ldr	r3, [r7, #16]
1a000d68:	3301      	adds	r3, #1
1a000d6a:	68fa      	ldr	r2, [r7, #12]
1a000d6c:	fa22 f303 	lsr.w	r3, r2, r3
1a000d70:	60bb      	str	r3, [r7, #8]
				}

				if (ABS(freq - fout) < prev) {
1a000d72:	687a      	ldr	r2, [r7, #4]
1a000d74:	68bb      	ldr	r3, [r7, #8]
1a000d76:	1ad3      	subs	r3, r2, r3
1a000d78:	4618      	mov	r0, r3
1a000d7a:	f7ff ff97 	bl	1a000cac <ABS>
1a000d7e:	4602      	mov	r2, r0
1a000d80:	69fb      	ldr	r3, [r7, #28]
1a000d82:	4293      	cmp	r3, r2
1a000d84:	d918      	bls.n	1a000db8 <pll_calc_divs+0xe8>
					ppll->nsel = n;
1a000d86:	683b      	ldr	r3, [r7, #0]
1a000d88:	69ba      	ldr	r2, [r7, #24]
1a000d8a:	609a      	str	r2, [r3, #8]
					ppll->psel = p + 1;
1a000d8c:	693b      	ldr	r3, [r7, #16]
1a000d8e:	1c5a      	adds	r2, r3, #1
1a000d90:	683b      	ldr	r3, [r7, #0]
1a000d92:	60da      	str	r2, [r3, #12]
					ppll->msel = m;
1a000d94:	683b      	ldr	r3, [r7, #0]
1a000d96:	697a      	ldr	r2, [r7, #20]
1a000d98:	611a      	str	r2, [r3, #16]
					ppll->fout = fout;
1a000d9a:	683b      	ldr	r3, [r7, #0]
1a000d9c:	68ba      	ldr	r2, [r7, #8]
1a000d9e:	619a      	str	r2, [r3, #24]
					ppll->fcco = fcco;
1a000da0:	683b      	ldr	r3, [r7, #0]
1a000da2:	68fa      	ldr	r2, [r7, #12]
1a000da4:	61da      	str	r2, [r3, #28]
					prev = ABS(freq - fout);
1a000da6:	687a      	ldr	r2, [r7, #4]
1a000da8:	68bb      	ldr	r3, [r7, #8]
1a000daa:	1ad3      	subs	r3, r2, r3
1a000dac:	4618      	mov	r0, r3
1a000dae:	f7ff ff7d 	bl	1a000cac <ABS>
1a000db2:	61f8      	str	r0, [r7, #28]
1a000db4:	e000      	b.n	1a000db8 <pll_calc_divs+0xe8>
				if (fcco < PLL_MIN_CCO_FREQ) continue;
1a000db6:	bf00      	nop
			for (m = 1; m <= 256; m++) {
1a000db8:	697b      	ldr	r3, [r7, #20]
1a000dba:	3301      	adds	r3, #1
1a000dbc:	617b      	str	r3, [r7, #20]
1a000dbe:	697b      	ldr	r3, [r7, #20]
1a000dc0:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
1a000dc4:	dda0      	ble.n	1a000d08 <pll_calc_divs+0x38>
1a000dc6:	e000      	b.n	1a000dca <pll_calc_divs+0xfa>
				if (fcco > PLL_MAX_CCO_FREQ) break;
1a000dc8:	bf00      	nop
		for (p = 0; p < 4; p ++) {
1a000dca:	693b      	ldr	r3, [r7, #16]
1a000dcc:	3301      	adds	r3, #1
1a000dce:	613b      	str	r3, [r7, #16]
1a000dd0:	693b      	ldr	r3, [r7, #16]
1a000dd2:	2b03      	cmp	r3, #3
1a000dd4:	dd95      	ble.n	1a000d02 <pll_calc_divs+0x32>
	for (n = 1; n <= 4; n++) {
1a000dd6:	69bb      	ldr	r3, [r7, #24]
1a000dd8:	3301      	adds	r3, #1
1a000dda:	61bb      	str	r3, [r7, #24]
1a000ddc:	69bb      	ldr	r3, [r7, #24]
1a000dde:	2b04      	cmp	r3, #4
1a000de0:	dd8c      	ble.n	1a000cfc <pll_calc_divs+0x2c>
				}
			}
		}
	}
}
1a000de2:	bf00      	nop
1a000de4:	bf00      	nop
1a000de6:	3720      	adds	r7, #32
1a000de8:	46bd      	mov	sp, r7
1a000dea:	bd80      	pop	{r7, pc}
1a000dec:	094c5eff 	.word	0x094c5eff
1a000df0:	1312d000 	.word	0x1312d000

1a000df4 <pll_get_frac>:

static void pll_get_frac(uint32_t freq, PLL_PARAM_T *ppll)
{
1a000df4:	b5b0      	push	{r4, r5, r7, lr}
1a000df6:	b09e      	sub	sp, #120	@ 0x78
1a000df8:	af00      	add	r7, sp, #0
1a000dfa:	6078      	str	r0, [r7, #4]
1a000dfc:	6039      	str	r1, [r7, #0]
	int diff[3];
	PLL_PARAM_T pll[3] = {{0},{0},{0}};
1a000dfe:	f107 030c 	add.w	r3, r7, #12
1a000e02:	2260      	movs	r2, #96	@ 0x60
1a000e04:	2100      	movs	r1, #0
1a000e06:	4618      	mov	r0, r3
1a000e08:	f000 fd6e 	bl	1a0018e8 <memset>

	/* Try direct mode */
	pll[0].ctrl |= (1 << 7);
1a000e0c:	68fb      	ldr	r3, [r7, #12]
1a000e0e:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
1a000e12:	60fb      	str	r3, [r7, #12]
	pll[0].fin = ppll->fin;
1a000e14:	683b      	ldr	r3, [r7, #0]
1a000e16:	695b      	ldr	r3, [r3, #20]
1a000e18:	623b      	str	r3, [r7, #32]
	pll[0].srcin = ppll->srcin;
1a000e1a:	683b      	ldr	r3, [r7, #0]
1a000e1c:	791b      	ldrb	r3, [r3, #4]
1a000e1e:	743b      	strb	r3, [r7, #16]
	pll_calc_divs(freq, &pll[0]);
1a000e20:	f107 030c 	add.w	r3, r7, #12
1a000e24:	4619      	mov	r1, r3
1a000e26:	6878      	ldr	r0, [r7, #4]
1a000e28:	f7ff ff52 	bl	1a000cd0 <pll_calc_divs>
	if (pll[0].fout == freq) {
1a000e2c:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
1a000e2e:	687a      	ldr	r2, [r7, #4]
1a000e30:	429a      	cmp	r2, r3
1a000e32:	d10a      	bne.n	1a000e4a <pll_get_frac+0x56>
		*ppll = pll[0];
1a000e34:	683b      	ldr	r3, [r7, #0]
1a000e36:	461d      	mov	r5, r3
1a000e38:	f107 040c 	add.w	r4, r7, #12
1a000e3c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a000e3e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a000e40:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a000e44:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
		return ;
1a000e48:	e08e      	b.n	1a000f68 <pll_get_frac+0x174>
	}
	diff[0] = ABS(freq - pll[0].fout);
1a000e4a:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
1a000e4c:	687a      	ldr	r2, [r7, #4]
1a000e4e:	1ad3      	subs	r3, r2, r3
1a000e50:	4618      	mov	r0, r3
1a000e52:	f7ff ff2b 	bl	1a000cac <ABS>
1a000e56:	4603      	mov	r3, r0
1a000e58:	66fb      	str	r3, [r7, #108]	@ 0x6c

	/* Try non-Integer mode */
	pll[2].ctrl &= ~(1 << 6);			// need to set FBSEL to 0
1a000e5a:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
1a000e5c:	f023 0340 	bic.w	r3, r3, #64	@ 0x40
1a000e60:	64fb      	str	r3, [r7, #76]	@ 0x4c
	pll[2].fin = ppll->fin;
1a000e62:	683b      	ldr	r3, [r7, #0]
1a000e64:	695b      	ldr	r3, [r3, #20]
1a000e66:	663b      	str	r3, [r7, #96]	@ 0x60
	pll[2].srcin = ppll->srcin;
1a000e68:	683b      	ldr	r3, [r7, #0]
1a000e6a:	791b      	ldrb	r3, [r3, #4]
1a000e6c:	f887 3050 	strb.w	r3, [r7, #80]	@ 0x50
	pll_calc_divs(freq, &pll[2]);
1a000e70:	f107 030c 	add.w	r3, r7, #12
1a000e74:	3340      	adds	r3, #64	@ 0x40
1a000e76:	4619      	mov	r1, r3
1a000e78:	6878      	ldr	r0, [r7, #4]
1a000e7a:	f7ff ff29 	bl	1a000cd0 <pll_calc_divs>
	if (pll[2].fout == freq) {
1a000e7e:	6e7b      	ldr	r3, [r7, #100]	@ 0x64
1a000e80:	687a      	ldr	r2, [r7, #4]
1a000e82:	429a      	cmp	r2, r3
1a000e84:	d10a      	bne.n	1a000e9c <pll_get_frac+0xa8>
		*ppll = pll[2];
1a000e86:	683b      	ldr	r3, [r7, #0]
1a000e88:	461d      	mov	r5, r3
1a000e8a:	f107 044c 	add.w	r4, r7, #76	@ 0x4c
1a000e8e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a000e90:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a000e92:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a000e96:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
		return ;
1a000e9a:	e065      	b.n	1a000f68 <pll_get_frac+0x174>
	}
	diff[2] = ABS(freq - pll[2].fout);
1a000e9c:	6e7b      	ldr	r3, [r7, #100]	@ 0x64
1a000e9e:	687a      	ldr	r2, [r7, #4]
1a000ea0:	1ad3      	subs	r3, r2, r3
1a000ea2:	4618      	mov	r0, r3
1a000ea4:	f7ff ff02 	bl	1a000cac <ABS>
1a000ea8:	4603      	mov	r3, r0
1a000eaa:	677b      	str	r3, [r7, #116]	@ 0x74

	if (freq <= 110000000) {
1a000eac:	687b      	ldr	r3, [r7, #4]
1a000eae:	4a30      	ldr	r2, [pc, #192]	@ (1a000f70 <pll_get_frac+0x17c>)
1a000eb0:	4293      	cmp	r3, r2
1a000eb2:	d81a      	bhi.n	1a000eea <pll_get_frac+0xf6>
		/* Try integer mode */
		pll[1].ctrl = (1 << 6);
1a000eb4:	2340      	movs	r3, #64	@ 0x40
1a000eb6:	62fb      	str	r3, [r7, #44]	@ 0x2c
		pll[1].fin = ppll->fin;
1a000eb8:	683b      	ldr	r3, [r7, #0]
1a000eba:	695b      	ldr	r3, [r3, #20]
1a000ebc:	643b      	str	r3, [r7, #64]	@ 0x40
		pll_calc_divs(freq, &pll[1]);
1a000ebe:	f107 030c 	add.w	r3, r7, #12
1a000ec2:	3320      	adds	r3, #32
1a000ec4:	4619      	mov	r1, r3
1a000ec6:	6878      	ldr	r0, [r7, #4]
1a000ec8:	f7ff ff02 	bl	1a000cd0 <pll_calc_divs>
		if (pll[1].fout == freq) {
1a000ecc:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
1a000ece:	687a      	ldr	r2, [r7, #4]
1a000ed0:	429a      	cmp	r2, r3
1a000ed2:	d10a      	bne.n	1a000eea <pll_get_frac+0xf6>
			*ppll = pll[1];
1a000ed4:	683b      	ldr	r3, [r7, #0]
1a000ed6:	461d      	mov	r5, r3
1a000ed8:	f107 042c 	add.w	r4, r7, #44	@ 0x2c
1a000edc:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a000ede:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a000ee0:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a000ee4:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
			return ;
1a000ee8:	e03e      	b.n	1a000f68 <pll_get_frac+0x174>
		}
	}
	diff[1] = ABS(freq - pll[1].fout);
1a000eea:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
1a000eec:	687a      	ldr	r2, [r7, #4]
1a000eee:	1ad3      	subs	r3, r2, r3
1a000ef0:	4618      	mov	r0, r3
1a000ef2:	f7ff fedb 	bl	1a000cac <ABS>
1a000ef6:	4603      	mov	r3, r0
1a000ef8:	673b      	str	r3, [r7, #112]	@ 0x70

	/* Find the min of 3 and return */
	if (diff[0] <= diff[1]) {
1a000efa:	6efa      	ldr	r2, [r7, #108]	@ 0x6c
1a000efc:	6f3b      	ldr	r3, [r7, #112]	@ 0x70
1a000efe:	429a      	cmp	r2, r3
1a000f00:	dc19      	bgt.n	1a000f36 <pll_get_frac+0x142>
		if (diff[0] <= diff[2]) {
1a000f02:	6efa      	ldr	r2, [r7, #108]	@ 0x6c
1a000f04:	6f7b      	ldr	r3, [r7, #116]	@ 0x74
1a000f06:	429a      	cmp	r2, r3
1a000f08:	dc0a      	bgt.n	1a000f20 <pll_get_frac+0x12c>
			*ppll = pll[0];
1a000f0a:	683b      	ldr	r3, [r7, #0]
1a000f0c:	461d      	mov	r5, r3
1a000f0e:	f107 040c 	add.w	r4, r7, #12
1a000f12:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a000f14:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a000f16:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a000f1a:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a000f1e:	e023      	b.n	1a000f68 <pll_get_frac+0x174>
		} else {
			*ppll = pll[2];
1a000f20:	683b      	ldr	r3, [r7, #0]
1a000f22:	461d      	mov	r5, r3
1a000f24:	f107 044c 	add.w	r4, r7, #76	@ 0x4c
1a000f28:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a000f2a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a000f2c:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a000f30:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a000f34:	e018      	b.n	1a000f68 <pll_get_frac+0x174>
		}
	} else {
		if (diff[1] <= diff[2]) {
1a000f36:	6f3a      	ldr	r2, [r7, #112]	@ 0x70
1a000f38:	6f7b      	ldr	r3, [r7, #116]	@ 0x74
1a000f3a:	429a      	cmp	r2, r3
1a000f3c:	dc0a      	bgt.n	1a000f54 <pll_get_frac+0x160>
			*ppll = pll[1];
1a000f3e:	683b      	ldr	r3, [r7, #0]
1a000f40:	461d      	mov	r5, r3
1a000f42:	f107 042c 	add.w	r4, r7, #44	@ 0x2c
1a000f46:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a000f48:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a000f4a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a000f4e:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a000f52:	e009      	b.n	1a000f68 <pll_get_frac+0x174>
		} else {
			*ppll = pll[2];
1a000f54:	683b      	ldr	r3, [r7, #0]
1a000f56:	461d      	mov	r5, r3
1a000f58:	f107 044c 	add.w	r4, r7, #76	@ 0x4c
1a000f5c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a000f5e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a000f60:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a000f64:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
		}
	}
}
1a000f68:	3778      	adds	r7, #120	@ 0x78
1a000f6a:	46bd      	mov	sp, r7
1a000f6c:	bdb0      	pop	{r4, r5, r7, pc}
1a000f6e:	bf00      	nop
1a000f70:	068e7780 	.word	0x068e7780

1a000f74 <Chip_Clock_GetDivRate>:
	return TestHz;
}

/* Returns clock rate out of a divider */
static uint32_t Chip_Clock_GetDivRate(CHIP_CGU_CLKIN_T clock, CHIP_CGU_IDIV_T divider)
{
1a000f74:	b580      	push	{r7, lr}
1a000f76:	b084      	sub	sp, #16
1a000f78:	af00      	add	r7, sp, #0
1a000f7a:	4603      	mov	r3, r0
1a000f7c:	460a      	mov	r2, r1
1a000f7e:	71fb      	strb	r3, [r7, #7]
1a000f80:	4613      	mov	r3, r2
1a000f82:	71bb      	strb	r3, [r7, #6]
	CHIP_CGU_CLKIN_T input;
	uint32_t div;

	input = Chip_Clock_GetDividerSource(divider);
1a000f84:	79bb      	ldrb	r3, [r7, #6]
1a000f86:	4618      	mov	r0, r3
1a000f88:	f000 f95e 	bl	1a001248 <Chip_Clock_GetDividerSource>
1a000f8c:	4603      	mov	r3, r0
1a000f8e:	73fb      	strb	r3, [r7, #15]
	div = Chip_Clock_GetDividerDivisor(divider);
1a000f90:	79bb      	ldrb	r3, [r7, #6]
1a000f92:	4618      	mov	r0, r3
1a000f94:	f000 f978 	bl	1a001288 <Chip_Clock_GetDividerDivisor>
1a000f98:	60b8      	str	r0, [r7, #8]
	return Chip_Clock_GetClockInputHz(input) / (div + 1);
1a000f9a:	7bfb      	ldrb	r3, [r7, #15]
1a000f9c:	4618      	mov	r0, r3
1a000f9e:	f000 f98f 	bl	1a0012c0 <Chip_Clock_GetClockInputHz>
1a000fa2:	4602      	mov	r2, r0
1a000fa4:	68bb      	ldr	r3, [r7, #8]
1a000fa6:	3301      	adds	r3, #1
1a000fa8:	fbb2 f3f3 	udiv	r3, r2, r3
}
1a000fac:	4618      	mov	r0, r3
1a000fae:	3710      	adds	r7, #16
1a000fb0:	46bd      	mov	sp, r7
1a000fb2:	bd80      	pop	{r7, pc}

1a000fb4 <Chip_Clock_FindBaseClock>:

/* Finds the base clock for the peripheral clock */
static CHIP_CGU_BASE_CLK_T Chip_Clock_FindBaseClock(CHIP_CCU_CLK_T clk)
{
1a000fb4:	b480      	push	{r7}
1a000fb6:	b085      	sub	sp, #20
1a000fb8:	af00      	add	r7, sp, #0
1a000fba:	4603      	mov	r3, r0
1a000fbc:	80fb      	strh	r3, [r7, #6]
	CHIP_CGU_BASE_CLK_T baseclk = CLK_BASE_NONE;
1a000fbe:	231c      	movs	r3, #28
1a000fc0:	73fb      	strb	r3, [r7, #15]
	int i = 0;
1a000fc2:	2300      	movs	r3, #0
1a000fc4:	60bb      	str	r3, [r7, #8]

	while ((baseclk == CLK_BASE_NONE) && (periph_to_base[i].clkbase != baseclk)) {
1a000fc6:	e024      	b.n	1a001012 <Chip_Clock_FindBaseClock+0x5e>
		if ((clk >= periph_to_base[i].clkstart) && (clk <= periph_to_base[i].clkend)) {
1a000fc8:	491d      	ldr	r1, [pc, #116]	@ (1a001040 <Chip_Clock_FindBaseClock+0x8c>)
1a000fca:	68ba      	ldr	r2, [r7, #8]
1a000fcc:	4613      	mov	r3, r2
1a000fce:	005b      	lsls	r3, r3, #1
1a000fd0:	4413      	add	r3, r2
1a000fd2:	005b      	lsls	r3, r3, #1
1a000fd4:	440b      	add	r3, r1
1a000fd6:	881b      	ldrh	r3, [r3, #0]
1a000fd8:	88fa      	ldrh	r2, [r7, #6]
1a000fda:	429a      	cmp	r2, r3
1a000fdc:	d316      	bcc.n	1a00100c <Chip_Clock_FindBaseClock+0x58>
1a000fde:	4918      	ldr	r1, [pc, #96]	@ (1a001040 <Chip_Clock_FindBaseClock+0x8c>)
1a000fe0:	68ba      	ldr	r2, [r7, #8]
1a000fe2:	4613      	mov	r3, r2
1a000fe4:	005b      	lsls	r3, r3, #1
1a000fe6:	4413      	add	r3, r2
1a000fe8:	005b      	lsls	r3, r3, #1
1a000fea:	440b      	add	r3, r1
1a000fec:	3302      	adds	r3, #2
1a000fee:	881b      	ldrh	r3, [r3, #0]
1a000ff0:	88fa      	ldrh	r2, [r7, #6]
1a000ff2:	429a      	cmp	r2, r3
1a000ff4:	d80a      	bhi.n	1a00100c <Chip_Clock_FindBaseClock+0x58>
			baseclk = periph_to_base[i].clkbase;
1a000ff6:	4912      	ldr	r1, [pc, #72]	@ (1a001040 <Chip_Clock_FindBaseClock+0x8c>)
1a000ff8:	68ba      	ldr	r2, [r7, #8]
1a000ffa:	4613      	mov	r3, r2
1a000ffc:	005b      	lsls	r3, r3, #1
1a000ffe:	4413      	add	r3, r2
1a001000:	005b      	lsls	r3, r3, #1
1a001002:	440b      	add	r3, r1
1a001004:	3304      	adds	r3, #4
1a001006:	781b      	ldrb	r3, [r3, #0]
1a001008:	73fb      	strb	r3, [r7, #15]
1a00100a:	e002      	b.n	1a001012 <Chip_Clock_FindBaseClock+0x5e>
		}
		else {
			i++;
1a00100c:	68bb      	ldr	r3, [r7, #8]
1a00100e:	3301      	adds	r3, #1
1a001010:	60bb      	str	r3, [r7, #8]
	while ((baseclk == CLK_BASE_NONE) && (periph_to_base[i].clkbase != baseclk)) {
1a001012:	7bfb      	ldrb	r3, [r7, #15]
1a001014:	2b1c      	cmp	r3, #28
1a001016:	d10b      	bne.n	1a001030 <Chip_Clock_FindBaseClock+0x7c>
1a001018:	4909      	ldr	r1, [pc, #36]	@ (1a001040 <Chip_Clock_FindBaseClock+0x8c>)
1a00101a:	68ba      	ldr	r2, [r7, #8]
1a00101c:	4613      	mov	r3, r2
1a00101e:	005b      	lsls	r3, r3, #1
1a001020:	4413      	add	r3, r2
1a001022:	005b      	lsls	r3, r3, #1
1a001024:	440b      	add	r3, r1
1a001026:	3304      	adds	r3, #4
1a001028:	781b      	ldrb	r3, [r3, #0]
1a00102a:	7bfa      	ldrb	r2, [r7, #15]
1a00102c:	429a      	cmp	r2, r3
1a00102e:	d1cb      	bne.n	1a000fc8 <Chip_Clock_FindBaseClock+0x14>
		}
	}

	return baseclk;
1a001030:	7bfb      	ldrb	r3, [r7, #15]
}
1a001032:	4618      	mov	r0, r3
1a001034:	3714      	adds	r7, #20
1a001036:	46bd      	mov	sp, r7
1a001038:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00103c:	4770      	bx	lr
1a00103e:	bf00      	nop
1a001040:	1a001abc 	.word	0x1a001abc

1a001044 <Chip_Clock_EnableCrystal>:
 * Public functions
 ****************************************************************************/

/* Enables the crystal oscillator */
void Chip_Clock_EnableCrystal(void)
{
1a001044:	b480      	push	{r7}
1a001046:	b083      	sub	sp, #12
1a001048:	af00      	add	r7, sp, #0
	volatile uint32_t delay = 1000;
1a00104a:	f44f 737a 	mov.w	r3, #1000	@ 0x3e8
1a00104e:	603b      	str	r3, [r7, #0]

	uint32_t OldCrystalConfig = LPC_CGU->XTAL_OSC_CTRL;
1a001050:	4b15      	ldr	r3, [pc, #84]	@ (1a0010a8 <Chip_Clock_EnableCrystal+0x64>)
1a001052:	699b      	ldr	r3, [r3, #24]
1a001054:	607b      	str	r3, [r7, #4]

	/* Clear bypass mode */
	OldCrystalConfig &= (~2);
1a001056:	687b      	ldr	r3, [r7, #4]
1a001058:	f023 0302 	bic.w	r3, r3, #2
1a00105c:	607b      	str	r3, [r7, #4]
	if (OldCrystalConfig != LPC_CGU->XTAL_OSC_CTRL) {
1a00105e:	4b12      	ldr	r3, [pc, #72]	@ (1a0010a8 <Chip_Clock_EnableCrystal+0x64>)
1a001060:	699b      	ldr	r3, [r3, #24]
1a001062:	687a      	ldr	r2, [r7, #4]
1a001064:	429a      	cmp	r2, r3
1a001066:	d002      	beq.n	1a00106e <Chip_Clock_EnableCrystal+0x2a>
		LPC_CGU->XTAL_OSC_CTRL = OldCrystalConfig;
1a001068:	4a0f      	ldr	r2, [pc, #60]	@ (1a0010a8 <Chip_Clock_EnableCrystal+0x64>)
1a00106a:	687b      	ldr	r3, [r7, #4]
1a00106c:	6193      	str	r3, [r2, #24]
	}

	/* Enable crystal oscillator */
	OldCrystalConfig &= (~1);
1a00106e:	687b      	ldr	r3, [r7, #4]
1a001070:	f023 0301 	bic.w	r3, r3, #1
1a001074:	607b      	str	r3, [r7, #4]
	if (OscRateIn >= 20000000) {
1a001076:	4b0d      	ldr	r3, [pc, #52]	@ (1a0010ac <Chip_Clock_EnableCrystal+0x68>)
1a001078:	681b      	ldr	r3, [r3, #0]
1a00107a:	4a0d      	ldr	r2, [pc, #52]	@ (1a0010b0 <Chip_Clock_EnableCrystal+0x6c>)
1a00107c:	4293      	cmp	r3, r2
1a00107e:	d903      	bls.n	1a001088 <Chip_Clock_EnableCrystal+0x44>
		OldCrystalConfig |= 4;	/* Set high frequency mode */
1a001080:	687b      	ldr	r3, [r7, #4]
1a001082:	f043 0304 	orr.w	r3, r3, #4
1a001086:	607b      	str	r3, [r7, #4]

	}
	LPC_CGU->XTAL_OSC_CTRL = OldCrystalConfig;
1a001088:	4a07      	ldr	r2, [pc, #28]	@ (1a0010a8 <Chip_Clock_EnableCrystal+0x64>)
1a00108a:	687b      	ldr	r3, [r7, #4]
1a00108c:	6193      	str	r3, [r2, #24]

	/* Delay for 250uSec */
	while(delay--) {}
1a00108e:	bf00      	nop
1a001090:	683b      	ldr	r3, [r7, #0]
1a001092:	1e5a      	subs	r2, r3, #1
1a001094:	603a      	str	r2, [r7, #0]
1a001096:	2b00      	cmp	r3, #0
1a001098:	d1fa      	bne.n	1a001090 <Chip_Clock_EnableCrystal+0x4c>
}
1a00109a:	bf00      	nop
1a00109c:	bf00      	nop
1a00109e:	370c      	adds	r7, #12
1a0010a0:	46bd      	mov	sp, r7
1a0010a2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010a6:	4770      	bx	lr
1a0010a8:	40050000 	.word	0x40050000
1a0010ac:	1a001ab8 	.word	0x1a001ab8
1a0010b0:	01312cff 	.word	0x01312cff

1a0010b4 <Chip_Clock_CalcMainPLLValue>:

/* Calculate the Main PLL div values */
int Chip_Clock_CalcMainPLLValue(uint32_t freq, PLL_PARAM_T *ppll)
{
1a0010b4:	b580      	push	{r7, lr}
1a0010b6:	b082      	sub	sp, #8
1a0010b8:	af00      	add	r7, sp, #0
1a0010ba:	6078      	str	r0, [r7, #4]
1a0010bc:	6039      	str	r1, [r7, #0]
	ppll->fin = Chip_Clock_GetClockInputHz(ppll->srcin);
1a0010be:	683b      	ldr	r3, [r7, #0]
1a0010c0:	791b      	ldrb	r3, [r3, #4]
1a0010c2:	4618      	mov	r0, r3
1a0010c4:	f000 f8fc 	bl	1a0012c0 <Chip_Clock_GetClockInputHz>
1a0010c8:	4602      	mov	r2, r0
1a0010ca:	683b      	ldr	r3, [r7, #0]
1a0010cc:	615a      	str	r2, [r3, #20]

	/* Do sanity check on frequency */
	if (freq > MAX_CLOCK_FREQ || freq < (PLL_MIN_CCO_FREQ / 16) || !ppll->fin) {
1a0010ce:	687b      	ldr	r3, [r7, #4]
1a0010d0:	4a2b      	ldr	r2, [pc, #172]	@ (1a001180 <Chip_Clock_CalcMainPLLValue+0xcc>)
1a0010d2:	4293      	cmp	r3, r2
1a0010d4:	d807      	bhi.n	1a0010e6 <Chip_Clock_CalcMainPLLValue+0x32>
1a0010d6:	687b      	ldr	r3, [r7, #4]
1a0010d8:	4a2a      	ldr	r2, [pc, #168]	@ (1a001184 <Chip_Clock_CalcMainPLLValue+0xd0>)
1a0010da:	4293      	cmp	r3, r2
1a0010dc:	d903      	bls.n	1a0010e6 <Chip_Clock_CalcMainPLLValue+0x32>
1a0010de:	683b      	ldr	r3, [r7, #0]
1a0010e0:	695b      	ldr	r3, [r3, #20]
1a0010e2:	2b00      	cmp	r3, #0
1a0010e4:	d102      	bne.n	1a0010ec <Chip_Clock_CalcMainPLLValue+0x38>
		return -1;
1a0010e6:	f04f 33ff 	mov.w	r3, #4294967295
1a0010ea:	e044      	b.n	1a001176 <Chip_Clock_CalcMainPLLValue+0xc2>
	}

	ppll->ctrl = 1 << 7; /* Enable direct mode [If possible] */
1a0010ec:	683b      	ldr	r3, [r7, #0]
1a0010ee:	2280      	movs	r2, #128	@ 0x80
1a0010f0:	601a      	str	r2, [r3, #0]
	ppll->nsel = 0;
1a0010f2:	683b      	ldr	r3, [r7, #0]
1a0010f4:	2200      	movs	r2, #0
1a0010f6:	609a      	str	r2, [r3, #8]
	ppll->psel = 0;
1a0010f8:	683b      	ldr	r3, [r7, #0]
1a0010fa:	2200      	movs	r2, #0
1a0010fc:	60da      	str	r2, [r3, #12]
	ppll->msel = freq / ppll->fin;
1a0010fe:	683b      	ldr	r3, [r7, #0]
1a001100:	695b      	ldr	r3, [r3, #20]
1a001102:	687a      	ldr	r2, [r7, #4]
1a001104:	fbb2 f3f3 	udiv	r3, r2, r3
1a001108:	461a      	mov	r2, r3
1a00110a:	683b      	ldr	r3, [r7, #0]
1a00110c:	611a      	str	r2, [r3, #16]

	if (freq < PLL_MIN_CCO_FREQ || ppll->msel * ppll->fin != freq) {
1a00110e:	687b      	ldr	r3, [r7, #4]
1a001110:	4a1d      	ldr	r2, [pc, #116]	@ (1a001188 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a001112:	4293      	cmp	r3, r2
1a001114:	d909      	bls.n	1a00112a <Chip_Clock_CalcMainPLLValue+0x76>
1a001116:	683b      	ldr	r3, [r7, #0]
1a001118:	691b      	ldr	r3, [r3, #16]
1a00111a:	461a      	mov	r2, r3
1a00111c:	683b      	ldr	r3, [r7, #0]
1a00111e:	695b      	ldr	r3, [r3, #20]
1a001120:	fb02 f303 	mul.w	r3, r2, r3
1a001124:	687a      	ldr	r2, [r7, #4]
1a001126:	429a      	cmp	r2, r3
1a001128:	d00f      	beq.n	1a00114a <Chip_Clock_CalcMainPLLValue+0x96>
		pll_get_frac(freq, ppll);
1a00112a:	6839      	ldr	r1, [r7, #0]
1a00112c:	6878      	ldr	r0, [r7, #4]
1a00112e:	f7ff fe61 	bl	1a000df4 <pll_get_frac>
		if (!ppll->nsel) {
1a001132:	683b      	ldr	r3, [r7, #0]
1a001134:	689b      	ldr	r3, [r3, #8]
1a001136:	2b00      	cmp	r3, #0
1a001138:	d102      	bne.n	1a001140 <Chip_Clock_CalcMainPLLValue+0x8c>
			return -1;
1a00113a:	f04f 33ff 	mov.w	r3, #4294967295
1a00113e:	e01a      	b.n	1a001176 <Chip_Clock_CalcMainPLLValue+0xc2>
		}
		ppll->nsel --;
1a001140:	683b      	ldr	r3, [r7, #0]
1a001142:	689b      	ldr	r3, [r3, #8]
1a001144:	1e5a      	subs	r2, r3, #1
1a001146:	683b      	ldr	r3, [r7, #0]
1a001148:	609a      	str	r2, [r3, #8]
	}

	if (ppll->msel == 0) {
1a00114a:	683b      	ldr	r3, [r7, #0]
1a00114c:	691b      	ldr	r3, [r3, #16]
1a00114e:	2b00      	cmp	r3, #0
1a001150:	d102      	bne.n	1a001158 <Chip_Clock_CalcMainPLLValue+0xa4>
		return - 1;
1a001152:	f04f 33ff 	mov.w	r3, #4294967295
1a001156:	e00e      	b.n	1a001176 <Chip_Clock_CalcMainPLLValue+0xc2>
	}

	if (ppll->psel) {
1a001158:	683b      	ldr	r3, [r7, #0]
1a00115a:	68db      	ldr	r3, [r3, #12]
1a00115c:	2b00      	cmp	r3, #0
1a00115e:	d004      	beq.n	1a00116a <Chip_Clock_CalcMainPLLValue+0xb6>
		ppll->psel --;
1a001160:	683b      	ldr	r3, [r7, #0]
1a001162:	68db      	ldr	r3, [r3, #12]
1a001164:	1e5a      	subs	r2, r3, #1
1a001166:	683b      	ldr	r3, [r7, #0]
1a001168:	60da      	str	r2, [r3, #12]
	}

	ppll->msel --;
1a00116a:	683b      	ldr	r3, [r7, #0]
1a00116c:	691b      	ldr	r3, [r3, #16]
1a00116e:	1e5a      	subs	r2, r3, #1
1a001170:	683b      	ldr	r3, [r7, #0]
1a001172:	611a      	str	r2, [r3, #16]

	return 0;
1a001174:	2300      	movs	r3, #0
}
1a001176:	4618      	mov	r0, r3
1a001178:	3708      	adds	r7, #8
1a00117a:	46bd      	mov	sp, r7
1a00117c:	bd80      	pop	{r7, pc}
1a00117e:	bf00      	nop
1a001180:	0c28cb00 	.word	0x0c28cb00
1a001184:	0094c5ef 	.word	0x0094c5ef
1a001188:	094c5eff 	.word	0x094c5eff

1a00118c <Chip_Clock_GetMainPLLHz>:
	return freq;
}

/* Returns the frequency of the main PLL */
uint32_t Chip_Clock_GetMainPLLHz(void)
{
1a00118c:	b580      	push	{r7, lr}
1a00118e:	b08c      	sub	sp, #48	@ 0x30
1a001190:	af00      	add	r7, sp, #0
	uint32_t PLLReg = LPC_CGU->PLL1_CTRL;
1a001192:	4b2b      	ldr	r3, [pc, #172]	@ (1a001240 <Chip_Clock_GetMainPLLHz+0xb4>)
1a001194:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
1a001196:	62fb      	str	r3, [r7, #44]	@ 0x2c
	uint32_t freq = Chip_Clock_GetClockInputHz((CHIP_CGU_CLKIN_T) ((PLLReg >> 24) & 0xF));
1a001198:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a00119a:	0e1b      	lsrs	r3, r3, #24
1a00119c:	b2db      	uxtb	r3, r3
1a00119e:	f003 030f 	and.w	r3, r3, #15
1a0011a2:	b2db      	uxtb	r3, r3
1a0011a4:	4618      	mov	r0, r3
1a0011a6:	f000 f88b 	bl	1a0012c0 <Chip_Clock_GetClockInputHz>
1a0011aa:	62b8      	str	r0, [r7, #40]	@ 0x28
	uint32_t msel, nsel, psel, direct, fbsel;
	uint32_t m, n, p;
	const uint8_t ptab[] = {1, 2, 4, 8};
1a0011ac:	4b25      	ldr	r3, [pc, #148]	@ (1a001244 <Chip_Clock_GetMainPLLHz+0xb8>)
1a0011ae:	607b      	str	r3, [r7, #4]

	/* No lock? */
	if (!(LPC_CGU->PLL1_STAT & 1)) {
1a0011b0:	4b23      	ldr	r3, [pc, #140]	@ (1a001240 <Chip_Clock_GetMainPLLHz+0xb4>)
1a0011b2:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
1a0011b4:	f003 0301 	and.w	r3, r3, #1
1a0011b8:	2b00      	cmp	r3, #0
1a0011ba:	d101      	bne.n	1a0011c0 <Chip_Clock_GetMainPLLHz+0x34>
		return 0;
1a0011bc:	2300      	movs	r3, #0
1a0011be:	e03b      	b.n	1a001238 <Chip_Clock_GetMainPLLHz+0xac>
	}

	msel = (PLLReg >> 16) & 0xFF;
1a0011c0:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a0011c2:	0c1b      	lsrs	r3, r3, #16
1a0011c4:	b2db      	uxtb	r3, r3
1a0011c6:	627b      	str	r3, [r7, #36]	@ 0x24
	nsel = (PLLReg >> 12) & 0x3;
1a0011c8:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a0011ca:	0b1b      	lsrs	r3, r3, #12
1a0011cc:	f003 0303 	and.w	r3, r3, #3
1a0011d0:	623b      	str	r3, [r7, #32]
	psel = (PLLReg >> 8) & 0x3;
1a0011d2:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a0011d4:	0a1b      	lsrs	r3, r3, #8
1a0011d6:	f003 0303 	and.w	r3, r3, #3
1a0011da:	61fb      	str	r3, [r7, #28]
	direct = (PLLReg >> 7) & 0x1;
1a0011dc:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a0011de:	09db      	lsrs	r3, r3, #7
1a0011e0:	f003 0301 	and.w	r3, r3, #1
1a0011e4:	61bb      	str	r3, [r7, #24]
	fbsel = (PLLReg >> 6) & 0x1;
1a0011e6:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a0011e8:	099b      	lsrs	r3, r3, #6
1a0011ea:	f003 0301 	and.w	r3, r3, #1
1a0011ee:	617b      	str	r3, [r7, #20]

	m = msel + 1;
1a0011f0:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
1a0011f2:	3301      	adds	r3, #1
1a0011f4:	613b      	str	r3, [r7, #16]
	n = nsel + 1;
1a0011f6:	6a3b      	ldr	r3, [r7, #32]
1a0011f8:	3301      	adds	r3, #1
1a0011fa:	60fb      	str	r3, [r7, #12]
	p = ptab[psel];
1a0011fc:	1d3a      	adds	r2, r7, #4
1a0011fe:	69fb      	ldr	r3, [r7, #28]
1a001200:	4413      	add	r3, r2
1a001202:	781b      	ldrb	r3, [r3, #0]
1a001204:	60bb      	str	r3, [r7, #8]

	if (direct || fbsel) {
1a001206:	69bb      	ldr	r3, [r7, #24]
1a001208:	2b00      	cmp	r3, #0
1a00120a:	d102      	bne.n	1a001212 <Chip_Clock_GetMainPLLHz+0x86>
1a00120c:	697b      	ldr	r3, [r7, #20]
1a00120e:	2b00      	cmp	r3, #0
1a001210:	d007      	beq.n	1a001222 <Chip_Clock_GetMainPLLHz+0x96>
		return m * (freq / n);
1a001212:	6aba      	ldr	r2, [r7, #40]	@ 0x28
1a001214:	68fb      	ldr	r3, [r7, #12]
1a001216:	fbb2 f3f3 	udiv	r3, r2, r3
1a00121a:	693a      	ldr	r2, [r7, #16]
1a00121c:	fb02 f303 	mul.w	r3, r2, r3
1a001220:	e00a      	b.n	1a001238 <Chip_Clock_GetMainPLLHz+0xac>
	}

	return (m / (2 * p)) * (freq / n);
1a001222:	68bb      	ldr	r3, [r7, #8]
1a001224:	005b      	lsls	r3, r3, #1
1a001226:	693a      	ldr	r2, [r7, #16]
1a001228:	fbb2 f3f3 	udiv	r3, r2, r3
1a00122c:	6ab9      	ldr	r1, [r7, #40]	@ 0x28
1a00122e:	68fa      	ldr	r2, [r7, #12]
1a001230:	fbb1 f2f2 	udiv	r2, r1, r2
1a001234:	fb02 f303 	mul.w	r3, r2, r3
}
1a001238:	4618      	mov	r0, r3
1a00123a:	3730      	adds	r7, #48	@ 0x30
1a00123c:	46bd      	mov	sp, r7
1a00123e:	bd80      	pop	{r7, pc}
1a001240:	40050000 	.word	0x40050000
1a001244:	08040201 	.word	0x08040201

1a001248 <Chip_Clock_GetDividerSource>:
	}
}

/* Gets a CGU clock divider source */
CHIP_CGU_CLKIN_T Chip_Clock_GetDividerSource(CHIP_CGU_IDIV_T Divider)
{
1a001248:	b480      	push	{r7}
1a00124a:	b085      	sub	sp, #20
1a00124c:	af00      	add	r7, sp, #0
1a00124e:	4603      	mov	r3, r0
1a001250:	71fb      	strb	r3, [r7, #7]
	uint32_t reg = LPC_CGU->IDIV_CTRL[Divider];
1a001252:	4a0c      	ldr	r2, [pc, #48]	@ (1a001284 <Chip_Clock_GetDividerSource+0x3c>)
1a001254:	79fb      	ldrb	r3, [r7, #7]
1a001256:	3312      	adds	r3, #18
1a001258:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a00125c:	60fb      	str	r3, [r7, #12]

	if (reg & 1) {	/* divider is powered down */
1a00125e:	68fb      	ldr	r3, [r7, #12]
1a001260:	f003 0301 	and.w	r3, r3, #1
1a001264:	2b00      	cmp	r3, #0
1a001266:	d001      	beq.n	1a00126c <Chip_Clock_GetDividerSource+0x24>
		return CLKINPUT_PD;
1a001268:	2311      	movs	r3, #17
1a00126a:	e005      	b.n	1a001278 <Chip_Clock_GetDividerSource+0x30>
	}

	return (CHIP_CGU_CLKIN_T) ((reg >> 24) & 0x1F);
1a00126c:	68fb      	ldr	r3, [r7, #12]
1a00126e:	0e1b      	lsrs	r3, r3, #24
1a001270:	b2db      	uxtb	r3, r3
1a001272:	f003 031f 	and.w	r3, r3, #31
1a001276:	b2db      	uxtb	r3, r3
}
1a001278:	4618      	mov	r0, r3
1a00127a:	3714      	adds	r7, #20
1a00127c:	46bd      	mov	sp, r7
1a00127e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001282:	4770      	bx	lr
1a001284:	40050000 	.word	0x40050000

1a001288 <Chip_Clock_GetDividerDivisor>:

/* Gets a CGU clock divider divisor */
uint32_t Chip_Clock_GetDividerDivisor(CHIP_CGU_IDIV_T Divider)
{
1a001288:	b480      	push	{r7}
1a00128a:	b083      	sub	sp, #12
1a00128c:	af00      	add	r7, sp, #0
1a00128e:	4603      	mov	r3, r0
1a001290:	71fb      	strb	r3, [r7, #7]
	return (CHIP_CGU_CLKIN_T) ((LPC_CGU->IDIV_CTRL[Divider] >> 2) & CHIP_CGU_IDIV_MASK(Divider));
1a001292:	4a09      	ldr	r2, [pc, #36]	@ (1a0012b8 <Chip_Clock_GetDividerDivisor+0x30>)
1a001294:	79fb      	ldrb	r3, [r7, #7]
1a001296:	3312      	adds	r3, #18
1a001298:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a00129c:	089b      	lsrs	r3, r3, #2
1a00129e:	b2da      	uxtb	r2, r3
1a0012a0:	79fb      	ldrb	r3, [r7, #7]
1a0012a2:	4906      	ldr	r1, [pc, #24]	@ (1a0012bc <Chip_Clock_GetDividerDivisor+0x34>)
1a0012a4:	5ccb      	ldrb	r3, [r1, r3]
1a0012a6:	4013      	ands	r3, r2
1a0012a8:	b2db      	uxtb	r3, r3
}
1a0012aa:	4618      	mov	r0, r3
1a0012ac:	370c      	adds	r7, #12
1a0012ae:	46bd      	mov	sp, r7
1a0012b0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012b4:	4770      	bx	lr
1a0012b6:	bf00      	nop
1a0012b8:	40050000 	.word	0x40050000
1a0012bc:	1a001b28 	.word	0x1a001b28

1a0012c0 <Chip_Clock_GetClockInputHz>:

/* Returns the frequency of the specified input clock source */
uint32_t Chip_Clock_GetClockInputHz(CHIP_CGU_CLKIN_T input)
{
1a0012c0:	b580      	push	{r7, lr}
1a0012c2:	b084      	sub	sp, #16
1a0012c4:	af00      	add	r7, sp, #0
1a0012c6:	4603      	mov	r3, r0
1a0012c8:	71fb      	strb	r3, [r7, #7]
	uint32_t rate = 0;
1a0012ca:	2300      	movs	r3, #0
1a0012cc:	60fb      	str	r3, [r7, #12]

	switch (input) {
1a0012ce:	79fb      	ldrb	r3, [r7, #7]
1a0012d0:	2b11      	cmp	r3, #17
1a0012d2:	d87f      	bhi.n	1a0013d4 <Chip_Clock_GetClockInputHz+0x114>
1a0012d4:	a201      	add	r2, pc, #4	@ (adr r2, 1a0012dc <Chip_Clock_GetClockInputHz+0x1c>)
1a0012d6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a0012da:	bf00      	nop
1a0012dc:	1a001325 	.word	0x1a001325
1a0012e0:	1a00132d 	.word	0x1a00132d
1a0012e4:	1a001333 	.word	0x1a001333
1a0012e8:	1a001347 	.word	0x1a001347
1a0012ec:	1a001361 	.word	0x1a001361
1a0012f0:	1a0013d5 	.word	0x1a0013d5
1a0012f4:	1a001369 	.word	0x1a001369
1a0012f8:	1a001371 	.word	0x1a001371
1a0012fc:	1a001379 	.word	0x1a001379
1a001300:	1a001381 	.word	0x1a001381
1a001304:	1a0013d5 	.word	0x1a0013d5
1a001308:	1a0013d5 	.word	0x1a0013d5
1a00130c:	1a001389 	.word	0x1a001389
1a001310:	1a001397 	.word	0x1a001397
1a001314:	1a0013a5 	.word	0x1a0013a5
1a001318:	1a0013b3 	.word	0x1a0013b3
1a00131c:	1a0013c1 	.word	0x1a0013c1
1a001320:	1a0013cf 	.word	0x1a0013cf
	case CLKIN_32K:
		rate = CRYSTAL_32K_FREQ_IN;
1a001324:	f44f 4300 	mov.w	r3, #32768	@ 0x8000
1a001328:	60fb      	str	r3, [r7, #12]
		break;
1a00132a:	e056      	b.n	1a0013da <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_IRC:
		rate = CGU_IRC_FREQ;
1a00132c:	4b2d      	ldr	r3, [pc, #180]	@ (1a0013e4 <Chip_Clock_GetClockInputHz+0x124>)
1a00132e:	60fb      	str	r3, [r7, #12]
		break;
1a001330:	e053      	b.n	1a0013da <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_ENET_RX:
		if ((LPC_CREG->CREG6 & 0x07) != 0x4) {
1a001332:	4b2d      	ldr	r3, [pc, #180]	@ (1a0013e8 <Chip_Clock_GetClockInputHz+0x128>)
1a001334:	f8d3 312c 	ldr.w	r3, [r3, #300]	@ 0x12c
1a001338:	f003 0307 	and.w	r3, r3, #7
1a00133c:	2b04      	cmp	r3, #4
1a00133e:	d04b      	beq.n	1a0013d8 <Chip_Clock_GetClockInputHz+0x118>
			/* MII mode requires 25MHz clock */
			rate = 25000000;
1a001340:	4b2a      	ldr	r3, [pc, #168]	@ (1a0013ec <Chip_Clock_GetClockInputHz+0x12c>)
1a001342:	60fb      	str	r3, [r7, #12]
		}
		break;
1a001344:	e048      	b.n	1a0013d8 <Chip_Clock_GetClockInputHz+0x118>

	case CLKIN_ENET_TX:
		if ((LPC_CREG->CREG6 & 0x07) != 0x4) {
1a001346:	4b28      	ldr	r3, [pc, #160]	@ (1a0013e8 <Chip_Clock_GetClockInputHz+0x128>)
1a001348:	f8d3 312c 	ldr.w	r3, [r3, #300]	@ 0x12c
1a00134c:	f003 0307 	and.w	r3, r3, #7
1a001350:	2b04      	cmp	r3, #4
1a001352:	d002      	beq.n	1a00135a <Chip_Clock_GetClockInputHz+0x9a>
			rate = 25000000; /* MII uses 25 MHz */
1a001354:	4b25      	ldr	r3, [pc, #148]	@ (1a0013ec <Chip_Clock_GetClockInputHz+0x12c>)
1a001356:	60fb      	str	r3, [r7, #12]
		} else {
			rate = 50000000; /* RMII uses 50 MHz */
		}
		break;
1a001358:	e03f      	b.n	1a0013da <Chip_Clock_GetClockInputHz+0x11a>
			rate = 50000000; /* RMII uses 50 MHz */
1a00135a:	4b25      	ldr	r3, [pc, #148]	@ (1a0013f0 <Chip_Clock_GetClockInputHz+0x130>)
1a00135c:	60fb      	str	r3, [r7, #12]
		break;
1a00135e:	e03c      	b.n	1a0013da <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_CLKIN:
		rate = ExtRateIn;
1a001360:	4b24      	ldr	r3, [pc, #144]	@ (1a0013f4 <Chip_Clock_GetClockInputHz+0x134>)
1a001362:	681b      	ldr	r3, [r3, #0]
1a001364:	60fb      	str	r3, [r7, #12]
		break;
1a001366:	e038      	b.n	1a0013da <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_CRYSTAL:
		rate = OscRateIn;
1a001368:	4b23      	ldr	r3, [pc, #140]	@ (1a0013f8 <Chip_Clock_GetClockInputHz+0x138>)
1a00136a:	681b      	ldr	r3, [r3, #0]
1a00136c:	60fb      	str	r3, [r7, #12]
		break;
1a00136e:	e034      	b.n	1a0013da <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_USBPLL:
		rate = audio_usb_pll_freq[CGU_USB_PLL];
1a001370:	4b22      	ldr	r3, [pc, #136]	@ (1a0013fc <Chip_Clock_GetClockInputHz+0x13c>)
1a001372:	681b      	ldr	r3, [r3, #0]
1a001374:	60fb      	str	r3, [r7, #12]
		break;
1a001376:	e030      	b.n	1a0013da <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_AUDIOPLL:
		rate = audio_usb_pll_freq[CGU_AUDIO_PLL];
1a001378:	4b20      	ldr	r3, [pc, #128]	@ (1a0013fc <Chip_Clock_GetClockInputHz+0x13c>)
1a00137a:	685b      	ldr	r3, [r3, #4]
1a00137c:	60fb      	str	r3, [r7, #12]
		break;
1a00137e:	e02c      	b.n	1a0013da <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_MAINPLL:
		rate = Chip_Clock_GetMainPLLHz();
1a001380:	f7ff ff04 	bl	1a00118c <Chip_Clock_GetMainPLLHz>
1a001384:	60f8      	str	r0, [r7, #12]
		break;
1a001386:	e028      	b.n	1a0013da <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_IDIVA:
		rate = Chip_Clock_GetDivRate(input, CLK_IDIV_A);
1a001388:	79fb      	ldrb	r3, [r7, #7]
1a00138a:	2100      	movs	r1, #0
1a00138c:	4618      	mov	r0, r3
1a00138e:	f7ff fdf1 	bl	1a000f74 <Chip_Clock_GetDivRate>
1a001392:	60f8      	str	r0, [r7, #12]
		break;
1a001394:	e021      	b.n	1a0013da <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_IDIVB:
		rate = Chip_Clock_GetDivRate(input, CLK_IDIV_B);
1a001396:	79fb      	ldrb	r3, [r7, #7]
1a001398:	2101      	movs	r1, #1
1a00139a:	4618      	mov	r0, r3
1a00139c:	f7ff fdea 	bl	1a000f74 <Chip_Clock_GetDivRate>
1a0013a0:	60f8      	str	r0, [r7, #12]
		break;
1a0013a2:	e01a      	b.n	1a0013da <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_IDIVC:
		rate = Chip_Clock_GetDivRate(input, CLK_IDIV_C);
1a0013a4:	79fb      	ldrb	r3, [r7, #7]
1a0013a6:	2102      	movs	r1, #2
1a0013a8:	4618      	mov	r0, r3
1a0013aa:	f7ff fde3 	bl	1a000f74 <Chip_Clock_GetDivRate>
1a0013ae:	60f8      	str	r0, [r7, #12]
		break;
1a0013b0:	e013      	b.n	1a0013da <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_IDIVD:
		rate = Chip_Clock_GetDivRate(input, CLK_IDIV_D);
1a0013b2:	79fb      	ldrb	r3, [r7, #7]
1a0013b4:	2103      	movs	r1, #3
1a0013b6:	4618      	mov	r0, r3
1a0013b8:	f7ff fddc 	bl	1a000f74 <Chip_Clock_GetDivRate>
1a0013bc:	60f8      	str	r0, [r7, #12]
		break;
1a0013be:	e00c      	b.n	1a0013da <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_IDIVE:
		rate = Chip_Clock_GetDivRate(input, CLK_IDIV_E);
1a0013c0:	79fb      	ldrb	r3, [r7, #7]
1a0013c2:	2104      	movs	r1, #4
1a0013c4:	4618      	mov	r0, r3
1a0013c6:	f7ff fdd5 	bl	1a000f74 <Chip_Clock_GetDivRate>
1a0013ca:	60f8      	str	r0, [r7, #12]
		break;
1a0013cc:	e005      	b.n	1a0013da <Chip_Clock_GetClockInputHz+0x11a>

	case CLKINPUT_PD:
		rate = 0;
1a0013ce:	2300      	movs	r3, #0
1a0013d0:	60fb      	str	r3, [r7, #12]
		break;
1a0013d2:	e002      	b.n	1a0013da <Chip_Clock_GetClockInputHz+0x11a>

	default:
		break;
1a0013d4:	bf00      	nop
1a0013d6:	e000      	b.n	1a0013da <Chip_Clock_GetClockInputHz+0x11a>
		break;
1a0013d8:	bf00      	nop
	}

	return rate;
1a0013da:	68fb      	ldr	r3, [r7, #12]
}
1a0013dc:	4618      	mov	r0, r3
1a0013de:	3710      	adds	r7, #16
1a0013e0:	46bd      	mov	sp, r7
1a0013e2:	bd80      	pop	{r7, pc}
1a0013e4:	00b71b00 	.word	0x00b71b00
1a0013e8:	40043000 	.word	0x40043000
1a0013ec:	017d7840 	.word	0x017d7840
1a0013f0:	02faf080 	.word	0x02faf080
1a0013f4:	1a001ab4 	.word	0x1a001ab4
1a0013f8:	1a001ab8 	.word	0x1a001ab8
1a0013fc:	10000078 	.word	0x10000078

1a001400 <Chip_Clock_GetBaseClocktHz>:

/* Returns the frequency of the specified base clock source */
uint32_t Chip_Clock_GetBaseClocktHz(CHIP_CGU_BASE_CLK_T clock)
{
1a001400:	b580      	push	{r7, lr}
1a001402:	b082      	sub	sp, #8
1a001404:	af00      	add	r7, sp, #0
1a001406:	4603      	mov	r3, r0
1a001408:	71fb      	strb	r3, [r7, #7]
	return Chip_Clock_GetClockInputHz(Chip_Clock_GetBaseClock(clock));
1a00140a:	79fb      	ldrb	r3, [r7, #7]
1a00140c:	4618      	mov	r0, r3
1a00140e:	f000 f857 	bl	1a0014c0 <Chip_Clock_GetBaseClock>
1a001412:	4603      	mov	r3, r0
1a001414:	4618      	mov	r0, r3
1a001416:	f7ff ff53 	bl	1a0012c0 <Chip_Clock_GetClockInputHz>
1a00141a:	4603      	mov	r3, r0
}
1a00141c:	4618      	mov	r0, r3
1a00141e:	3708      	adds	r7, #8
1a001420:	46bd      	mov	sp, r7
1a001422:	bd80      	pop	{r7, pc}

1a001424 <Chip_Clock_SetBaseClock>:

/* Sets a CGU Base Clock clock source */
void Chip_Clock_SetBaseClock(CHIP_CGU_BASE_CLK_T BaseClock, CHIP_CGU_CLKIN_T Input, bool autoblocken, bool powerdn)
{
1a001424:	b490      	push	{r4, r7}
1a001426:	b084      	sub	sp, #16
1a001428:	af00      	add	r7, sp, #0
1a00142a:	4604      	mov	r4, r0
1a00142c:	4608      	mov	r0, r1
1a00142e:	4611      	mov	r1, r2
1a001430:	461a      	mov	r2, r3
1a001432:	4623      	mov	r3, r4
1a001434:	71fb      	strb	r3, [r7, #7]
1a001436:	4603      	mov	r3, r0
1a001438:	71bb      	strb	r3, [r7, #6]
1a00143a:	460b      	mov	r3, r1
1a00143c:	717b      	strb	r3, [r7, #5]
1a00143e:	4613      	mov	r3, r2
1a001440:	713b      	strb	r3, [r7, #4]
	uint32_t reg = LPC_CGU->BASE_CLK[BaseClock];
1a001442:	4a1d      	ldr	r2, [pc, #116]	@ (1a0014b8 <Chip_Clock_SetBaseClock+0x94>)
1a001444:	79fb      	ldrb	r3, [r7, #7]
1a001446:	3316      	adds	r3, #22
1a001448:	009b      	lsls	r3, r3, #2
1a00144a:	4413      	add	r3, r2
1a00144c:	685b      	ldr	r3, [r3, #4]
1a00144e:	60fb      	str	r3, [r7, #12]

	if (BaseClock < CLK_BASE_NONE) {
1a001450:	79fb      	ldrb	r3, [r7, #7]
1a001452:	2b1b      	cmp	r3, #27
1a001454:	d821      	bhi.n	1a00149a <Chip_Clock_SetBaseClock+0x76>
		if (Input != CLKINPUT_PD) {
1a001456:	79bb      	ldrb	r3, [r7, #6]
1a001458:	2b11      	cmp	r3, #17
1a00145a:	d027      	beq.n	1a0014ac <Chip_Clock_SetBaseClock+0x88>
			/* Mask off fields we plan to update */
			reg &= ~((0x1F << 24) | 1 | (1 << 11));
1a00145c:	68fa      	ldr	r2, [r7, #12]
1a00145e:	4b17      	ldr	r3, [pc, #92]	@ (1a0014bc <Chip_Clock_SetBaseClock+0x98>)
1a001460:	4013      	ands	r3, r2
1a001462:	60fb      	str	r3, [r7, #12]

			if (autoblocken) {
1a001464:	797b      	ldrb	r3, [r7, #5]
1a001466:	2b00      	cmp	r3, #0
1a001468:	d003      	beq.n	1a001472 <Chip_Clock_SetBaseClock+0x4e>
				reg |= (1 << 11);
1a00146a:	68fb      	ldr	r3, [r7, #12]
1a00146c:	f443 6300 	orr.w	r3, r3, #2048	@ 0x800
1a001470:	60fb      	str	r3, [r7, #12]
			}
			if (powerdn) {
1a001472:	793b      	ldrb	r3, [r7, #4]
1a001474:	2b00      	cmp	r3, #0
1a001476:	d003      	beq.n	1a001480 <Chip_Clock_SetBaseClock+0x5c>
				reg |= (1 << 0);
1a001478:	68fb      	ldr	r3, [r7, #12]
1a00147a:	f043 0301 	orr.w	r3, r3, #1
1a00147e:	60fb      	str	r3, [r7, #12]
			}

			/* Set clock source */
			reg |= (Input << 24);
1a001480:	79bb      	ldrb	r3, [r7, #6]
1a001482:	061b      	lsls	r3, r3, #24
1a001484:	68fa      	ldr	r2, [r7, #12]
1a001486:	4313      	orrs	r3, r2
1a001488:	60fb      	str	r3, [r7, #12]

			LPC_CGU->BASE_CLK[BaseClock] = reg;
1a00148a:	4a0b      	ldr	r2, [pc, #44]	@ (1a0014b8 <Chip_Clock_SetBaseClock+0x94>)
1a00148c:	79fb      	ldrb	r3, [r7, #7]
1a00148e:	3316      	adds	r3, #22
1a001490:	009b      	lsls	r3, r3, #2
1a001492:	4413      	add	r3, r2
1a001494:	68fa      	ldr	r2, [r7, #12]
1a001496:	605a      	str	r2, [r3, #4]
		}
	}
	else {
		LPC_CGU->BASE_CLK[BaseClock] = reg | 1;	/* Power down this base clock */
	}
}
1a001498:	e008      	b.n	1a0014ac <Chip_Clock_SetBaseClock+0x88>
		LPC_CGU->BASE_CLK[BaseClock] = reg | 1;	/* Power down this base clock */
1a00149a:	4907      	ldr	r1, [pc, #28]	@ (1a0014b8 <Chip_Clock_SetBaseClock+0x94>)
1a00149c:	79fb      	ldrb	r3, [r7, #7]
1a00149e:	68fa      	ldr	r2, [r7, #12]
1a0014a0:	f042 0201 	orr.w	r2, r2, #1
1a0014a4:	3316      	adds	r3, #22
1a0014a6:	009b      	lsls	r3, r3, #2
1a0014a8:	440b      	add	r3, r1
1a0014aa:	605a      	str	r2, [r3, #4]
}
1a0014ac:	bf00      	nop
1a0014ae:	3710      	adds	r7, #16
1a0014b0:	46bd      	mov	sp, r7
1a0014b2:	bc90      	pop	{r4, r7}
1a0014b4:	4770      	bx	lr
1a0014b6:	bf00      	nop
1a0014b8:	40050000 	.word	0x40050000
1a0014bc:	e0fff7fe 	.word	0xe0fff7fe

1a0014c0 <Chip_Clock_GetBaseClock>:
	return enabled;
}

/* Gets a CGU Base Clock clock source */
CHIP_CGU_CLKIN_T Chip_Clock_GetBaseClock(CHIP_CGU_BASE_CLK_T BaseClock)
{
1a0014c0:	b480      	push	{r7}
1a0014c2:	b085      	sub	sp, #20
1a0014c4:	af00      	add	r7, sp, #0
1a0014c6:	4603      	mov	r3, r0
1a0014c8:	71fb      	strb	r3, [r7, #7]
	uint32_t reg;

	if (BaseClock >= CLK_BASE_NONE) {
1a0014ca:	79fb      	ldrb	r3, [r7, #7]
1a0014cc:	2b1b      	cmp	r3, #27
1a0014ce:	d901      	bls.n	1a0014d4 <Chip_Clock_GetBaseClock+0x14>
		return CLKINPUT_PD;
1a0014d0:	2311      	movs	r3, #17
1a0014d2:	e013      	b.n	1a0014fc <Chip_Clock_GetBaseClock+0x3c>
	}

	reg = LPC_CGU->BASE_CLK[BaseClock];
1a0014d4:	4a0c      	ldr	r2, [pc, #48]	@ (1a001508 <Chip_Clock_GetBaseClock+0x48>)
1a0014d6:	79fb      	ldrb	r3, [r7, #7]
1a0014d8:	3316      	adds	r3, #22
1a0014da:	009b      	lsls	r3, r3, #2
1a0014dc:	4413      	add	r3, r2
1a0014de:	685b      	ldr	r3, [r3, #4]
1a0014e0:	60fb      	str	r3, [r7, #12]

	/* base clock is powered down? */
	if (reg & 1) {
1a0014e2:	68fb      	ldr	r3, [r7, #12]
1a0014e4:	f003 0301 	and.w	r3, r3, #1
1a0014e8:	2b00      	cmp	r3, #0
1a0014ea:	d001      	beq.n	1a0014f0 <Chip_Clock_GetBaseClock+0x30>
		return CLKINPUT_PD;
1a0014ec:	2311      	movs	r3, #17
1a0014ee:	e005      	b.n	1a0014fc <Chip_Clock_GetBaseClock+0x3c>
	}

	return (CHIP_CGU_CLKIN_T) ((reg >> 24) & 0x1F);
1a0014f0:	68fb      	ldr	r3, [r7, #12]
1a0014f2:	0e1b      	lsrs	r3, r3, #24
1a0014f4:	b2db      	uxtb	r3, r3
1a0014f6:	f003 031f 	and.w	r3, r3, #31
1a0014fa:	b2db      	uxtb	r3, r3
}
1a0014fc:	4618      	mov	r0, r3
1a0014fe:	3714      	adds	r7, #20
1a001500:	46bd      	mov	sp, r7
1a001502:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001506:	4770      	bx	lr
1a001508:	40050000 	.word	0x40050000

1a00150c <Chip_Clock_GetRate>:
	LPC_CCU2->PM = 0;
}

/* Returns a peripheral clock rate */
uint32_t Chip_Clock_GetRate(CHIP_CCU_CLK_T clk)
{
1a00150c:	b580      	push	{r7, lr}
1a00150e:	b086      	sub	sp, #24
1a001510:	af00      	add	r7, sp, #0
1a001512:	4603      	mov	r3, r0
1a001514:	80fb      	strh	r3, [r7, #6]
	CHIP_CGU_BASE_CLK_T baseclk;
	uint32_t reg, div, rate;

	/* Get CCU config register for clock */
	if (clk >= CLK_CCU2_START) {
1a001516:	88fb      	ldrh	r3, [r7, #6]
1a001518:	f5b3 7fa1 	cmp.w	r3, #322	@ 0x142
1a00151c:	d308      	bcc.n	1a001530 <Chip_Clock_GetRate+0x24>
		reg = LPC_CCU2->CLKCCU[clk - CLK_CCU2_START].CFG;
1a00151e:	4a1b      	ldr	r2, [pc, #108]	@ (1a00158c <Chip_Clock_GetRate+0x80>)
1a001520:	88fb      	ldrh	r3, [r7, #6]
1a001522:	f5a3 73a1 	sub.w	r3, r3, #322	@ 0x142
1a001526:	3320      	adds	r3, #32
1a001528:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a00152c:	617b      	str	r3, [r7, #20]
1a00152e:	e005      	b.n	1a00153c <Chip_Clock_GetRate+0x30>
	}
	else {
		reg = LPC_CCU1->CLKCCU[clk].CFG;
1a001530:	4a17      	ldr	r2, [pc, #92]	@ (1a001590 <Chip_Clock_GetRate+0x84>)
1a001532:	88fb      	ldrh	r3, [r7, #6]
1a001534:	3320      	adds	r3, #32
1a001536:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a00153a:	617b      	str	r3, [r7, #20]
	}

	/* Is the clock enabled? */
	if (reg & 1) {
1a00153c:	697b      	ldr	r3, [r7, #20]
1a00153e:	f003 0301 	and.w	r3, r3, #1
1a001542:	2b00      	cmp	r3, #0
1a001544:	d01b      	beq.n	1a00157e <Chip_Clock_GetRate+0x72>
		/* Get base clock for this peripheral clock */
		baseclk = Chip_Clock_FindBaseClock(clk);
1a001546:	88fb      	ldrh	r3, [r7, #6]
1a001548:	4618      	mov	r0, r3
1a00154a:	f7ff fd33 	bl	1a000fb4 <Chip_Clock_FindBaseClock>
1a00154e:	4603      	mov	r3, r0
1a001550:	72fb      	strb	r3, [r7, #11]

		/* Get base clock rate */
		rate = Chip_Clock_GetBaseClocktHz(baseclk);
1a001552:	7afb      	ldrb	r3, [r7, #11]
1a001554:	4618      	mov	r0, r3
1a001556:	f7ff ff53 	bl	1a001400 <Chip_Clock_GetBaseClocktHz>
1a00155a:	60f8      	str	r0, [r7, #12]

		/* Get divider for this clock */
		if (((reg >> 5) & 0x7) == 0) {
1a00155c:	697b      	ldr	r3, [r7, #20]
1a00155e:	095b      	lsrs	r3, r3, #5
1a001560:	f003 0307 	and.w	r3, r3, #7
1a001564:	2b00      	cmp	r3, #0
1a001566:	d102      	bne.n	1a00156e <Chip_Clock_GetRate+0x62>
			div = 1;
1a001568:	2301      	movs	r3, #1
1a00156a:	613b      	str	r3, [r7, #16]
1a00156c:	e001      	b.n	1a001572 <Chip_Clock_GetRate+0x66>
		}
		else {
			div = 2;/* No other dividers supported */
1a00156e:	2302      	movs	r3, #2
1a001570:	613b      	str	r3, [r7, #16]

		}
		rate = rate / div;
1a001572:	68fa      	ldr	r2, [r7, #12]
1a001574:	693b      	ldr	r3, [r7, #16]
1a001576:	fbb2 f3f3 	udiv	r3, r2, r3
1a00157a:	60fb      	str	r3, [r7, #12]
1a00157c:	e001      	b.n	1a001582 <Chip_Clock_GetRate+0x76>
	}
	else {
		rate = 0;
1a00157e:	2300      	movs	r3, #0
1a001580:	60fb      	str	r3, [r7, #12]
	}

	return rate;
1a001582:	68fb      	ldr	r3, [r7, #12]
}
1a001584:	4618      	mov	r0, r3
1a001586:	3718      	adds	r7, #24
1a001588:	46bd      	mov	sp, r7
1a00158a:	bd80      	pop	{r7, pc}
1a00158c:	40052000 	.word	0x40052000
1a001590:	40051000 	.word	0x40051000

1a001594 <Chip_Clock_DisableMainPLL>:
 * @return	none
 * Make sure the main PLL is not needed to clock the part before disabling it.
 * Saves power if the main PLL is not needed.
 */
__STATIC_INLINE void Chip_Clock_DisableMainPLL(void)
{
1a001594:	b480      	push	{r7}
1a001596:	af00      	add	r7, sp, #0
	/* power down main PLL */
	LPC_CGU->PLL1_CTRL |= 1;
1a001598:	4b05      	ldr	r3, [pc, #20]	@ (1a0015b0 <Chip_Clock_DisableMainPLL+0x1c>)
1a00159a:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
1a00159c:	4a04      	ldr	r2, [pc, #16]	@ (1a0015b0 <Chip_Clock_DisableMainPLL+0x1c>)
1a00159e:	f043 0301 	orr.w	r3, r3, #1
1a0015a2:	6453      	str	r3, [r2, #68]	@ 0x44
}
1a0015a4:	bf00      	nop
1a0015a6:	46bd      	mov	sp, r7
1a0015a8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0015ac:	4770      	bx	lr
1a0015ae:	bf00      	nop
1a0015b0:	40050000 	.word	0x40050000

1a0015b4 <Chip_Clock_SetupMainPLL>:
 * @param	ppll	: Pointer to pll param structure #PLL_PARAM_T
 * @return	none
 * Make sure the main PLL is enabled.
 */
__STATIC_INLINE void Chip_Clock_SetupMainPLL(const PLL_PARAM_T *ppll)
{
1a0015b4:	b480      	push	{r7}
1a0015b6:	b083      	sub	sp, #12
1a0015b8:	af00      	add	r7, sp, #0
1a0015ba:	6078      	str	r0, [r7, #4]
	/* power up main PLL */
    LPC_CGU->PLL1_CTRL = ppll->ctrl | ((uint32_t) ppll->srcin << 24) | (ppll->msel << 16) | (ppll->nsel << 12) | (ppll->psel << 8) | ( 1 << 11);
1a0015bc:	687b      	ldr	r3, [r7, #4]
1a0015be:	681b      	ldr	r3, [r3, #0]
1a0015c0:	461a      	mov	r2, r3
1a0015c2:	687b      	ldr	r3, [r7, #4]
1a0015c4:	791b      	ldrb	r3, [r3, #4]
1a0015c6:	061b      	lsls	r3, r3, #24
1a0015c8:	431a      	orrs	r2, r3
1a0015ca:	687b      	ldr	r3, [r7, #4]
1a0015cc:	691b      	ldr	r3, [r3, #16]
1a0015ce:	041b      	lsls	r3, r3, #16
1a0015d0:	431a      	orrs	r2, r3
1a0015d2:	687b      	ldr	r3, [r7, #4]
1a0015d4:	689b      	ldr	r3, [r3, #8]
1a0015d6:	031b      	lsls	r3, r3, #12
1a0015d8:	431a      	orrs	r2, r3
1a0015da:	687b      	ldr	r3, [r7, #4]
1a0015dc:	68db      	ldr	r3, [r3, #12]
1a0015de:	021b      	lsls	r3, r3, #8
1a0015e0:	4313      	orrs	r3, r2
1a0015e2:	4a05      	ldr	r2, [pc, #20]	@ (1a0015f8 <Chip_Clock_SetupMainPLL+0x44>)
1a0015e4:	f443 6300 	orr.w	r3, r3, #2048	@ 0x800
1a0015e8:	6453      	str	r3, [r2, #68]	@ 0x44
}
1a0015ea:	bf00      	nop
1a0015ec:	370c      	adds	r7, #12
1a0015ee:	46bd      	mov	sp, r7
1a0015f0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0015f4:	4770      	bx	lr
1a0015f6:	bf00      	nop
1a0015f8:	40050000 	.word	0x40050000

1a0015fc <Chip_Clock_MainPLLLocked>:
 * @brief	Wait for Main PLL to be locked
 * @return	1 - PLL is LOCKED; 0 - PLL is not locked
 * @note	The main PLL should be locked prior to using it as a clock input for a base clock.
 */
__STATIC_INLINE int Chip_Clock_MainPLLLocked(void)
{
1a0015fc:	b480      	push	{r7}
1a0015fe:	af00      	add	r7, sp, #0
	/* Return true if locked */
	return (LPC_CGU->PLL1_STAT & 1) != 0;
1a001600:	4b06      	ldr	r3, [pc, #24]	@ (1a00161c <Chip_Clock_MainPLLLocked+0x20>)
1a001602:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
1a001604:	f003 0301 	and.w	r3, r3, #1
1a001608:	2b00      	cmp	r3, #0
1a00160a:	bf14      	ite	ne
1a00160c:	2301      	movne	r3, #1
1a00160e:	2300      	moveq	r3, #0
1a001610:	b2db      	uxtb	r3, r3
}
1a001612:	4618      	mov	r0, r3
1a001614:	46bd      	mov	sp, r7
1a001616:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00161a:	4770      	bx	lr
1a00161c:	40050000 	.word	0x40050000

1a001620 <Chip_SetupCoreClock>:
/*****************************************************************************
 * Public functions
 ****************************************************************************/
/* Setup Chip Core clock */
void Chip_SetupCoreClock(CHIP_CGU_CLKIN_T clkin, uint32_t core_freq, bool setbase)
{
1a001620:	b590      	push	{r4, r7, lr}
1a001622:	b08f      	sub	sp, #60	@ 0x3c
1a001624:	af00      	add	r7, sp, #0
1a001626:	4603      	mov	r3, r0
1a001628:	6039      	str	r1, [r7, #0]
1a00162a:	71fb      	strb	r3, [r7, #7]
1a00162c:	4613      	mov	r3, r2
1a00162e:	71bb      	strb	r3, [r7, #6]
	int i;
	volatile uint32_t delay = 500;
1a001630:	f44f 73fa 	mov.w	r3, #500	@ 0x1f4
1a001634:	62bb      	str	r3, [r7, #40]	@ 0x28
	uint32_t direct = 0, pdivide = 0;
1a001636:	2300      	movs	r3, #0
1a001638:	633b      	str	r3, [r7, #48]	@ 0x30
1a00163a:	2300      	movs	r3, #0
1a00163c:	62fb      	str	r3, [r7, #44]	@ 0x2c
	PLL_PARAM_T ppll;

	if (clkin == CLKIN_CRYSTAL) {
1a00163e:	79fb      	ldrb	r3, [r7, #7]
1a001640:	2b06      	cmp	r3, #6
1a001642:	d101      	bne.n	1a001648 <Chip_SetupCoreClock+0x28>
		/* Switch main system clocking to crystal */
		Chip_Clock_EnableCrystal();
1a001644:	f7ff fcfe 	bl	1a001044 <Chip_Clock_EnableCrystal>
	}
	Chip_Clock_SetBaseClock(CLK_BASE_MX, clkin, true, false);
1a001648:	79f9      	ldrb	r1, [r7, #7]
1a00164a:	2300      	movs	r3, #0
1a00164c:	2201      	movs	r2, #1
1a00164e:	2004      	movs	r0, #4
1a001650:	f7ff fee8 	bl	1a001424 <Chip_Clock_SetBaseClock>
	Chip_Clock_DisableMainPLL(); /* Disable PLL */
1a001654:	f7ff ff9e 	bl	1a001594 <Chip_Clock_DisableMainPLL>

	/* Calculate the PLL Parameters */
	ppll.srcin = clkin;
1a001658:	79fb      	ldrb	r3, [r7, #7]
1a00165a:	733b      	strb	r3, [r7, #12]
	Chip_Clock_CalcMainPLLValue(core_freq, &ppll);
1a00165c:	f107 0308 	add.w	r3, r7, #8
1a001660:	4619      	mov	r1, r3
1a001662:	6838      	ldr	r0, [r7, #0]
1a001664:	f7ff fd26 	bl	1a0010b4 <Chip_Clock_CalcMainPLLValue>

	if (core_freq > 110000000UL) {
1a001668:	683b      	ldr	r3, [r7, #0]
1a00166a:	4a3d      	ldr	r2, [pc, #244]	@ (1a001760 <Chip_SetupCoreClock+0x140>)
1a00166c:	4293      	cmp	r3, r2
1a00166e:	d917      	bls.n	1a0016a0 <Chip_SetupCoreClock+0x80>
		if (ppll.ctrl & (1 << 6)) {
1a001670:	68bb      	ldr	r3, [r7, #8]
1a001672:	f003 0340 	and.w	r3, r3, #64	@ 0x40
1a001676:	2b00      	cmp	r3, #0
1a001678:	d001      	beq.n	1a00167e <Chip_SetupCoreClock+0x5e>
			while(1);		// to run in integer mode above 110 MHz, you need to use IDIV clock to boot strap CPU to that freq
1a00167a:	bf00      	nop
1a00167c:	e7fd      	b.n	1a00167a <Chip_SetupCoreClock+0x5a>
		} else if (ppll.ctrl & (1 << 7)){
1a00167e:	68bb      	ldr	r3, [r7, #8]
1a001680:	f003 0380 	and.w	r3, r3, #128	@ 0x80
1a001684:	2b00      	cmp	r3, #0
1a001686:	d006      	beq.n	1a001696 <Chip_SetupCoreClock+0x76>
			direct = 1;
1a001688:	2301      	movs	r3, #1
1a00168a:	633b      	str	r3, [r7, #48]	@ 0x30
			ppll.ctrl &= ~(1 << 7);
1a00168c:	68bb      	ldr	r3, [r7, #8]
1a00168e:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
1a001692:	60bb      	str	r3, [r7, #8]
1a001694:	e004      	b.n	1a0016a0 <Chip_SetupCoreClock+0x80>
		} else {
			pdivide = 1;
1a001696:	2301      	movs	r3, #1
1a001698:	62fb      	str	r3, [r7, #44]	@ 0x2c
			ppll.psel++;
1a00169a:	697b      	ldr	r3, [r7, #20]
1a00169c:	3301      	adds	r3, #1
1a00169e:	617b      	str	r3, [r7, #20]
		}
	}

	/* Setup and start the PLL */
	Chip_Clock_SetupMainPLL(&ppll);
1a0016a0:	f107 0308 	add.w	r3, r7, #8
1a0016a4:	4618      	mov	r0, r3
1a0016a6:	f7ff ff85 	bl	1a0015b4 <Chip_Clock_SetupMainPLL>

	/* Wait for the PLL to lock */
	while(!Chip_Clock_MainPLLLocked()) {}
1a0016aa:	bf00      	nop
1a0016ac:	f7ff ffa6 	bl	1a0015fc <Chip_Clock_MainPLLLocked>
1a0016b0:	4603      	mov	r3, r0
1a0016b2:	2b00      	cmp	r3, #0
1a0016b4:	d0fa      	beq.n	1a0016ac <Chip_SetupCoreClock+0x8c>

	/* Set core clock base as PLL1 */
	Chip_Clock_SetBaseClock(CLK_BASE_MX, CLKIN_MAINPLL, true, false);
1a0016b6:	2300      	movs	r3, #0
1a0016b8:	2201      	movs	r2, #1
1a0016ba:	2109      	movs	r1, #9
1a0016bc:	2004      	movs	r0, #4
1a0016be:	f7ff feb1 	bl	1a001424 <Chip_Clock_SetBaseClock>

	if (direct) {
1a0016c2:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
1a0016c4:	2b00      	cmp	r3, #0
1a0016c6:	d012      	beq.n	1a0016ee <Chip_SetupCoreClock+0xce>
		delay = 1000;
1a0016c8:	f44f 737a 	mov.w	r3, #1000	@ 0x3e8
1a0016cc:	62bb      	str	r3, [r7, #40]	@ 0x28
		while(delay --){} /* Wait for approx 50 uSec -- for power supply to stabilize*/
1a0016ce:	bf00      	nop
1a0016d0:	6abb      	ldr	r3, [r7, #40]	@ 0x28
1a0016d2:	1e5a      	subs	r2, r3, #1
1a0016d4:	62ba      	str	r2, [r7, #40]	@ 0x28
1a0016d6:	2b00      	cmp	r3, #0
1a0016d8:	d1fa      	bne.n	1a0016d0 <Chip_SetupCoreClock+0xb0>
		ppll.ctrl |= 1 << 7;
1a0016da:	68bb      	ldr	r3, [r7, #8]
1a0016dc:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
1a0016e0:	60bb      	str	r3, [r7, #8]
		Chip_Clock_SetupMainPLL(&ppll); /* Set DIRECT to operate at full frequency */
1a0016e2:	f107 0308 	add.w	r3, r7, #8
1a0016e6:	4618      	mov	r0, r3
1a0016e8:	f7ff ff64 	bl	1a0015b4 <Chip_Clock_SetupMainPLL>
1a0016ec:	e013      	b.n	1a001716 <Chip_SetupCoreClock+0xf6>
	} else if (pdivide) {
1a0016ee:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a0016f0:	2b00      	cmp	r3, #0
1a0016f2:	d010      	beq.n	1a001716 <Chip_SetupCoreClock+0xf6>
		delay = 1000;
1a0016f4:	f44f 737a 	mov.w	r3, #1000	@ 0x3e8
1a0016f8:	62bb      	str	r3, [r7, #40]	@ 0x28
		while(delay --){} /* Wait for approx 50 uSec -- for power supply to stabilize */
1a0016fa:	bf00      	nop
1a0016fc:	6abb      	ldr	r3, [r7, #40]	@ 0x28
1a0016fe:	1e5a      	subs	r2, r3, #1
1a001700:	62ba      	str	r2, [r7, #40]	@ 0x28
1a001702:	2b00      	cmp	r3, #0
1a001704:	d1fa      	bne.n	1a0016fc <Chip_SetupCoreClock+0xdc>
		ppll.psel--;
1a001706:	697b      	ldr	r3, [r7, #20]
1a001708:	3b01      	subs	r3, #1
1a00170a:	617b      	str	r3, [r7, #20]
		Chip_Clock_SetupMainPLL(&ppll); /* Set PDIV to operate at full frequency */
1a00170c:	f107 0308 	add.w	r3, r7, #8
1a001710:	4618      	mov	r0, r3
1a001712:	f7ff ff4f 	bl	1a0015b4 <Chip_Clock_SetupMainPLL>
	}

	if (setbase) {
1a001716:	79bb      	ldrb	r3, [r7, #6]
1a001718:	2b00      	cmp	r3, #0
1a00171a:	d01d      	beq.n	1a001758 <Chip_SetupCoreClock+0x138>
		/* Setup system base clocks and initial states. This won't enable and
		   disable individual clocks, but sets up the base clock sources for
		   each individual peripheral clock. */
		for (i = 0; i < (sizeof(InitClkStates) / sizeof(InitClkStates[0])); i++) {
1a00171c:	2300      	movs	r3, #0
1a00171e:	637b      	str	r3, [r7, #52]	@ 0x34
1a001720:	e017      	b.n	1a001752 <Chip_SetupCoreClock+0x132>
			Chip_Clock_SetBaseClock(InitClkStates[i].clk, InitClkStates[i].clkin,
1a001722:	4a10      	ldr	r2, [pc, #64]	@ (1a001764 <Chip_SetupCoreClock+0x144>)
1a001724:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
1a001726:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a00172a:	4a0e      	ldr	r2, [pc, #56]	@ (1a001764 <Chip_SetupCoreClock+0x144>)
1a00172c:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
1a00172e:	009b      	lsls	r3, r3, #2
1a001730:	4413      	add	r3, r2
1a001732:	7859      	ldrb	r1, [r3, #1]
									InitClkStates[i].autoblock_enab, InitClkStates[i].powerdn);
1a001734:	4a0b      	ldr	r2, [pc, #44]	@ (1a001764 <Chip_SetupCoreClock+0x144>)
1a001736:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
1a001738:	009b      	lsls	r3, r3, #2
1a00173a:	4413      	add	r3, r2
1a00173c:	789a      	ldrb	r2, [r3, #2]
1a00173e:	4c09      	ldr	r4, [pc, #36]	@ (1a001764 <Chip_SetupCoreClock+0x144>)
1a001740:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
1a001742:	009b      	lsls	r3, r3, #2
1a001744:	4423      	add	r3, r4
1a001746:	78db      	ldrb	r3, [r3, #3]
			Chip_Clock_SetBaseClock(InitClkStates[i].clk, InitClkStates[i].clkin,
1a001748:	f7ff fe6c 	bl	1a001424 <Chip_Clock_SetBaseClock>
		for (i = 0; i < (sizeof(InitClkStates) / sizeof(InitClkStates[0])); i++) {
1a00174c:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
1a00174e:	3301      	adds	r3, #1
1a001750:	637b      	str	r3, [r7, #52]	@ 0x34
1a001752:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
1a001754:	2b11      	cmp	r3, #17
1a001756:	d9e4      	bls.n	1a001722 <Chip_SetupCoreClock+0x102>
		}
	}
}
1a001758:	bf00      	nop
1a00175a:	373c      	adds	r7, #60	@ 0x3c
1a00175c:	46bd      	mov	sp, r7
1a00175e:	bd90      	pop	{r4, r7, pc}
1a001760:	068e7780 	.word	0x068e7780
1a001764:	1a001b30 	.word	0x1a001b30

1a001768 <malloc>:
1a001768:	4b02      	ldr	r3, [pc, #8]	@ (1a001774 <malloc+0xc>)
1a00176a:	4601      	mov	r1, r0
1a00176c:	6818      	ldr	r0, [r3, #0]
1a00176e:	f000 b82f 	b.w	1a0017d0 <_malloc_r>
1a001772:	bf00      	nop
1a001774:	10000004 	.word	0x10000004

1a001778 <free>:
1a001778:	4b02      	ldr	r3, [pc, #8]	@ (1a001784 <free+0xc>)
1a00177a:	4601      	mov	r1, r0
1a00177c:	6818      	ldr	r0, [r3, #0]
1a00177e:	f000 b92b 	b.w	1a0019d8 <_free_r>
1a001782:	bf00      	nop
1a001784:	10000004 	.word	0x10000004

1a001788 <sbrk_aligned>:
1a001788:	b570      	push	{r4, r5, r6, lr}
1a00178a:	4e10      	ldr	r6, [pc, #64]	@ (1a0017cc <sbrk_aligned+0x44>)
1a00178c:	6833      	ldr	r3, [r6, #0]
1a00178e:	4605      	mov	r5, r0
1a001790:	460c      	mov	r4, r1
1a001792:	b1b3      	cbz	r3, 1a0017c2 <sbrk_aligned+0x3a>
1a001794:	4621      	mov	r1, r4
1a001796:	4628      	mov	r0, r5
1a001798:	f000 f8f8 	bl	1a00198c <_sbrk_r>
1a00179c:	1c43      	adds	r3, r0, #1
1a00179e:	d00c      	beq.n	1a0017ba <sbrk_aligned+0x32>
1a0017a0:	1cc4      	adds	r4, r0, #3
1a0017a2:	f024 0403 	bic.w	r4, r4, #3
1a0017a6:	42a0      	cmp	r0, r4
1a0017a8:	d005      	beq.n	1a0017b6 <sbrk_aligned+0x2e>
1a0017aa:	1a21      	subs	r1, r4, r0
1a0017ac:	4628      	mov	r0, r5
1a0017ae:	f000 f8ed 	bl	1a00198c <_sbrk_r>
1a0017b2:	3001      	adds	r0, #1
1a0017b4:	d001      	beq.n	1a0017ba <sbrk_aligned+0x32>
1a0017b6:	4620      	mov	r0, r4
1a0017b8:	bd70      	pop	{r4, r5, r6, pc}
1a0017ba:	f04f 34ff 	mov.w	r4, #4294967295
1a0017be:	4620      	mov	r0, r4
1a0017c0:	bd70      	pop	{r4, r5, r6, pc}
1a0017c2:	4619      	mov	r1, r3
1a0017c4:	f000 f8e2 	bl	1a00198c <_sbrk_r>
1a0017c8:	6030      	str	r0, [r6, #0]
1a0017ca:	e7e3      	b.n	1a001794 <sbrk_aligned+0xc>
1a0017cc:	10000080 	.word	0x10000080

1a0017d0 <_malloc_r>:
1a0017d0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
1a0017d4:	1ccd      	adds	r5, r1, #3
1a0017d6:	f025 0503 	bic.w	r5, r5, #3
1a0017da:	3508      	adds	r5, #8
1a0017dc:	2d0c      	cmp	r5, #12
1a0017de:	bf38      	it	cc
1a0017e0:	250c      	movcc	r5, #12
1a0017e2:	2d00      	cmp	r5, #0
1a0017e4:	4606      	mov	r6, r0
1a0017e6:	db18      	blt.n	1a00181a <_malloc_r+0x4a>
1a0017e8:	42a9      	cmp	r1, r5
1a0017ea:	d816      	bhi.n	1a00181a <_malloc_r+0x4a>
1a0017ec:	f8df 80dc 	ldr.w	r8, [pc, #220]	@ 1a0018cc <_malloc_r+0xfc>
1a0017f0:	f000 f86e 	bl	1a0018d0 <__malloc_lock>
1a0017f4:	f8d8 2004 	ldr.w	r2, [r8, #4]
1a0017f8:	b1a2      	cbz	r2, 1a001824 <_malloc_r+0x54>
1a0017fa:	4614      	mov	r4, r2
1a0017fc:	e003      	b.n	1a001806 <_malloc_r+0x36>
1a0017fe:	6863      	ldr	r3, [r4, #4]
1a001800:	4622      	mov	r2, r4
1a001802:	b17b      	cbz	r3, 1a001824 <_malloc_r+0x54>
1a001804:	461c      	mov	r4, r3
1a001806:	6823      	ldr	r3, [r4, #0]
1a001808:	1b5b      	subs	r3, r3, r5
1a00180a:	d4f8      	bmi.n	1a0017fe <_malloc_r+0x2e>
1a00180c:	2b0b      	cmp	r3, #11
1a00180e:	d81f      	bhi.n	1a001850 <_malloc_r+0x80>
1a001810:	4294      	cmp	r4, r2
1a001812:	6863      	ldr	r3, [r4, #4]
1a001814:	d054      	beq.n	1a0018c0 <_malloc_r+0xf0>
1a001816:	6053      	str	r3, [r2, #4]
1a001818:	e00c      	b.n	1a001834 <_malloc_r+0x64>
1a00181a:	230c      	movs	r3, #12
1a00181c:	6033      	str	r3, [r6, #0]
1a00181e:	2000      	movs	r0, #0
1a001820:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
1a001824:	4629      	mov	r1, r5
1a001826:	4630      	mov	r0, r6
1a001828:	f7ff ffae 	bl	1a001788 <sbrk_aligned>
1a00182c:	1c43      	adds	r3, r0, #1
1a00182e:	4604      	mov	r4, r0
1a001830:	d019      	beq.n	1a001866 <_malloc_r+0x96>
1a001832:	6005      	str	r5, [r0, #0]
1a001834:	4630      	mov	r0, r6
1a001836:	f000 f851 	bl	1a0018dc <__malloc_unlock>
1a00183a:	f104 000b 	add.w	r0, r4, #11
1a00183e:	1d23      	adds	r3, r4, #4
1a001840:	f020 0007 	bic.w	r0, r0, #7
1a001844:	1ac2      	subs	r2, r0, r3
1a001846:	bf1c      	itt	ne
1a001848:	1a1b      	subne	r3, r3, r0
1a00184a:	50a3      	strne	r3, [r4, r2]
1a00184c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
1a001850:	1961      	adds	r1, r4, r5
1a001852:	4294      	cmp	r4, r2
1a001854:	6025      	str	r5, [r4, #0]
1a001856:	bf14      	ite	ne
1a001858:	6051      	strne	r1, [r2, #4]
1a00185a:	f8c8 1004 	streq.w	r1, [r8, #4]
1a00185e:	5163      	str	r3, [r4, r5]
1a001860:	6863      	ldr	r3, [r4, #4]
1a001862:	604b      	str	r3, [r1, #4]
1a001864:	e7e6      	b.n	1a001834 <_malloc_r+0x64>
1a001866:	f8d8 7004 	ldr.w	r7, [r8, #4]
1a00186a:	b31f      	cbz	r7, 1a0018b4 <_malloc_r+0xe4>
1a00186c:	463c      	mov	r4, r7
1a00186e:	687f      	ldr	r7, [r7, #4]
1a001870:	2f00      	cmp	r7, #0
1a001872:	d1fb      	bne.n	1a00186c <_malloc_r+0x9c>
1a001874:	6823      	ldr	r3, [r4, #0]
1a001876:	4639      	mov	r1, r7
1a001878:	4630      	mov	r0, r6
1a00187a:	eb04 0903 	add.w	r9, r4, r3
1a00187e:	f000 f885 	bl	1a00198c <_sbrk_r>
1a001882:	4581      	cmp	r9, r0
1a001884:	d116      	bne.n	1a0018b4 <_malloc_r+0xe4>
1a001886:	6823      	ldr	r3, [r4, #0]
1a001888:	1aed      	subs	r5, r5, r3
1a00188a:	4629      	mov	r1, r5
1a00188c:	4630      	mov	r0, r6
1a00188e:	f7ff ff7b 	bl	1a001788 <sbrk_aligned>
1a001892:	3001      	adds	r0, #1
1a001894:	d00e      	beq.n	1a0018b4 <_malloc_r+0xe4>
1a001896:	6823      	ldr	r3, [r4, #0]
1a001898:	f8d8 2004 	ldr.w	r2, [r8, #4]
1a00189c:	442b      	add	r3, r5
1a00189e:	6023      	str	r3, [r4, #0]
1a0018a0:	6853      	ldr	r3, [r2, #4]
1a0018a2:	b183      	cbz	r3, 1a0018c6 <_malloc_r+0xf6>
1a0018a4:	42a3      	cmp	r3, r4
1a0018a6:	d003      	beq.n	1a0018b0 <_malloc_r+0xe0>
1a0018a8:	461a      	mov	r2, r3
1a0018aa:	685b      	ldr	r3, [r3, #4]
1a0018ac:	429c      	cmp	r4, r3
1a0018ae:	d1fb      	bne.n	1a0018a8 <_malloc_r+0xd8>
1a0018b0:	2300      	movs	r3, #0
1a0018b2:	e7b0      	b.n	1a001816 <_malloc_r+0x46>
1a0018b4:	230c      	movs	r3, #12
1a0018b6:	6033      	str	r3, [r6, #0]
1a0018b8:	4630      	mov	r0, r6
1a0018ba:	f000 f80f 	bl	1a0018dc <__malloc_unlock>
1a0018be:	e7ae      	b.n	1a00181e <_malloc_r+0x4e>
1a0018c0:	f8c8 3004 	str.w	r3, [r8, #4]
1a0018c4:	e7b6      	b.n	1a001834 <_malloc_r+0x64>
1a0018c6:	f8c8 7004 	str.w	r7, [r8, #4]
1a0018ca:	e7b3      	b.n	1a001834 <_malloc_r+0x64>
1a0018cc:	10000080 	.word	0x10000080

1a0018d0 <__malloc_lock>:
1a0018d0:	4801      	ldr	r0, [pc, #4]	@ (1a0018d8 <__malloc_lock+0x8>)
1a0018d2:	f000 b877 	b.w	1a0019c4 <__retarget_lock_acquire_recursive>
1a0018d6:	bf00      	nop
1a0018d8:	100001d8 	.word	0x100001d8

1a0018dc <__malloc_unlock>:
1a0018dc:	4801      	ldr	r0, [pc, #4]	@ (1a0018e4 <__malloc_unlock+0x8>)
1a0018de:	f000 b879 	b.w	1a0019d4 <__retarget_lock_release_recursive>
1a0018e2:	bf00      	nop
1a0018e4:	100001d8 	.word	0x100001d8

1a0018e8 <memset>:
1a0018e8:	0783      	lsls	r3, r0, #30
1a0018ea:	b530      	push	{r4, r5, lr}
1a0018ec:	d047      	beq.n	1a00197e <memset+0x96>
1a0018ee:	1e54      	subs	r4, r2, #1
1a0018f0:	2a00      	cmp	r2, #0
1a0018f2:	d03e      	beq.n	1a001972 <memset+0x8a>
1a0018f4:	b2ca      	uxtb	r2, r1
1a0018f6:	4603      	mov	r3, r0
1a0018f8:	e001      	b.n	1a0018fe <memset+0x16>
1a0018fa:	3c01      	subs	r4, #1
1a0018fc:	d339      	bcc.n	1a001972 <memset+0x8a>
1a0018fe:	f803 2b01 	strb.w	r2, [r3], #1
1a001902:	079d      	lsls	r5, r3, #30
1a001904:	d1f9      	bne.n	1a0018fa <memset+0x12>
1a001906:	2c03      	cmp	r4, #3
1a001908:	d92c      	bls.n	1a001964 <memset+0x7c>
1a00190a:	b2cd      	uxtb	r5, r1
1a00190c:	eb05 2505 	add.w	r5, r5, r5, lsl #8
1a001910:	2c0f      	cmp	r4, #15
1a001912:	eb05 4505 	add.w	r5, r5, r5, lsl #16
1a001916:	d935      	bls.n	1a001984 <memset+0x9c>
1a001918:	f1a4 0210 	sub.w	r2, r4, #16
1a00191c:	f022 0c0f 	bic.w	ip, r2, #15
1a001920:	f103 0e10 	add.w	lr, r3, #16
1a001924:	44e6      	add	lr, ip
1a001926:	ea4f 1c12 	mov.w	ip, r2, lsr #4
1a00192a:	461a      	mov	r2, r3
1a00192c:	e9c2 5500 	strd	r5, r5, [r2]
1a001930:	e9c2 5502 	strd	r5, r5, [r2, #8]
1a001934:	3210      	adds	r2, #16
1a001936:	4572      	cmp	r2, lr
1a001938:	d1f8      	bne.n	1a00192c <memset+0x44>
1a00193a:	f10c 0201 	add.w	r2, ip, #1
1a00193e:	f014 0f0c 	tst.w	r4, #12
1a001942:	eb03 1202 	add.w	r2, r3, r2, lsl #4
1a001946:	f004 0c0f 	and.w	ip, r4, #15
1a00194a:	d013      	beq.n	1a001974 <memset+0x8c>
1a00194c:	f1ac 0304 	sub.w	r3, ip, #4
1a001950:	f023 0303 	bic.w	r3, r3, #3
1a001954:	3304      	adds	r3, #4
1a001956:	4413      	add	r3, r2
1a001958:	f842 5b04 	str.w	r5, [r2], #4
1a00195c:	4293      	cmp	r3, r2
1a00195e:	d1fb      	bne.n	1a001958 <memset+0x70>
1a001960:	f00c 0403 	and.w	r4, ip, #3
1a001964:	b12c      	cbz	r4, 1a001972 <memset+0x8a>
1a001966:	b2c9      	uxtb	r1, r1
1a001968:	441c      	add	r4, r3
1a00196a:	f803 1b01 	strb.w	r1, [r3], #1
1a00196e:	42a3      	cmp	r3, r4
1a001970:	d1fb      	bne.n	1a00196a <memset+0x82>
1a001972:	bd30      	pop	{r4, r5, pc}
1a001974:	4664      	mov	r4, ip
1a001976:	4613      	mov	r3, r2
1a001978:	2c00      	cmp	r4, #0
1a00197a:	d1f4      	bne.n	1a001966 <memset+0x7e>
1a00197c:	e7f9      	b.n	1a001972 <memset+0x8a>
1a00197e:	4603      	mov	r3, r0
1a001980:	4614      	mov	r4, r2
1a001982:	e7c0      	b.n	1a001906 <memset+0x1e>
1a001984:	461a      	mov	r2, r3
1a001986:	46a4      	mov	ip, r4
1a001988:	e7e0      	b.n	1a00194c <memset+0x64>
1a00198a:	bf00      	nop

1a00198c <_sbrk_r>:
1a00198c:	b538      	push	{r3, r4, r5, lr}
1a00198e:	4d07      	ldr	r5, [pc, #28]	@ (1a0019ac <_sbrk_r+0x20>)
1a001990:	2200      	movs	r2, #0
1a001992:	4604      	mov	r4, r0
1a001994:	4608      	mov	r0, r1
1a001996:	602a      	str	r2, [r5, #0]
1a001998:	f000 f87c 	bl	1a001a94 <_sbrk>
1a00199c:	1c43      	adds	r3, r0, #1
1a00199e:	d000      	beq.n	1a0019a2 <_sbrk_r+0x16>
1a0019a0:	bd38      	pop	{r3, r4, r5, pc}
1a0019a2:	682b      	ldr	r3, [r5, #0]
1a0019a4:	2b00      	cmp	r3, #0
1a0019a6:	d0fb      	beq.n	1a0019a0 <_sbrk_r+0x14>
1a0019a8:	6023      	str	r3, [r4, #0]
1a0019aa:	bd38      	pop	{r3, r4, r5, pc}
1a0019ac:	100001c4 	.word	0x100001c4

1a0019b0 <__retarget_lock_init>:
1a0019b0:	4770      	bx	lr
1a0019b2:	bf00      	nop

1a0019b4 <__retarget_lock_init_recursive>:
1a0019b4:	4770      	bx	lr
1a0019b6:	bf00      	nop

1a0019b8 <__retarget_lock_close>:
1a0019b8:	4770      	bx	lr
1a0019ba:	bf00      	nop

1a0019bc <__retarget_lock_close_recursive>:
1a0019bc:	4770      	bx	lr
1a0019be:	bf00      	nop

1a0019c0 <__retarget_lock_acquire>:
1a0019c0:	4770      	bx	lr
1a0019c2:	bf00      	nop

1a0019c4 <__retarget_lock_acquire_recursive>:
1a0019c4:	4770      	bx	lr
1a0019c6:	bf00      	nop

1a0019c8 <__retarget_lock_try_acquire>:
1a0019c8:	2001      	movs	r0, #1
1a0019ca:	4770      	bx	lr

1a0019cc <__retarget_lock_try_acquire_recursive>:
1a0019cc:	2001      	movs	r0, #1
1a0019ce:	4770      	bx	lr

1a0019d0 <__retarget_lock_release>:
1a0019d0:	4770      	bx	lr
1a0019d2:	bf00      	nop

1a0019d4 <__retarget_lock_release_recursive>:
1a0019d4:	4770      	bx	lr
1a0019d6:	bf00      	nop

1a0019d8 <_free_r>:
1a0019d8:	2900      	cmp	r1, #0
1a0019da:	d050      	beq.n	1a001a7e <_free_r+0xa6>
1a0019dc:	b538      	push	{r3, r4, r5, lr}
1a0019de:	f851 3c04 	ldr.w	r3, [r1, #-4]
1a0019e2:	1f0c      	subs	r4, r1, #4
1a0019e4:	2b00      	cmp	r3, #0
1a0019e6:	bfb8      	it	lt
1a0019e8:	18e4      	addlt	r4, r4, r3
1a0019ea:	4605      	mov	r5, r0
1a0019ec:	f7ff ff70 	bl	1a0018d0 <__malloc_lock>
1a0019f0:	4a27      	ldr	r2, [pc, #156]	@ (1a001a90 <_free_r+0xb8>)
1a0019f2:	6813      	ldr	r3, [r2, #0]
1a0019f4:	b12b      	cbz	r3, 1a001a02 <_free_r+0x2a>
1a0019f6:	42a3      	cmp	r3, r4
1a0019f8:	d90c      	bls.n	1a001a14 <_free_r+0x3c>
1a0019fa:	6821      	ldr	r1, [r4, #0]
1a0019fc:	1860      	adds	r0, r4, r1
1a0019fe:	4283      	cmp	r3, r0
1a001a00:	d02c      	beq.n	1a001a5c <_free_r+0x84>
1a001a02:	6063      	str	r3, [r4, #4]
1a001a04:	4628      	mov	r0, r5
1a001a06:	6014      	str	r4, [r2, #0]
1a001a08:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
1a001a0c:	f7ff bf66 	b.w	1a0018dc <__malloc_unlock>
1a001a10:	42a3      	cmp	r3, r4
1a001a12:	d80f      	bhi.n	1a001a34 <_free_r+0x5c>
1a001a14:	461a      	mov	r2, r3
1a001a16:	685b      	ldr	r3, [r3, #4]
1a001a18:	2b00      	cmp	r3, #0
1a001a1a:	d1f9      	bne.n	1a001a10 <_free_r+0x38>
1a001a1c:	6811      	ldr	r1, [r2, #0]
1a001a1e:	1850      	adds	r0, r2, r1
1a001a20:	4284      	cmp	r4, r0
1a001a22:	d017      	beq.n	1a001a54 <_free_r+0x7c>
1a001a24:	d32c      	bcc.n	1a001a80 <_free_r+0xa8>
1a001a26:	6063      	str	r3, [r4, #4]
1a001a28:	6054      	str	r4, [r2, #4]
1a001a2a:	4628      	mov	r0, r5
1a001a2c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
1a001a30:	f7ff bf54 	b.w	1a0018dc <__malloc_unlock>
1a001a34:	6811      	ldr	r1, [r2, #0]
1a001a36:	1850      	adds	r0, r2, r1
1a001a38:	42a0      	cmp	r0, r4
1a001a3a:	d014      	beq.n	1a001a66 <_free_r+0x8e>
1a001a3c:	d820      	bhi.n	1a001a80 <_free_r+0xa8>
1a001a3e:	6821      	ldr	r1, [r4, #0]
1a001a40:	1860      	adds	r0, r4, r1
1a001a42:	4283      	cmp	r3, r0
1a001a44:	d1ef      	bne.n	1a001a26 <_free_r+0x4e>
1a001a46:	6818      	ldr	r0, [r3, #0]
1a001a48:	685b      	ldr	r3, [r3, #4]
1a001a4a:	4408      	add	r0, r1
1a001a4c:	e9c4 0300 	strd	r0, r3, [r4]
1a001a50:	6054      	str	r4, [r2, #4]
1a001a52:	e7ea      	b.n	1a001a2a <_free_r+0x52>
1a001a54:	6823      	ldr	r3, [r4, #0]
1a001a56:	440b      	add	r3, r1
1a001a58:	6013      	str	r3, [r2, #0]
1a001a5a:	e7e6      	b.n	1a001a2a <_free_r+0x52>
1a001a5c:	6818      	ldr	r0, [r3, #0]
1a001a5e:	685b      	ldr	r3, [r3, #4]
1a001a60:	4408      	add	r0, r1
1a001a62:	6020      	str	r0, [r4, #0]
1a001a64:	e7cd      	b.n	1a001a02 <_free_r+0x2a>
1a001a66:	6820      	ldr	r0, [r4, #0]
1a001a68:	4401      	add	r1, r0
1a001a6a:	1850      	adds	r0, r2, r1
1a001a6c:	4283      	cmp	r3, r0
1a001a6e:	6011      	str	r1, [r2, #0]
1a001a70:	d1db      	bne.n	1a001a2a <_free_r+0x52>
1a001a72:	e9d3 0400 	ldrd	r0, r4, [r3]
1a001a76:	4401      	add	r1, r0
1a001a78:	e9c2 1400 	strd	r1, r4, [r2]
1a001a7c:	e7d5      	b.n	1a001a2a <_free_r+0x52>
1a001a7e:	4770      	bx	lr
1a001a80:	230c      	movs	r3, #12
1a001a82:	602b      	str	r3, [r5, #0]
1a001a84:	4628      	mov	r0, r5
1a001a86:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
1a001a8a:	f7ff bf27 	b.w	1a0018dc <__malloc_unlock>
1a001a8e:	bf00      	nop
1a001a90:	10000084 	.word	0x10000084

1a001a94 <_sbrk>:
1a001a94:	4a04      	ldr	r2, [pc, #16]	@ (1a001aa8 <_sbrk+0x14>)
1a001a96:	4905      	ldr	r1, [pc, #20]	@ (1a001aac <_sbrk+0x18>)
1a001a98:	6813      	ldr	r3, [r2, #0]
1a001a9a:	2b00      	cmp	r3, #0
1a001a9c:	bf08      	it	eq
1a001a9e:	460b      	moveq	r3, r1
1a001aa0:	4418      	add	r0, r3
1a001aa2:	6010      	str	r0, [r2, #0]
1a001aa4:	4618      	mov	r0, r3
1a001aa6:	4770      	bx	lr
1a001aa8:	100001e8 	.word	0x100001e8
1a001aac:	100001ec 	.word	0x100001ec

1a001ab0 <InitClkStates>:
1a001ab0:	01010f01                                ....

1a001ab4 <ExtRateIn>:
1a001ab4:	00000000                                ....

1a001ab8 <OscRateIn>:
1a001ab8:	00b71b00                                ....

1a001abc <periph_to_base>:
1a001abc:	00050000 0020000a 00090024 00400040     ...... .$...@.@.
1a001acc:	00600005 000400a6 00c300c0 00e00002     ..`.............
1a001adc:	000100e0 01000100 01200003 00060120     .......... . ...
1a001aec:	01400140 0142000c 00190142 01620162     @.@...B.B...b.b.
1a001afc:	01820013 00120182 01a201a2 01c20011     ................
1a001b0c:	001001c2 01e201e2 0202000f 000e0202     ................
1a001b1c:	02220222 0223000d 001c0223 0f0f0f03     "."...#.#.......
1a001b2c:	000000ff                                ....

1a001b30 <InitClkStates>:
1a001b30:	00010100 00010909 0001090a 01010701     ................
1a001b40:	00010902 00010906 0101090c 0001090d     ................
1a001b50:	0001090e 0001090f 00010910 00010911     ................
1a001b60:	00010912 00010913 00011114 00011119     ................
1a001b70:	0001111a 0001111b                       ........
