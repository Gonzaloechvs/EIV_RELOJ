
build/bin/RELOJ.elf:     file format elf32-littlearm
build/bin/RELOJ.elf
architecture: armv7e-m, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x1a0008bd

Program Header:
    LOAD off    0x00000054 vaddr 0x10000054 paddr 0x10000054 align 2**12
         filesz 0x00000000 memsz 0x000001a4 flags rw-
    LOAD off    0x00001000 vaddr 0x1a000000 paddr 0x1a000000 align 2**12
         filesz 0x00001bb0 memsz 0x00001bb0 flags r-x
    LOAD off    0x00003000 vaddr 0x10000000 paddr 0x1a001bb0 align 2**12
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
  3 .data         00000054  10000000  1a001bb0  00003000  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  4 .data_RAM2    00000000  10080000  10080000  00003054  2**2
                  CONTENTS
  5 .data_RAM3    00000000  20000000  20000000  00003054  2**2
                  CONTENTS
  6 .data_RAM4    00000000  20008000  20008000  00003054  2**2
                  CONTENTS
  7 .data_RAM5    00000000  2000c000  2000c000  00003054  2**2
                  CONTENTS
  8 .bss          000001a4  10000054  10000054  00001054  2**2
                  ALLOC
  9 .text         00001960  1a000250  1a000250  00001250  2**2
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
 15 .noinit       00000000  100001f8  100001f8  00000000  2**2
                  ALLOC
 16 .ARM.attributes 0000002e  00000000  00000000  00003054  2**0
                  CONTENTS, READONLY
 17 .comment      00000012  00000000  00000000  00003082  2**0
                  CONTENTS, READONLY
 18 .debug_info   00009642  00000000  00000000  00003094  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 19 .debug_abbrev 000021ce  00000000  00000000  0000c6d6  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 20 .debug_aranges 000004c8  00000000  00000000  0000e8a4  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 21 .debug_rnglists 0000037a  00000000  00000000  0000ed6c  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 22 .debug_macro  00006fa1  00000000  00000000  0000f0e6  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 23 .debug_line   00005b08  00000000  00000000  00016087  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 24 .debug_str    0001c97b  00000000  00000000  0001bb8f  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 25 .debug_frame  000010b8  00000000  00000000  0003850c  2**2
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 26 .debug_loclists 000009e6  00000000  00000000  000395c4  2**0
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
100001f8 l    d  .noinit	00000000 .noinit
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
1a000590 l     F .text	00000034 Chip_SCU_PinMuxSet
1a0005c4 l     F .text	000000b0 ConfigureLeds
1a000674 l     F .text	00000080 ConfigureKeys
1a0006f4 l     F .text	000000b4 FlashLed
1000007c l     O .bss	00000004 divisor.1
10000000 l     O .data	00000001 state.0
1a0007a8 l     F .text	00000048 SwitchLed
1a0007f0 l     F .text	0000002c ToggleLed
1a00081c l     F .text	00000038 TestLed
1a000854 l     F .text	0000003e Delay
00000000 l    df *ABS*	00000000 impure.c
00000000 l    df *ABS*	00000000 digital.c
1a000250 l     F .text	00000038 Chip_GPIO_SetPinState
1a000288 l     F .text	00000034 Chip_GPIO_ReadPortBit
1a0002bc l     F .text	0000003e Chip_GPIO_SetPinDIROutput
1a0002fa l     F .text	00000040 Chip_GPIO_SetPinDIRInput
1a00033a l     F .text	00000042 Chip_GPIO_SetPinDIR
1a00037c l     F .text	00000032 Chip_GPIO_SetPinToggle
00000000 l    df *ABS*	00000000 board.c
1a0009a0 l     F .text	00000034 Chip_SCU_PinMuxSet
1a0009d4 l     F .text	00000054 Chip_CREG_SetFlashAcceleration
1a000a28 l     F .text	00000038 Chip_GPIO_SetPinState
1a000a60 l     F .text	0000003e Chip_GPIO_SetPinDIROutput
1a000a9e l     F .text	00000040 Chip_GPIO_SetPinDIRInput
1a000ade l     F .text	00000042 Chip_GPIO_SetPinDIR
1a001ae8 l     O .text	00000004 InitClkStates
1a000b20 l     F .text	00000074 SetupClocking
00000000 l    df *ABS*	00000000 chip_18xx_43xx.c
00000000 l    df *ABS*	00000000 clock_18xx_43xx.c
1a001af4 l     O .text	0000006c periph_to_base
10000084 l     O .bss	00000008 audio_usb_pll_freq
1a000ce4 l     F .text	00000022 ABS
1a000d08 l     F .text	00000124 pll_calc_divs
1a000e2c l     F .text	00000180 pll_get_frac
1a000fac l     F .text	00000040 Chip_Clock_GetDivRate
1a000fec l     F .text	00000090 Chip_Clock_FindBaseClock
00000000 l    df *ABS*	00000000 sysinit_18xx_43xx.c
1a0015cc l     F .text	00000020 Chip_Clock_DisableMainPLL
1a0015ec l     F .text	00000048 Chip_Clock_SetupMainPLL
1a001634 l     F .text	00000024 Chip_Clock_MainPLLLocked
1a001b68 l     O .text	00000048 InitClkStates
00000000 l    df *ABS*	00000000 malloc.c
00000000 l    df *ABS*	00000000 mallocr.c
1a0017c0 l     F .text	00000048 sbrk_aligned
00000000 l    df *ABS*	00000000 mlock.c
00000000 l    df *ABS*	00000000 memset.c
00000000 l    df *ABS*	00000000 sbrkr.c
00000000 l    df *ABS*	00000000 lock.c
00000000 l    df *ABS*	00000000 freer.c
00000000 l    df *ABS*	00000000 sbrk.c
100001f4 l     O .bss	00000004 heap_end.0
00000000 l    df *ABS*	00000000 findfp.c
00000000 l    df *ABS*	00000000 reent.c
1a001280 g     F .text	00000040 Chip_Clock_GetDividerSource
1a000b94 g     F .text	00000138 BoardSetup
1a000240  w    F .text	00000008 TIMER2_IRQHandler
1a000228  w    F .text	00000008 DebugMon_Handler
1a000240  w    F .text	00000008 RIT_IRQHandler
1a080000 g       *ABS*	00000000 __top_MFlashA512
1a000114 g       .text	00000000 __section_table_start
1a000240  w    F .text	00000008 FLASH_EEPROM_IRQHandler
1a000240  w    F .text	00000008 I2C0_IRQHandler
100001ec g     O .bss	00000001 __lock___atexit_recursive_mutex
1a000200  w    F .text	00000008 HardFault_Handler
2000c000 g       *ABS*	00000000 __base_RamAHB_ETB16
1a000000 g       *ABS*	00000000 __vectors_start__
1a001914 g     F .text	0000000c __malloc_unlock
1a0003b0 g     F .text	00000050 DigitalOutputCreate
1a000238  w    F .text	00000008 SysTick_Handler
2000c000 g       *ABS*	00000000 __top_RAM4
100001d4 g     O .bss	00000001 __lock___arc4random_mutex
1a000240  w    F .text	00000008 SDIO_IRQHandler
20000000 g       *ABS*	00000000 __base_RamAHB32
1a000240  w    F .text	00000008 ATIMER_IRQHandler
10080000 g       *ABS*	00000000 __base_RAM2
1a000230  w    F .text	00000008 PendSV_Handler
1a0001f8  w    F .text	00000008 NMI_Handler
1a001bb0 g       .text	00000000 __exidx_end
1a000150 g       .text	00000000 __data_section_table_end
1a000240  w    F .text	00000008 I2C1_IRQHandler
1a000240  w    F .text	00000008 UART1_IRQHandler
1a000240  w    F .text	00000008 GPIO5_IRQHandler
1a0019f0 g     F .text	00000002 __retarget_lock_close
1a000240  w    F .text	00000008 CAN1_IRQHandler
100001cc g     O .bss	00000004 __stdio_exit_handler
53ff6d16 g       *ABS*	00000000 __valid_user_code_checksum
100001d0 g     O .bss	00000004 errno
10000068 g     O .bss	00000004 led_rgb_azul
1a001bb0 g       .text	00000000 _etext
1a000240  w    F .text	00000008 USB1_IRQHandler
1a000240  w    F .text	00000008 I2S0_IRQHandler
1a000240  w    F .text	00000008 TIMER3_IRQHandler
1a001438 g     F .text	00000024 Chip_Clock_GetBaseClocktHz
1a000240  w    F .text	00000008 UART0_IRQHandler
1a0001be g     F .text	0000003a bss_init
1a000240  w    F .text	00000008 SGPIO_IRQHandler
100001f8 g       .noinit	00000000 _noinit
10000080 g     O .bss	00000004 SystemCoreClock
2000c000 g       *ABS*	00000000 __base_RAM5
1a000428 g     F .text	00000028 DigitalOutputDeactivate
1a000240  w    F .text	00000008 ADC0_IRQHandler
1a0017a0 g     F .text	00000010 malloc
1a000218  w    F .text	00000008 UsageFault_Handler
10008000 g       *ABS*	00000000 __top_RAM
1a001544 g     F .text	00000088 Chip_Clock_GetRate
1a000400 g     F .text	00000028 DigitalOutputActivate
1a000240  w    F .text	00000008 GPIO6_IRQHandler
20008000 g       *ABS*	00000000 __top_RamAHB32
1a0019c4 g     F .text	00000024 _sbrk_r
1a001aec g     O .text	00000004 ExtRateIn
1a000240  w    F .text	00000008 IntDefaultHandler
1008a000 g       *ABS*	00000000 __top_RAM2
1a000240  w    F .text	00000008 GPIO1_IRQHandler
1a000240  w    F .text	00000008 SSP0_IRQHandler
1a001bb0 g       .text	00000000 __exidx_start
100001e0 g     O .bss	00000001 __lock___env_recursive_mutex
1a000240  w    F .text	00000008 ADC1_IRQHandler
1a001acc g     F .text	0000001c _sbrk
10000070 g     O .bss	00000004 tecla_2
1a0004d8 g     F .text	00000050 DigitalInputGetState
1a000248 g     F .init	00000000 _init
1a000114 g       .text	00000000 __data_section_table
10000000 g       *ABS*	00000000 __base_RamLoc32
1a000240  w    F .text	00000008 RTC_IRQHandler
100001f8 g       .bss	00000000 _ebss
1a000240  w    F .text	00000008 TIMER0_IRQHandler
20010000 g       *ABS*	00000000 __top_RamAHB_ETB16
1a000240  w    F .text	00000008 SPI_IRQHandler
1a000240  w    F .text	00000008 LCD_IRQHandler
1a00107c g     F .text	00000070 Chip_Clock_EnableCrystal
20000000 g       *ABS*	00000000 __base_RAM3
100001e4 g     O .bss	00000001 __lock___malloc_recursive_mutex
10000094 g     O .bss	00000138 __sf
20010000 g       *ABS*	00000000 __top_RAM5
10008000 g       *ABS*	00000000 __top_RamLoc32
1a000240  w    F .text	00000008 VADC_IRQHandler
1a000178 g     F .text	00000046 data_init
1a000240  w    F .text	00000008 TIMER1_IRQHandler
100001f8 g       .bss	00000000 end
1a001a0c g     F .text	00000002 __retarget_lock_release_recursive
1a000240  w    F .text	00000008 UART2_IRQHandler
1a0011c4 g     F .text	000000bc Chip_Clock_GetMainPLLHz
1a001a04 g     F .text	00000004 __retarget_lock_try_acquire_recursive
1a000000 g       *ABS*	00000000 __base_Flash
1a000240  w    F .text	00000008 GPIO2_IRQHandler
1a001a10 g     F .text	000000bc _free_r
1a0014f8 g     F .text	0000004c Chip_Clock_GetBaseClock
1b080000 g       *ABS*	00000000 __top_Flash2
10000054 g       .bss	00000000 _bss
1000006c g     O .bss	00000004 tecla_1
1a001a00 g     F .text	00000004 __retarget_lock_try_acquire
1a000240  w    F .text	00000008 I2S1_IRQHandler
1a001af0 g     O .text	00000004 OscRateIn
1a080000 g       *ABS*	00000000 __top_Flash
100001f8 g       .noinit	00000000 _end_noinit
10008000 g       *ABS*	00000000 _vStackTop
1a000240  w    F .text	00000008 SSP1_IRQHandler
10000058 g     O .bss	00000004 led_verde
1a000178 g       .text	00000000 __bss_section_table_end
1a000000 g       *ABS*	00000000 __base_MFlashA512
1b000000 g       *ABS*	00000000 __base_Flash2
1a0019f4 g     F .text	00000002 __retarget_lock_close_recursive
1a00055a g     F .text	00000034 DigitalInputHasActivated
1a000240  w    F .text	00000008 USB0_IRQHandler
1a000450 g     F .text	00000028 DigitalOutputToggle
20008000 g       *ABS*	00000000 __base_RamAHB16
1a000240  w    F .text	00000008 GPIO3_IRQHandler
1a001908 g     F .text	0000000c __malloc_lock
1a000240  w    F .text	00000008 SCT_IRQHandler
1a0012c0 g     F .text	00000038 Chip_Clock_GetDividerDivisor
1a0019fc g     F .text	00000002 __retarget_lock_acquire_recursive
1a001920 g     F .text	000000a2 memset
1a000208  w    F .text	00000008 MemManage_Handler
1a000892 g     F .text	00000028 main
1a000478 g     F .text	00000060 DigitalInputCreate
10000078 g     O .bss	00000004 tecla_4
1a0019ec g     F .text	00000002 __retarget_lock_init_recursive
1a000240  w    F .text	00000008 WDT_IRQHandler
2000c000 g       *ABS*	00000000 __top_RamAHB16
1008a000 g       *ABS*	00000000 __top_RamLoc40
1a000220  w    F .text	00000008 SVC_Handler
1a001808 g     F .text	00000100 _malloc_r
20008000 g       *ABS*	00000000 __base_RAM4
10000054 g     O .bss	00000004 led_rojo
1a000240  w    F .text	00000008 GPIO7_IRQHandler
1a0012f8 g     F .text	00000140 Chip_Clock_GetClockInputHz
1a0010ec g     F .text	000000d8 Chip_Clock_CalcMainPLLValue
1a0019e8 g     F .text	00000002 __retarget_lock_init
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
10000074 g     O .bss	00000004 tecla_3
1b000000 g       *ABS*	00000000 __base_MFlashB512
1a000240  w    F .text	00000008 DAC_IRQHandler
10000054 g       .data	00000000 _edata
1000005c g     O .bss	00000004 led_amarillo
1a000240  w    F .text	00000008 M0SUB_IRQHandler
100001e8 g     O .bss	00000001 __lock___at_quick_exit_mutex
1a001658 g     F .text	00000148 Chip_SetupCoreClock
1a000240  w    F .text	00000008 GPIO0_IRQHandler
10000000 g       *ABS*	00000000 __base_RAM
1a000000 g     O .text	00000114 g_pfnVectors
1a0008bc g     F .text	000000e0 ResetISR
1a000ccc g     F .text	00000018 SystemCoreClockUpdate
10000008 g     O .data	0000004c _impure_data
1a000240  w    F .text	00000008 DMA_IRQHandler
1a000240  w    F .text	00000008 EVRT_IRQHandler
1b080000 g       *ABS*	00000000 __top_MFlashB512
1a000528 g     F .text	00000032 DigitalInputHasChanged
1a0019f8 g     F .text	00000002 __retarget_lock_acquire
1a001a08 g     F .text	00000002 __retarget_lock_release
20008000 g       *ABS*	00000000 __top_RAM3
10000064 g     O .bss	00000004 led_rgb_verde
1a000210  w    F .text	00000008 BusFault_Handler
100001d8 g     O .bss	00000001 __lock___dd_hash_mutex
100001dc g     O .bss	00000001 __lock___tz_mutex
1a000240  w    F .text	00000008 UART3_IRQHandler
1000008c g     O .bss	00000004 __malloc_sbrk_start
1a000240  w    F .text	00000008 MCPWM_IRQHandler
10000090 g     O .bss	00000004 __malloc_free_list
1a000240  w    F .text	00000008 GINT1_IRQHandler
1a00145c g     F .text	0000009c Chip_Clock_SetBaseClock
1a000240  w    F .text	00000008 GPIO4_IRQHandler
100001f0 g     O .bss	00000001 __lock___sfp_recursive_mutex
1a0017b0 g     F .text	00000010 free



Disassembly of section .text:

1a000000 <g_pfnVectors>:
1a000000:	00 80 00 10 bd 08 00 1a f9 01 00 1a 01 02 00 1a     ................
1a000010:	09 02 00 1a 11 02 00 1a 19 02 00 1a 16 6d ff 53     .............m.S
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
1a000114:	1a001bb0 	.word	0x1a001bb0
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000054 	.word	0x00000054
1a000120:	1a001bb0 	.word	0x1a001bb0
1a000124:	10080000 	.word	0x10080000
1a000128:	00000000 	.word	0x00000000
1a00012c:	1a001bb0 	.word	0x1a001bb0
1a000130:	20000000 	.word	0x20000000
1a000134:	00000000 	.word	0x00000000
1a000138:	1a001bb0 	.word	0x1a001bb0
1a00013c:	20008000 	.word	0x20008000
1a000140:	00000000 	.word	0x00000000
1a000144:	1a001bb0 	.word	0x1a001bb0
1a000148:	2000c000 	.word	0x2000c000
1a00014c:	00000000 	.word	0x00000000

1a000150 <__bss_section_table>:
1a000150:	10000054 	.word	0x10000054
1a000154:	000001a4 	.word	0x000001a4
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

1a000288 <Chip_GPIO_ReadPortBit>:
 * @param	pin		: GPIO pin to read
 * @return	true of the GPIO is high, false if low
 * @note	It is recommended to use the Chip_GPIO_GetPinState() function instead.
 */
STATIC INLINE bool Chip_GPIO_ReadPortBit(LPC_GPIO_T *pGPIO, uint32_t port, uint8_t pin)
{
1a000288:	b480      	push	{r7}
1a00028a:	b085      	sub	sp, #20
1a00028c:	af00      	add	r7, sp, #0
1a00028e:	60f8      	str	r0, [r7, #12]
1a000290:	60b9      	str	r1, [r7, #8]
1a000292:	4613      	mov	r3, r2
1a000294:	71fb      	strb	r3, [r7, #7]
	return (bool) pGPIO->B[port][pin];
1a000296:	79fb      	ldrb	r3, [r7, #7]
1a000298:	68f9      	ldr	r1, [r7, #12]
1a00029a:	68ba      	ldr	r2, [r7, #8]
1a00029c:	0152      	lsls	r2, r2, #5
1a00029e:	440a      	add	r2, r1
1a0002a0:	4413      	add	r3, r2
1a0002a2:	781b      	ldrb	r3, [r3, #0]
1a0002a4:	b2db      	uxtb	r3, r3
1a0002a6:	2b00      	cmp	r3, #0
1a0002a8:	bf14      	ite	ne
1a0002aa:	2301      	movne	r3, #1
1a0002ac:	2300      	moveq	r3, #0
1a0002ae:	b2db      	uxtb	r3, r3
}
1a0002b0:	4618      	mov	r0, r3
1a0002b2:	3714      	adds	r7, #20
1a0002b4:	46bd      	mov	sp, r7
1a0002b6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0002ba:	4770      	bx	lr

1a0002bc <Chip_GPIO_SetPinDIROutput>:
 * @param	port	: GPIO Port number where @a pin is located
 * @param	pin		: GPIO pin to set direction on as output
 * @return	Nothing
 */
STATIC INLINE void Chip_GPIO_SetPinDIROutput(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
1a0002bc:	b480      	push	{r7}
1a0002be:	b083      	sub	sp, #12
1a0002c0:	af00      	add	r7, sp, #0
1a0002c2:	6078      	str	r0, [r7, #4]
1a0002c4:	460b      	mov	r3, r1
1a0002c6:	70fb      	strb	r3, [r7, #3]
1a0002c8:	4613      	mov	r3, r2
1a0002ca:	70bb      	strb	r3, [r7, #2]
	pGPIO->DIR[port] |= 1UL << pin;
1a0002cc:	78fa      	ldrb	r2, [r7, #3]
1a0002ce:	687b      	ldr	r3, [r7, #4]
1a0002d0:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a0002d4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a0002d8:	78bb      	ldrb	r3, [r7, #2]
1a0002da:	2201      	movs	r2, #1
1a0002dc:	fa02 f303 	lsl.w	r3, r2, r3
1a0002e0:	78fa      	ldrb	r2, [r7, #3]
1a0002e2:	4319      	orrs	r1, r3
1a0002e4:	687b      	ldr	r3, [r7, #4]
1a0002e6:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a0002ea:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a0002ee:	bf00      	nop
1a0002f0:	370c      	adds	r7, #12
1a0002f2:	46bd      	mov	sp, r7
1a0002f4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0002f8:	4770      	bx	lr

1a0002fa <Chip_GPIO_SetPinDIRInput>:
 * @param	port	: GPIO Port number where @a pin is located
 * @param	pin		: GPIO pin to set direction on as input
 * @return	Nothing
 */
STATIC INLINE void Chip_GPIO_SetPinDIRInput(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
1a0002fa:	b480      	push	{r7}
1a0002fc:	b083      	sub	sp, #12
1a0002fe:	af00      	add	r7, sp, #0
1a000300:	6078      	str	r0, [r7, #4]
1a000302:	460b      	mov	r3, r1
1a000304:	70fb      	strb	r3, [r7, #3]
1a000306:	4613      	mov	r3, r2
1a000308:	70bb      	strb	r3, [r7, #2]
	pGPIO->DIR[port] &= ~(1UL << pin);
1a00030a:	78fa      	ldrb	r2, [r7, #3]
1a00030c:	687b      	ldr	r3, [r7, #4]
1a00030e:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a000312:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000316:	78bb      	ldrb	r3, [r7, #2]
1a000318:	2201      	movs	r2, #1
1a00031a:	fa02 f303 	lsl.w	r3, r2, r3
1a00031e:	43db      	mvns	r3, r3
1a000320:	78fa      	ldrb	r2, [r7, #3]
1a000322:	4019      	ands	r1, r3
1a000324:	687b      	ldr	r3, [r7, #4]
1a000326:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a00032a:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a00032e:	bf00      	nop
1a000330:	370c      	adds	r7, #12
1a000332:	46bd      	mov	sp, r7
1a000334:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000338:	4770      	bx	lr

1a00033a <Chip_GPIO_SetPinDIR>:
 * @param	pin		: GPIO pin to set direction for
 * @param	output	: true for output, false for input
 * @return	Nothing
 */
STATIC INLINE void Chip_GPIO_SetPinDIR(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin, bool output)
{
1a00033a:	b580      	push	{r7, lr}
1a00033c:	b082      	sub	sp, #8
1a00033e:	af00      	add	r7, sp, #0
1a000340:	6078      	str	r0, [r7, #4]
1a000342:	4608      	mov	r0, r1
1a000344:	4611      	mov	r1, r2
1a000346:	461a      	mov	r2, r3
1a000348:	4603      	mov	r3, r0
1a00034a:	70fb      	strb	r3, [r7, #3]
1a00034c:	460b      	mov	r3, r1
1a00034e:	70bb      	strb	r3, [r7, #2]
1a000350:	4613      	mov	r3, r2
1a000352:	707b      	strb	r3, [r7, #1]
	if (output) {
1a000354:	787b      	ldrb	r3, [r7, #1]
1a000356:	2b00      	cmp	r3, #0
1a000358:	d006      	beq.n	1a000368 <Chip_GPIO_SetPinDIR+0x2e>
		Chip_GPIO_SetPinDIROutput(pGPIO, port, pin);
1a00035a:	78ba      	ldrb	r2, [r7, #2]
1a00035c:	78fb      	ldrb	r3, [r7, #3]
1a00035e:	4619      	mov	r1, r3
1a000360:	6878      	ldr	r0, [r7, #4]
1a000362:	f7ff ffab 	bl	1a0002bc <Chip_GPIO_SetPinDIROutput>
	}
	else {
		Chip_GPIO_SetPinDIRInput(pGPIO, port, pin);
	}
}
1a000366:	e005      	b.n	1a000374 <Chip_GPIO_SetPinDIR+0x3a>
		Chip_GPIO_SetPinDIRInput(pGPIO, port, pin);
1a000368:	78ba      	ldrb	r2, [r7, #2]
1a00036a:	78fb      	ldrb	r3, [r7, #3]
1a00036c:	4619      	mov	r1, r3
1a00036e:	6878      	ldr	r0, [r7, #4]
1a000370:	f7ff ffc3 	bl	1a0002fa <Chip_GPIO_SetPinDIRInput>
}
1a000374:	bf00      	nop
1a000376:	3708      	adds	r7, #8
1a000378:	46bd      	mov	sp, r7
1a00037a:	bd80      	pop	{r7, pc}

1a00037c <Chip_GPIO_SetPinToggle>:
 * @return	None
 * @note	Any bit set as a '0' will not have it's state changed. This only
 * applies to ports configured as an output.
 */
STATIC INLINE void Chip_GPIO_SetPinToggle(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
1a00037c:	b480      	push	{r7}
1a00037e:	b083      	sub	sp, #12
1a000380:	af00      	add	r7, sp, #0
1a000382:	6078      	str	r0, [r7, #4]
1a000384:	460b      	mov	r3, r1
1a000386:	70fb      	strb	r3, [r7, #3]
1a000388:	4613      	mov	r3, r2
1a00038a:	70bb      	strb	r3, [r7, #2]
	pGPIO->NOT[port] = (1 << pin);
1a00038c:	78bb      	ldrb	r3, [r7, #2]
1a00038e:	2201      	movs	r2, #1
1a000390:	fa02 f303 	lsl.w	r3, r2, r3
1a000394:	78fa      	ldrb	r2, [r7, #3]
1a000396:	4619      	mov	r1, r3
1a000398:	687b      	ldr	r3, [r7, #4]
1a00039a:	f502 620c 	add.w	r2, r2, #2240	@ 0x8c0
1a00039e:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a0003a2:	bf00      	nop
1a0003a4:	370c      	adds	r7, #12
1a0003a6:	46bd      	mov	sp, r7
1a0003a8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0003ac:	4770      	bx	lr
	...

1a0003b0 <DigitalOutputCreate>:

/* === Private function definitions ============================================================ */

/* === Public function implementation ========================================================== */

digital_output_t DigitalOutputCreate(uint32_t puerto, uint8_t terminal) {
1a0003b0:	b580      	push	{r7, lr}
1a0003b2:	b084      	sub	sp, #16
1a0003b4:	af00      	add	r7, sp, #0
1a0003b6:	6078      	str	r0, [r7, #4]
1a0003b8:	460b      	mov	r3, r1
1a0003ba:	70fb      	strb	r3, [r7, #3]
    digital_output_t self;
    self = malloc(sizeof(struct digital_output_s));
1a0003bc:	2008      	movs	r0, #8
1a0003be:	f001 f9ef 	bl	1a0017a0 <malloc>
1a0003c2:	4603      	mov	r3, r0
1a0003c4:	60fb      	str	r3, [r7, #12]
    if (self != NULL) {
1a0003c6:	68fb      	ldr	r3, [r7, #12]
1a0003c8:	2b00      	cmp	r3, #0
1a0003ca:	d011      	beq.n	1a0003f0 <DigitalOutputCreate+0x40>
        self->puerto = puerto;
1a0003cc:	68fb      	ldr	r3, [r7, #12]
1a0003ce:	687a      	ldr	r2, [r7, #4]
1a0003d0:	601a      	str	r2, [r3, #0]
        self->terminal = terminal;
1a0003d2:	68fb      	ldr	r3, [r7, #12]
1a0003d4:	78fa      	ldrb	r2, [r7, #3]
1a0003d6:	711a      	strb	r2, [r3, #4]
        Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, self->puerto, self->terminal, true);
1a0003d8:	68fb      	ldr	r3, [r7, #12]
1a0003da:	681b      	ldr	r3, [r3, #0]
1a0003dc:	b2d9      	uxtb	r1, r3
1a0003de:	68fb      	ldr	r3, [r7, #12]
1a0003e0:	791a      	ldrb	r2, [r3, #4]
1a0003e2:	2301      	movs	r3, #1
1a0003e4:	4805      	ldr	r0, [pc, #20]	@ (1a0003fc <DigitalOutputCreate+0x4c>)
1a0003e6:	f7ff ffa8 	bl	1a00033a <Chip_GPIO_SetPinDIR>
        DigitalOutputDeactivate(self);
1a0003ea:	68f8      	ldr	r0, [r7, #12]
1a0003ec:	f000 f81c 	bl	1a000428 <DigitalOutputDeactivate>
    }
    return self;
1a0003f0:	68fb      	ldr	r3, [r7, #12]
}
1a0003f2:	4618      	mov	r0, r3
1a0003f4:	3710      	adds	r7, #16
1a0003f6:	46bd      	mov	sp, r7
1a0003f8:	bd80      	pop	{r7, pc}
1a0003fa:	bf00      	nop
1a0003fc:	400f4000 	.word	0x400f4000

1a000400 <DigitalOutputActivate>:

void DigitalOutputActivate(digital_output_t self) {
1a000400:	b580      	push	{r7, lr}
1a000402:	b082      	sub	sp, #8
1a000404:	af00      	add	r7, sp, #0
1a000406:	6078      	str	r0, [r7, #4]
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, self->puerto, self->terminal, true);
1a000408:	687b      	ldr	r3, [r7, #4]
1a00040a:	681b      	ldr	r3, [r3, #0]
1a00040c:	b2d9      	uxtb	r1, r3
1a00040e:	687b      	ldr	r3, [r7, #4]
1a000410:	791a      	ldrb	r2, [r3, #4]
1a000412:	2301      	movs	r3, #1
1a000414:	4803      	ldr	r0, [pc, #12]	@ (1a000424 <DigitalOutputActivate+0x24>)
1a000416:	f7ff ff1b 	bl	1a000250 <Chip_GPIO_SetPinState>
    // Activar la salida digital (setear el pin)
}
1a00041a:	bf00      	nop
1a00041c:	3708      	adds	r7, #8
1a00041e:	46bd      	mov	sp, r7
1a000420:	bd80      	pop	{r7, pc}
1a000422:	bf00      	nop
1a000424:	400f4000 	.word	0x400f4000

1a000428 <DigitalOutputDeactivate>:

void DigitalOutputDeactivate(digital_output_t self) {
1a000428:	b580      	push	{r7, lr}
1a00042a:	b082      	sub	sp, #8
1a00042c:	af00      	add	r7, sp, #0
1a00042e:	6078      	str	r0, [r7, #4]
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, self->puerto, self->terminal, false);
1a000430:	687b      	ldr	r3, [r7, #4]
1a000432:	681b      	ldr	r3, [r3, #0]
1a000434:	b2d9      	uxtb	r1, r3
1a000436:	687b      	ldr	r3, [r7, #4]
1a000438:	791a      	ldrb	r2, [r3, #4]
1a00043a:	2300      	movs	r3, #0
1a00043c:	4803      	ldr	r0, [pc, #12]	@ (1a00044c <DigitalOutputDeactivate+0x24>)
1a00043e:	f7ff ff07 	bl	1a000250 <Chip_GPIO_SetPinState>
    // Desactivar la salida digital (resetear el pin)
}
1a000442:	bf00      	nop
1a000444:	3708      	adds	r7, #8
1a000446:	46bd      	mov	sp, r7
1a000448:	bd80      	pop	{r7, pc}
1a00044a:	bf00      	nop
1a00044c:	400f4000 	.word	0x400f4000

1a000450 <DigitalOutputToggle>:

void DigitalOutputToggle(digital_output_t self) {
1a000450:	b580      	push	{r7, lr}
1a000452:	b082      	sub	sp, #8
1a000454:	af00      	add	r7, sp, #0
1a000456:	6078      	str	r0, [r7, #4]
    Chip_GPIO_SetPinToggle(LPC_GPIO_PORT, self->puerto, self->terminal);
1a000458:	687b      	ldr	r3, [r7, #4]
1a00045a:	681b      	ldr	r3, [r3, #0]
1a00045c:	b2d9      	uxtb	r1, r3
1a00045e:	687b      	ldr	r3, [r7, #4]
1a000460:	791b      	ldrb	r3, [r3, #4]
1a000462:	461a      	mov	r2, r3
1a000464:	4803      	ldr	r0, [pc, #12]	@ (1a000474 <DigitalOutputToggle+0x24>)
1a000466:	f7ff ff89 	bl	1a00037c <Chip_GPIO_SetPinToggle>
    // Alternar el estado de la salida digital (toggle del pin)
}
1a00046a:	bf00      	nop
1a00046c:	3708      	adds	r7, #8
1a00046e:	46bd      	mov	sp, r7
1a000470:	bd80      	pop	{r7, pc}
1a000472:	bf00      	nop
1a000474:	400f4000 	.word	0x400f4000

1a000478 <DigitalInputCreate>:

digital_input_t DigitalInputCreate(uint32_t puerto, uint8_t terminal, bool estado_invertido) {
1a000478:	b580      	push	{r7, lr}
1a00047a:	b084      	sub	sp, #16
1a00047c:	af00      	add	r7, sp, #0
1a00047e:	6078      	str	r0, [r7, #4]
1a000480:	460b      	mov	r3, r1
1a000482:	70fb      	strb	r3, [r7, #3]
1a000484:	4613      	mov	r3, r2
1a000486:	70bb      	strb	r3, [r7, #2]
    digital_input_t self;
    self = malloc(sizeof(struct digital_input_s));
1a000488:	2008      	movs	r0, #8
1a00048a:	f001 f989 	bl	1a0017a0 <malloc>
1a00048e:	4603      	mov	r3, r0
1a000490:	60fb      	str	r3, [r7, #12]
    if (self != NULL) {
1a000492:	68fb      	ldr	r3, [r7, #12]
1a000494:	2b00      	cmp	r3, #0
1a000496:	d018      	beq.n	1a0004ca <DigitalInputCreate+0x52>
        self->puerto = puerto;
1a000498:	68fb      	ldr	r3, [r7, #12]
1a00049a:	687a      	ldr	r2, [r7, #4]
1a00049c:	601a      	str	r2, [r3, #0]
        self->terminal = terminal;
1a00049e:	68fb      	ldr	r3, [r7, #12]
1a0004a0:	78fa      	ldrb	r2, [r7, #3]
1a0004a2:	711a      	strb	r2, [r3, #4]
        self->estado_invertido = estado_invertido;
1a0004a4:	68fb      	ldr	r3, [r7, #12]
1a0004a6:	78ba      	ldrb	r2, [r7, #2]
1a0004a8:	719a      	strb	r2, [r3, #6]
        self->ultimo_estado = DigitalInputGetState(self);
1a0004aa:	68f8      	ldr	r0, [r7, #12]
1a0004ac:	f000 f814 	bl	1a0004d8 <DigitalInputGetState>
1a0004b0:	4603      	mov	r3, r0
1a0004b2:	461a      	mov	r2, r3
1a0004b4:	68fb      	ldr	r3, [r7, #12]
1a0004b6:	715a      	strb	r2, [r3, #5]
        Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, self->puerto, self->terminal, false);
1a0004b8:	68fb      	ldr	r3, [r7, #12]
1a0004ba:	681b      	ldr	r3, [r3, #0]
1a0004bc:	b2d9      	uxtb	r1, r3
1a0004be:	68fb      	ldr	r3, [r7, #12]
1a0004c0:	791a      	ldrb	r2, [r3, #4]
1a0004c2:	2300      	movs	r3, #0
1a0004c4:	4803      	ldr	r0, [pc, #12]	@ (1a0004d4 <DigitalInputCreate+0x5c>)
1a0004c6:	f7ff ff38 	bl	1a00033a <Chip_GPIO_SetPinDIR>
    }
    return self;
1a0004ca:	68fb      	ldr	r3, [r7, #12]
}
1a0004cc:	4618      	mov	r0, r3
1a0004ce:	3710      	adds	r7, #16
1a0004d0:	46bd      	mov	sp, r7
1a0004d2:	bd80      	pop	{r7, pc}
1a0004d4:	400f4000 	.word	0x400f4000

1a0004d8 <DigitalInputGetState>:

bool DigitalInputGetState(digital_input_t self){
1a0004d8:	b580      	push	{r7, lr}
1a0004da:	b084      	sub	sp, #16
1a0004dc:	af00      	add	r7, sp, #0
1a0004de:	6078      	str	r0, [r7, #4]
    bool estado = (Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, self->puerto, self->terminal) != 0);
1a0004e0:	687b      	ldr	r3, [r7, #4]
1a0004e2:	6819      	ldr	r1, [r3, #0]
1a0004e4:	687b      	ldr	r3, [r7, #4]
1a0004e6:	791b      	ldrb	r3, [r3, #4]
1a0004e8:	461a      	mov	r2, r3
1a0004ea:	480e      	ldr	r0, [pc, #56]	@ (1a000524 <DigitalInputGetState+0x4c>)
1a0004ec:	f7ff fecc 	bl	1a000288 <Chip_GPIO_ReadPortBit>
1a0004f0:	4603      	mov	r3, r0
1a0004f2:	73fb      	strb	r3, [r7, #15]
    if (self->estado_invertido) {
1a0004f4:	687b      	ldr	r3, [r7, #4]
1a0004f6:	799b      	ldrb	r3, [r3, #6]
1a0004f8:	2b00      	cmp	r3, #0
1a0004fa:	d00d      	beq.n	1a000518 <DigitalInputGetState+0x40>
        estado = !estado;
1a0004fc:	7bfb      	ldrb	r3, [r7, #15]
1a0004fe:	2b00      	cmp	r3, #0
1a000500:	bf14      	ite	ne
1a000502:	2301      	movne	r3, #1
1a000504:	2300      	moveq	r3, #0
1a000506:	b2db      	uxtb	r3, r3
1a000508:	f083 0301 	eor.w	r3, r3, #1
1a00050c:	b2db      	uxtb	r3, r3
1a00050e:	73fb      	strb	r3, [r7, #15]
1a000510:	7bfb      	ldrb	r3, [r7, #15]
1a000512:	f003 0301 	and.w	r3, r3, #1
1a000516:	73fb      	strb	r3, [r7, #15]
    }
    return estado;
1a000518:	7bfb      	ldrb	r3, [r7, #15]
    // Obtener el estado actual de la entrada digital (leer el pin)

}
1a00051a:	4618      	mov	r0, r3
1a00051c:	3710      	adds	r7, #16
1a00051e:	46bd      	mov	sp, r7
1a000520:	bd80      	pop	{r7, pc}
1a000522:	bf00      	nop
1a000524:	400f4000 	.word	0x400f4000

1a000528 <DigitalInputHasChanged>:

bool DigitalInputHasChanged(digital_input_t self){
1a000528:	b580      	push	{r7, lr}
1a00052a:	b084      	sub	sp, #16
1a00052c:	af00      	add	r7, sp, #0
1a00052e:	6078      	str	r0, [r7, #4]
    bool estado_actual = DigitalInputGetState(self);
1a000530:	6878      	ldr	r0, [r7, #4]
1a000532:	f7ff ffd1 	bl	1a0004d8 <DigitalInputGetState>
1a000536:	4603      	mov	r3, r0
1a000538:	73fb      	strb	r3, [r7, #15]
    bool ha_cambiado = (estado_actual != self->ultimo_estado);
1a00053a:	687b      	ldr	r3, [r7, #4]
1a00053c:	795b      	ldrb	r3, [r3, #5]
1a00053e:	7bfa      	ldrb	r2, [r7, #15]
1a000540:	429a      	cmp	r2, r3
1a000542:	bf14      	ite	ne
1a000544:	2301      	movne	r3, #1
1a000546:	2300      	moveq	r3, #0
1a000548:	73bb      	strb	r3, [r7, #14]
    self->ultimo_estado = estado_actual;
1a00054a:	687b      	ldr	r3, [r7, #4]
1a00054c:	7bfa      	ldrb	r2, [r7, #15]
1a00054e:	715a      	strb	r2, [r3, #5]
    return ha_cambiado;
1a000550:	7bbb      	ldrb	r3, [r7, #14]
    // Determinar si el estado de la entrada digital ha cambiado desde la última lectura

}
1a000552:	4618      	mov	r0, r3
1a000554:	3710      	adds	r7, #16
1a000556:	46bd      	mov	sp, r7
1a000558:	bd80      	pop	{r7, pc}

1a00055a <DigitalInputHasActivated>:

bool DigitalInputHasActivated(digital_input_t self){
1a00055a:	b580      	push	{r7, lr}
1a00055c:	b082      	sub	sp, #8
1a00055e:	af00      	add	r7, sp, #0
1a000560:	6078      	str	r0, [r7, #4]
    return DigitalInputHasChanged(self) && DigitalInputGetState(self);
1a000562:	6878      	ldr	r0, [r7, #4]
1a000564:	f7ff ffe0 	bl	1a000528 <DigitalInputHasChanged>
1a000568:	4603      	mov	r3, r0
1a00056a:	2b00      	cmp	r3, #0
1a00056c:	d007      	beq.n	1a00057e <DigitalInputHasActivated+0x24>
1a00056e:	6878      	ldr	r0, [r7, #4]
1a000570:	f7ff ffb2 	bl	1a0004d8 <DigitalInputGetState>
1a000574:	4603      	mov	r3, r0
1a000576:	2b00      	cmp	r3, #0
1a000578:	d001      	beq.n	1a00057e <DigitalInputHasActivated+0x24>
1a00057a:	2301      	movs	r3, #1
1a00057c:	e000      	b.n	1a000580 <DigitalInputHasActivated+0x26>
1a00057e:	2300      	movs	r3, #0
1a000580:	f003 0301 	and.w	r3, r3, #1
1a000584:	b2db      	uxtb	r3, r3
    // Determinar si la entrada digital ha sido activada (flanco ascendente)

}
1a000586:	4618      	mov	r0, r3
1a000588:	3708      	adds	r7, #8
1a00058a:	46bd      	mov	sp, r7
1a00058c:	bd80      	pop	{r7, pc}
	...

1a000590 <Chip_SCU_PinMuxSet>:
 * @return	Nothing
 * @note	Do not use for clock pins (SFSCLK0 .. SFSCLK4). Use
 * Chip_SCU_ClockPinMux() function for SFSCLKx clock pins.
 */
STATIC INLINE void Chip_SCU_PinMuxSet(uint8_t port, uint8_t pin, uint16_t modefunc)
{
1a000590:	b480      	push	{r7}
1a000592:	b083      	sub	sp, #12
1a000594:	af00      	add	r7, sp, #0
1a000596:	4603      	mov	r3, r0
1a000598:	71fb      	strb	r3, [r7, #7]
1a00059a:	460b      	mov	r3, r1
1a00059c:	71bb      	strb	r3, [r7, #6]
1a00059e:	4613      	mov	r3, r2
1a0005a0:	80bb      	strh	r3, [r7, #4]
	LPC_SCU->SFSP[port][pin] = modefunc;
1a0005a2:	4807      	ldr	r0, [pc, #28]	@ (1a0005c0 <Chip_SCU_PinMuxSet+0x30>)
1a0005a4:	79f9      	ldrb	r1, [r7, #7]
1a0005a6:	79bb      	ldrb	r3, [r7, #6]
1a0005a8:	88ba      	ldrh	r2, [r7, #4]
1a0005aa:	0149      	lsls	r1, r1, #5
1a0005ac:	440b      	add	r3, r1
1a0005ae:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
}
1a0005b2:	bf00      	nop
1a0005b4:	370c      	adds	r7, #12
1a0005b6:	46bd      	mov	sp, r7
1a0005b8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0005bc:	4770      	bx	lr
1a0005be:	bf00      	nop
1a0005c0:	40086000 	.word	0x40086000

1a0005c4 <ConfigureLeds>:

/* === Private variable definitions ============================================================ */

/* === Private function implementation ========================================================= */

static void ConfigureLeds(void) {
1a0005c4:	b580      	push	{r7, lr}
1a0005c6:	af00      	add	r7, sp, #0
    Chip_SCU_PinMuxSet(LED_R_PORT, LED_R_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_R_FUNC);
1a0005c8:	2254      	movs	r2, #84	@ 0x54
1a0005ca:	2100      	movs	r1, #0
1a0005cc:	2002      	movs	r0, #2
1a0005ce:	f7ff ffdf 	bl	1a000590 <Chip_SCU_PinMuxSet>
    led_rgb_rojo = DigitalOutputCreate(LED_R_GPIO, LED_R_BIT);
1a0005d2:	2100      	movs	r1, #0
1a0005d4:	2005      	movs	r0, #5
1a0005d6:	f7ff feeb 	bl	1a0003b0 <DigitalOutputCreate>
1a0005da:	4603      	mov	r3, r0
1a0005dc:	4a1f      	ldr	r2, [pc, #124]	@ (1a00065c <ConfigureLeds+0x98>)
1a0005de:	6013      	str	r3, [r2, #0]
    // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_R_GPIO, LED_R_BIT, false);
    // Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_R_GPIO, LED_R_BIT, true);

    Chip_SCU_PinMuxSet(LED_G_PORT, LED_G_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_G_FUNC);
1a0005e0:	2254      	movs	r2, #84	@ 0x54
1a0005e2:	2101      	movs	r1, #1
1a0005e4:	2002      	movs	r0, #2
1a0005e6:	f7ff ffd3 	bl	1a000590 <Chip_SCU_PinMuxSet>
    led_rgb_verde = DigitalOutputCreate(LED_G_GPIO, LED_G_BIT);
1a0005ea:	2101      	movs	r1, #1
1a0005ec:	2005      	movs	r0, #5
1a0005ee:	f7ff fedf 	bl	1a0003b0 <DigitalOutputCreate>
1a0005f2:	4603      	mov	r3, r0
1a0005f4:	4a1a      	ldr	r2, [pc, #104]	@ (1a000660 <ConfigureLeds+0x9c>)
1a0005f6:	6013      	str	r3, [r2, #0]
    // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_G_GPIO, LED_G_BIT, false);
    // Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_G_GPIO, LED_G_BIT, true);

    Chip_SCU_PinMuxSet(LED_B_PORT, LED_B_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_B_FUNC);
1a0005f8:	2254      	movs	r2, #84	@ 0x54
1a0005fa:	2102      	movs	r1, #2
1a0005fc:	2002      	movs	r0, #2
1a0005fe:	f7ff ffc7 	bl	1a000590 <Chip_SCU_PinMuxSet>
    led_rgb_azul = DigitalOutputCreate(LED_B_GPIO, LED_B_BIT);
1a000602:	2102      	movs	r1, #2
1a000604:	2005      	movs	r0, #5
1a000606:	f7ff fed3 	bl	1a0003b0 <DigitalOutputCreate>
1a00060a:	4603      	mov	r3, r0
1a00060c:	4a15      	ldr	r2, [pc, #84]	@ (1a000664 <ConfigureLeds+0xa0>)
1a00060e:	6013      	str	r3, [r2, #0]
    // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_B_GPIO, LED_B_BIT, false);
    // Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_B_GPIO, LED_B_BIT, true);

    /******************/
    Chip_SCU_PinMuxSet(LED_1_PORT, LED_1_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_1_FUNC);
1a000610:	2250      	movs	r2, #80	@ 0x50
1a000612:	210a      	movs	r1, #10
1a000614:	2002      	movs	r0, #2
1a000616:	f7ff ffbb 	bl	1a000590 <Chip_SCU_PinMuxSet>
    led_amarillo = DigitalOutputCreate(LED_1_GPIO, LED_1_BIT);
1a00061a:	210e      	movs	r1, #14
1a00061c:	2000      	movs	r0, #0
1a00061e:	f7ff fec7 	bl	1a0003b0 <DigitalOutputCreate>
1a000622:	4603      	mov	r3, r0
1a000624:	4a10      	ldr	r2, [pc, #64]	@ (1a000668 <ConfigureLeds+0xa4>)
1a000626:	6013      	str	r3, [r2, #0]
    // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_1_GPIO, LED_1_BIT, false);
    // Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_1_GPIO, LED_1_BIT, true);

    Chip_SCU_PinMuxSet(LED_2_PORT, LED_2_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_2_FUNC);
1a000628:	2250      	movs	r2, #80	@ 0x50
1a00062a:	210b      	movs	r1, #11
1a00062c:	2002      	movs	r0, #2
1a00062e:	f7ff ffaf 	bl	1a000590 <Chip_SCU_PinMuxSet>
    led_rojo = DigitalOutputCreate(LED_2_GPIO, LED_2_BIT);
1a000632:	210b      	movs	r1, #11
1a000634:	2001      	movs	r0, #1
1a000636:	f7ff febb 	bl	1a0003b0 <DigitalOutputCreate>
1a00063a:	4603      	mov	r3, r0
1a00063c:	4a0b      	ldr	r2, [pc, #44]	@ (1a00066c <ConfigureLeds+0xa8>)
1a00063e:	6013      	str	r3, [r2, #0]
    // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_2_GPIO, LED_2_BIT, false);
    // Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_2_GPIO, LED_2_BIT, true);

    Chip_SCU_PinMuxSet(LED_3_PORT, LED_3_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_3_FUNC);
1a000640:	2250      	movs	r2, #80	@ 0x50
1a000642:	210c      	movs	r1, #12
1a000644:	2002      	movs	r0, #2
1a000646:	f7ff ffa3 	bl	1a000590 <Chip_SCU_PinMuxSet>
    led_verde = DigitalOutputCreate(LED_3_GPIO, LED_3_BIT);
1a00064a:	210c      	movs	r1, #12
1a00064c:	2001      	movs	r0, #1
1a00064e:	f7ff feaf 	bl	1a0003b0 <DigitalOutputCreate>
1a000652:	4603      	mov	r3, r0
1a000654:	4a06      	ldr	r2, [pc, #24]	@ (1a000670 <ConfigureLeds+0xac>)
1a000656:	6013      	str	r3, [r2, #0]
    // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_3_GPIO, LED_3_BIT, false);
    // Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_3_GPIO, LED_3_BIT, true);
}
1a000658:	bf00      	nop
1a00065a:	bd80      	pop	{r7, pc}
1a00065c:	10000060 	.word	0x10000060
1a000660:	10000064 	.word	0x10000064
1a000664:	10000068 	.word	0x10000068
1a000668:	1000005c 	.word	0x1000005c
1a00066c:	10000054 	.word	0x10000054
1a000670:	10000058 	.word	0x10000058

1a000674 <ConfigureKeys>:

static void ConfigureKeys(void) {
1a000674:	b580      	push	{r7, lr}
1a000676:	af00      	add	r7, sp, #0
    Chip_SCU_PinMuxSet(TEC_1_PORT, TEC_1_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_1_FUNC);
1a000678:	2240      	movs	r2, #64	@ 0x40
1a00067a:	2100      	movs	r1, #0
1a00067c:	2001      	movs	r0, #1
1a00067e:	f7ff ff87 	bl	1a000590 <Chip_SCU_PinMuxSet>
    tecla_1 = DigitalInputCreate(TEC_1_GPIO, TEC_1_BIT, true);
1a000682:	2201      	movs	r2, #1
1a000684:	2104      	movs	r1, #4
1a000686:	2000      	movs	r0, #0
1a000688:	f7ff fef6 	bl	1a000478 <DigitalInputCreate>
1a00068c:	4603      	mov	r3, r0
1a00068e:	4a15      	ldr	r2, [pc, #84]	@ (1a0006e4 <ConfigureKeys+0x70>)
1a000690:	6013      	str	r3, [r2, #0]
    // Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_1_GPIO, TEC_1_BIT, false);

    Chip_SCU_PinMuxSet(TEC_2_PORT, TEC_2_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_2_FUNC);
1a000692:	2240      	movs	r2, #64	@ 0x40
1a000694:	2101      	movs	r1, #1
1a000696:	2001      	movs	r0, #1
1a000698:	f7ff ff7a 	bl	1a000590 <Chip_SCU_PinMuxSet>
    tecla_2 = DigitalInputCreate(TEC_2_GPIO, TEC_2_BIT, true);
1a00069c:	2201      	movs	r2, #1
1a00069e:	2108      	movs	r1, #8
1a0006a0:	2000      	movs	r0, #0
1a0006a2:	f7ff fee9 	bl	1a000478 <DigitalInputCreate>
1a0006a6:	4603      	mov	r3, r0
1a0006a8:	4a0f      	ldr	r2, [pc, #60]	@ (1a0006e8 <ConfigureKeys+0x74>)
1a0006aa:	6013      	str	r3, [r2, #0]
    // Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_2_GPIO, TEC_2_BIT, false);

    Chip_SCU_PinMuxSet(TEC_3_PORT, TEC_3_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_3_FUNC);
1a0006ac:	2240      	movs	r2, #64	@ 0x40
1a0006ae:	2102      	movs	r1, #2
1a0006b0:	2001      	movs	r0, #1
1a0006b2:	f7ff ff6d 	bl	1a000590 <Chip_SCU_PinMuxSet>
    tecla_3 = DigitalInputCreate(TEC_3_GPIO, TEC_3_BIT, true);
1a0006b6:	2201      	movs	r2, #1
1a0006b8:	2109      	movs	r1, #9
1a0006ba:	2000      	movs	r0, #0
1a0006bc:	f7ff fedc 	bl	1a000478 <DigitalInputCreate>
1a0006c0:	4603      	mov	r3, r0
1a0006c2:	4a0a      	ldr	r2, [pc, #40]	@ (1a0006ec <ConfigureKeys+0x78>)
1a0006c4:	6013      	str	r3, [r2, #0]
    // Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_3_GPIO, TEC_3_BIT, false);

    Chip_SCU_PinMuxSet(TEC_4_PORT, TEC_4_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_4_FUNC);
1a0006c6:	2240      	movs	r2, #64	@ 0x40
1a0006c8:	2106      	movs	r1, #6
1a0006ca:	2001      	movs	r0, #1
1a0006cc:	f7ff ff60 	bl	1a000590 <Chip_SCU_PinMuxSet>
    tecla_4 = DigitalInputCreate(TEC_4_GPIO, TEC_4_BIT, true);
1a0006d0:	2201      	movs	r2, #1
1a0006d2:	2109      	movs	r1, #9
1a0006d4:	2001      	movs	r0, #1
1a0006d6:	f7ff fecf 	bl	1a000478 <DigitalInputCreate>
1a0006da:	4603      	mov	r3, r0
1a0006dc:	4a04      	ldr	r2, [pc, #16]	@ (1a0006f0 <ConfigureKeys+0x7c>)
1a0006de:	6013      	str	r3, [r2, #0]
    // Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_4_GPIO, TEC_4_BIT, false);
}
1a0006e0:	bf00      	nop
1a0006e2:	bd80      	pop	{r7, pc}
1a0006e4:	1000006c 	.word	0x1000006c
1a0006e8:	10000070 	.word	0x10000070
1a0006ec:	10000074 	.word	0x10000074
1a0006f0:	10000078 	.word	0x10000078

1a0006f4 <FlashLed>:

static void FlashLed(void) {
1a0006f4:	b580      	push	{r7, lr}
1a0006f6:	af00      	add	r7, sp, #0
    static int divisor = 0;
    static rgb_color_t state = LED_BLUE_OFF;

    divisor++;
1a0006f8:	4b25      	ldr	r3, [pc, #148]	@ (1a000790 <FlashLed+0x9c>)
1a0006fa:	681b      	ldr	r3, [r3, #0]
1a0006fc:	3301      	adds	r3, #1
1a0006fe:	4a24      	ldr	r2, [pc, #144]	@ (1a000790 <FlashLed+0x9c>)
1a000700:	6013      	str	r3, [r2, #0]
    if (divisor == 5) {
1a000702:	4b23      	ldr	r3, [pc, #140]	@ (1a000790 <FlashLed+0x9c>)
1a000704:	681b      	ldr	r3, [r3, #0]
1a000706:	2b05      	cmp	r3, #5
1a000708:	d13f      	bne.n	1a00078a <FlashLed+0x96>
        divisor = 0;
1a00070a:	4b21      	ldr	r3, [pc, #132]	@ (1a000790 <FlashLed+0x9c>)
1a00070c:	2200      	movs	r2, #0
1a00070e:	601a      	str	r2, [r3, #0]
        state = (state + 1) % (LED_BLUE_OFF + 1);
1a000710:	4b20      	ldr	r3, [pc, #128]	@ (1a000794 <FlashLed+0xa0>)
1a000712:	781b      	ldrb	r3, [r3, #0]
1a000714:	1c5a      	adds	r2, r3, #1
1a000716:	4b20      	ldr	r3, [pc, #128]	@ (1a000798 <FlashLed+0xa4>)
1a000718:	fb83 3102 	smull	r3, r1, r3, r2
1a00071c:	17d3      	asrs	r3, r2, #31
1a00071e:	1ac9      	subs	r1, r1, r3
1a000720:	460b      	mov	r3, r1
1a000722:	005b      	lsls	r3, r3, #1
1a000724:	440b      	add	r3, r1
1a000726:	005b      	lsls	r3, r3, #1
1a000728:	1ad1      	subs	r1, r2, r3
1a00072a:	b2ca      	uxtb	r2, r1
1a00072c:	4b19      	ldr	r3, [pc, #100]	@ (1a000794 <FlashLed+0xa0>)
1a00072e:	701a      	strb	r2, [r3, #0]

        switch (state) {
1a000730:	4b18      	ldr	r3, [pc, #96]	@ (1a000794 <FlashLed+0xa0>)
1a000732:	781b      	ldrb	r3, [r3, #0]
1a000734:	2b04      	cmp	r3, #4
1a000736:	d012      	beq.n	1a00075e <FlashLed+0x6a>
1a000738:	2b04      	cmp	r3, #4
1a00073a:	dc16      	bgt.n	1a00076a <FlashLed+0x76>
1a00073c:	2b00      	cmp	r3, #0
1a00073e:	d002      	beq.n	1a000746 <FlashLed+0x52>
1a000740:	2b02      	cmp	r3, #2
1a000742:	d006      	beq.n	1a000752 <FlashLed+0x5e>
1a000744:	e011      	b.n	1a00076a <FlashLed+0x76>
        case LED_RED_ON:
            // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_R_GPIO, LED_R_BIT, true);
            DigitalOutputActivate(led_rgb_rojo);
1a000746:	4b15      	ldr	r3, [pc, #84]	@ (1a00079c <FlashLed+0xa8>)
1a000748:	681b      	ldr	r3, [r3, #0]
1a00074a:	4618      	mov	r0, r3
1a00074c:	f7ff fe58 	bl	1a000400 <DigitalOutputActivate>
            break;
1a000750:	e01b      	b.n	1a00078a <FlashLed+0x96>
        case LED_GREEN_ON:
            // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_G_GPIO, LED_G_BIT, true);
            DigitalOutputActivate(led_rgb_verde);
1a000752:	4b13      	ldr	r3, [pc, #76]	@ (1a0007a0 <FlashLed+0xac>)
1a000754:	681b      	ldr	r3, [r3, #0]
1a000756:	4618      	mov	r0, r3
1a000758:	f7ff fe52 	bl	1a000400 <DigitalOutputActivate>
            break;
1a00075c:	e015      	b.n	1a00078a <FlashLed+0x96>
        case LED_BLUE_ON:
            // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_B_GPIO, LED_B_BIT, true);
            DigitalOutputActivate(led_rgb_azul);
1a00075e:	4b11      	ldr	r3, [pc, #68]	@ (1a0007a4 <FlashLed+0xb0>)
1a000760:	681b      	ldr	r3, [r3, #0]
1a000762:	4618      	mov	r0, r3
1a000764:	f7ff fe4c 	bl	1a000400 <DigitalOutputActivate>
            break;
1a000768:	e00f      	b.n	1a00078a <FlashLed+0x96>
        default:
            // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_R_GPIO, LED_R_BIT, false);
            // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_G_GPIO, LED_G_BIT, false);
            // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_B_GPIO, LED_B_BIT, false);
            DigitalOutputDeactivate(led_rgb_rojo);
1a00076a:	4b0c      	ldr	r3, [pc, #48]	@ (1a00079c <FlashLed+0xa8>)
1a00076c:	681b      	ldr	r3, [r3, #0]
1a00076e:	4618      	mov	r0, r3
1a000770:	f7ff fe5a 	bl	1a000428 <DigitalOutputDeactivate>
            DigitalOutputDeactivate(led_rgb_verde);
1a000774:	4b0a      	ldr	r3, [pc, #40]	@ (1a0007a0 <FlashLed+0xac>)
1a000776:	681b      	ldr	r3, [r3, #0]
1a000778:	4618      	mov	r0, r3
1a00077a:	f7ff fe55 	bl	1a000428 <DigitalOutputDeactivate>
            DigitalOutputDeactivate(led_rgb_azul);
1a00077e:	4b09      	ldr	r3, [pc, #36]	@ (1a0007a4 <FlashLed+0xb0>)
1a000780:	681b      	ldr	r3, [r3, #0]
1a000782:	4618      	mov	r0, r3
1a000784:	f7ff fe50 	bl	1a000428 <DigitalOutputDeactivate>
            break;
1a000788:	bf00      	nop
        }
    }
}
1a00078a:	bf00      	nop
1a00078c:	bd80      	pop	{r7, pc}
1a00078e:	bf00      	nop
1a000790:	1000007c 	.word	0x1000007c
1a000794:	10000000 	.word	0x10000000
1a000798:	2aaaaaab 	.word	0x2aaaaaab
1a00079c:	10000060 	.word	0x10000060
1a0007a0:	10000064 	.word	0x10000064
1a0007a4:	10000068 	.word	0x10000068

1a0007a8 <SwitchLed>:

static void SwitchLed(void) {
1a0007a8:	b580      	push	{r7, lr}
1a0007aa:	af00      	add	r7, sp, #0
    // }
    // if (Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, TEC_2_GPIO, TEC_2_BIT) == 0) {
    //     // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_1_GPIO, LED_1_BIT, false);
    //     DigitalOutputDeactivate(led_amarillo);
    // }
    if (DigitalInputHasActivated(tecla_1)) {
1a0007ac:	4b0d      	ldr	r3, [pc, #52]	@ (1a0007e4 <SwitchLed+0x3c>)
1a0007ae:	681b      	ldr	r3, [r3, #0]
1a0007b0:	4618      	mov	r0, r3
1a0007b2:	f7ff fed2 	bl	1a00055a <DigitalInputHasActivated>
1a0007b6:	4603      	mov	r3, r0
1a0007b8:	2b00      	cmp	r3, #0
1a0007ba:	d004      	beq.n	1a0007c6 <SwitchLed+0x1e>
        DigitalOutputActivate(led_amarillo);
1a0007bc:	4b0a      	ldr	r3, [pc, #40]	@ (1a0007e8 <SwitchLed+0x40>)
1a0007be:	681b      	ldr	r3, [r3, #0]
1a0007c0:	4618      	mov	r0, r3
1a0007c2:	f7ff fe1d 	bl	1a000400 <DigitalOutputActivate>
    }
    if (DigitalInputHasActivated(tecla_2)) {
1a0007c6:	4b09      	ldr	r3, [pc, #36]	@ (1a0007ec <SwitchLed+0x44>)
1a0007c8:	681b      	ldr	r3, [r3, #0]
1a0007ca:	4618      	mov	r0, r3
1a0007cc:	f7ff fec5 	bl	1a00055a <DigitalInputHasActivated>
1a0007d0:	4603      	mov	r3, r0
1a0007d2:	2b00      	cmp	r3, #0
1a0007d4:	d004      	beq.n	1a0007e0 <SwitchLed+0x38>
        DigitalOutputDeactivate(led_amarillo);
1a0007d6:	4b04      	ldr	r3, [pc, #16]	@ (1a0007e8 <SwitchLed+0x40>)
1a0007d8:	681b      	ldr	r3, [r3, #0]
1a0007da:	4618      	mov	r0, r3
1a0007dc:	f7ff fe24 	bl	1a000428 <DigitalOutputDeactivate>
    }
}
1a0007e0:	bf00      	nop
1a0007e2:	bd80      	pop	{r7, pc}
1a0007e4:	1000006c 	.word	0x1000006c
1a0007e8:	1000005c 	.word	0x1000005c
1a0007ec:	10000070 	.word	0x10000070

1a0007f0 <ToggleLed>:

static void ToggleLed(void) {
1a0007f0:	b580      	push	{r7, lr}
1a0007f2:	af00      	add	r7, sp, #0
    //     // Chip_GPIO_SetPinToggle(LPC_GPIO_PORT, LED_2_GPIO, LED_2_BIT);
    //     DigitalOutputToggle(led_rojo);
    // }
    // last_state = current_state;

    if (DigitalInputHasActivated(tecla_3)) {
1a0007f4:	4b07      	ldr	r3, [pc, #28]	@ (1a000814 <ToggleLed+0x24>)
1a0007f6:	681b      	ldr	r3, [r3, #0]
1a0007f8:	4618      	mov	r0, r3
1a0007fa:	f7ff feae 	bl	1a00055a <DigitalInputHasActivated>
1a0007fe:	4603      	mov	r3, r0
1a000800:	2b00      	cmp	r3, #0
1a000802:	d004      	beq.n	1a00080e <ToggleLed+0x1e>
        DigitalOutputToggle(led_rojo);
1a000804:	4b04      	ldr	r3, [pc, #16]	@ (1a000818 <ToggleLed+0x28>)
1a000806:	681b      	ldr	r3, [r3, #0]
1a000808:	4618      	mov	r0, r3
1a00080a:	f7ff fe21 	bl	1a000450 <DigitalOutputToggle>
    }
}
1a00080e:	bf00      	nop
1a000810:	bd80      	pop	{r7, pc}
1a000812:	bf00      	nop
1a000814:	10000074 	.word	0x10000074
1a000818:	10000054 	.word	0x10000054

1a00081c <TestLed>:

static void TestLed(void) {
1a00081c:	b580      	push	{r7, lr}
1a00081e:	af00      	add	r7, sp, #0
    // if (Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, TEC_4_GPIO, TEC_4_BIT) == 0) {
    if (DigitalInputGetState(tecla_4)) {
1a000820:	4b0a      	ldr	r3, [pc, #40]	@ (1a00084c <TestLed+0x30>)
1a000822:	681b      	ldr	r3, [r3, #0]
1a000824:	4618      	mov	r0, r3
1a000826:	f7ff fe57 	bl	1a0004d8 <DigitalInputGetState>
1a00082a:	4603      	mov	r3, r0
1a00082c:	2b00      	cmp	r3, #0
1a00082e:	d005      	beq.n	1a00083c <TestLed+0x20>
    // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_3_GPIO, LED_3_BIT, true);
        DigitalOutputActivate(led_verde);
1a000830:	4b07      	ldr	r3, [pc, #28]	@ (1a000850 <TestLed+0x34>)
1a000832:	681b      	ldr	r3, [r3, #0]
1a000834:	4618      	mov	r0, r3
1a000836:	f7ff fde3 	bl	1a000400 <DigitalOutputActivate>
    } else {
        // Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_3_GPIO, LED_3_BIT, false);
        DigitalOutputDeactivate(led_verde);
    }
}
1a00083a:	e004      	b.n	1a000846 <TestLed+0x2a>
        DigitalOutputDeactivate(led_verde);
1a00083c:	4b04      	ldr	r3, [pc, #16]	@ (1a000850 <TestLed+0x34>)
1a00083e:	681b      	ldr	r3, [r3, #0]
1a000840:	4618      	mov	r0, r3
1a000842:	f7ff fdf1 	bl	1a000428 <DigitalOutputDeactivate>
}
1a000846:	bf00      	nop
1a000848:	bd80      	pop	{r7, pc}
1a00084a:	bf00      	nop
1a00084c:	10000078 	.word	0x10000078
1a000850:	10000058 	.word	0x10000058

1a000854 <Delay>:

static void Delay(void) {
1a000854:	b480      	push	{r7}
1a000856:	b083      	sub	sp, #12
1a000858:	af00      	add	r7, sp, #0
    for (int index = 0; index < 100; index++) {
1a00085a:	2300      	movs	r3, #0
1a00085c:	607b      	str	r3, [r7, #4]
1a00085e:	e00e      	b.n	1a00087e <Delay+0x2a>
        for (int delay = 0; delay < 25000; delay++) {
1a000860:	2300      	movs	r3, #0
1a000862:	603b      	str	r3, [r7, #0]
1a000864:	e003      	b.n	1a00086e <Delay+0x1a>
            __asm("NOP");
1a000866:	bf00      	nop
        for (int delay = 0; delay < 25000; delay++) {
1a000868:	683b      	ldr	r3, [r7, #0]
1a00086a:	3301      	adds	r3, #1
1a00086c:	603b      	str	r3, [r7, #0]
1a00086e:	683b      	ldr	r3, [r7, #0]
1a000870:	f246 12a7 	movw	r2, #24999	@ 0x61a7
1a000874:	4293      	cmp	r3, r2
1a000876:	ddf6      	ble.n	1a000866 <Delay+0x12>
    for (int index = 0; index < 100; index++) {
1a000878:	687b      	ldr	r3, [r7, #4]
1a00087a:	3301      	adds	r3, #1
1a00087c:	607b      	str	r3, [r7, #4]
1a00087e:	687b      	ldr	r3, [r7, #4]
1a000880:	2b63      	cmp	r3, #99	@ 0x63
1a000882:	dded      	ble.n	1a000860 <Delay+0xc>
        }
    }
}
1a000884:	bf00      	nop
1a000886:	bf00      	nop
1a000888:	370c      	adds	r7, #12
1a00088a:	46bd      	mov	sp, r7
1a00088c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000890:	4770      	bx	lr

1a000892 <main>:

/* === Public function implementation ========================================================== */

int main(void) {
1a000892:	b580      	push	{r7, lr}
1a000894:	af00      	add	r7, sp, #0

    BoardSetup();
1a000896:	f000 f97d 	bl	1a000b94 <BoardSetup>
    ConfigureLeds();
1a00089a:	f7ff fe93 	bl	1a0005c4 <ConfigureLeds>
    ConfigureKeys();
1a00089e:	f7ff fee9 	bl	1a000674 <ConfigureKeys>

    while (true) {
        FlashLed();
1a0008a2:	f7ff ff27 	bl	1a0006f4 <FlashLed>
        SwitchLed();
1a0008a6:	f7ff ff7f 	bl	1a0007a8 <SwitchLed>
        ToggleLed();
1a0008aa:	f7ff ffa1 	bl	1a0007f0 <ToggleLed>
        TestLed();
1a0008ae:	f7ff ffb5 	bl	1a00081c <TestLed>

        Delay();
1a0008b2:	f7ff ffcf 	bl	1a000854 <Delay>
        FlashLed();
1a0008b6:	bf00      	nop
1a0008b8:	e7f3      	b.n	1a0008a2 <main+0x10>
	...

1a0008bc <ResetISR>:
void ResetISR(void) {
1a0008bc:	b580      	push	{r7, lr}
1a0008be:	b088      	sub	sp, #32
1a0008c0:	af00      	add	r7, sp, #0
    __asm volatile("cpsid i");
1a0008c2:	b672      	cpsid	i
    unsigned int * RESET_CONTROL = (unsigned int *)0x40053100;
1a0008c4:	4b2c      	ldr	r3, [pc, #176]	@ (1a000978 <ResetISR+0xbc>)
1a0008c6:	617b      	str	r3, [r7, #20]
    *(RESET_CONTROL + 0) = 0x10DF1000;
1a0008c8:	697b      	ldr	r3, [r7, #20]
1a0008ca:	4a2c      	ldr	r2, [pc, #176]	@ (1a00097c <ResetISR+0xc0>)
1a0008cc:	601a      	str	r2, [r3, #0]
    *(RESET_CONTROL + 1) = 0x01DFF7FF;
1a0008ce:	697b      	ldr	r3, [r7, #20]
1a0008d0:	3304      	adds	r3, #4
1a0008d2:	4a2b      	ldr	r2, [pc, #172]	@ (1a000980 <ResetISR+0xc4>)
1a0008d4:	601a      	str	r2, [r3, #0]
    volatile unsigned int * NVIC_ICPR = (unsigned int *)0xE000E280;
1a0008d6:	4b2b      	ldr	r3, [pc, #172]	@ (1a000984 <ResetISR+0xc8>)
1a0008d8:	613b      	str	r3, [r7, #16]
    for (irqpendloop = 0; irqpendloop < 8; irqpendloop++) {
1a0008da:	2300      	movs	r3, #0
1a0008dc:	61fb      	str	r3, [r7, #28]
1a0008de:	e009      	b.n	1a0008f4 <ResetISR+0x38>
        *(NVIC_ICPR + irqpendloop) = 0xFFFFFFFF;
1a0008e0:	69fb      	ldr	r3, [r7, #28]
1a0008e2:	009b      	lsls	r3, r3, #2
1a0008e4:	693a      	ldr	r2, [r7, #16]
1a0008e6:	4413      	add	r3, r2
1a0008e8:	f04f 32ff 	mov.w	r2, #4294967295
1a0008ec:	601a      	str	r2, [r3, #0]
    for (irqpendloop = 0; irqpendloop < 8; irqpendloop++) {
1a0008ee:	69fb      	ldr	r3, [r7, #28]
1a0008f0:	3301      	adds	r3, #1
1a0008f2:	61fb      	str	r3, [r7, #28]
1a0008f4:	69fb      	ldr	r3, [r7, #28]
1a0008f6:	2b07      	cmp	r3, #7
1a0008f8:	d9f2      	bls.n	1a0008e0 <ResetISR+0x24>
    __asm volatile("cpsie i");
1a0008fa:	b662      	cpsie	i
    SectionTableAddr = &__data_section_table;
1a0008fc:	4b22      	ldr	r3, [pc, #136]	@ (1a000988 <ResetISR+0xcc>)
1a0008fe:	61bb      	str	r3, [r7, #24]
    while (SectionTableAddr < &__data_section_table_end) {
1a000900:	e013      	b.n	1a00092a <ResetISR+0x6e>
        LoadAddr = *SectionTableAddr++;
1a000902:	69bb      	ldr	r3, [r7, #24]
1a000904:	1d1a      	adds	r2, r3, #4
1a000906:	61ba      	str	r2, [r7, #24]
1a000908:	681b      	ldr	r3, [r3, #0]
1a00090a:	603b      	str	r3, [r7, #0]
        ExeAddr = *SectionTableAddr++;
1a00090c:	69bb      	ldr	r3, [r7, #24]
1a00090e:	1d1a      	adds	r2, r3, #4
1a000910:	61ba      	str	r2, [r7, #24]
1a000912:	681b      	ldr	r3, [r3, #0]
1a000914:	60bb      	str	r3, [r7, #8]
        SectionLen = *SectionTableAddr++;
1a000916:	69bb      	ldr	r3, [r7, #24]
1a000918:	1d1a      	adds	r2, r3, #4
1a00091a:	61ba      	str	r2, [r7, #24]
1a00091c:	681b      	ldr	r3, [r3, #0]
1a00091e:	607b      	str	r3, [r7, #4]
        data_init(LoadAddr, ExeAddr, SectionLen);
1a000920:	687a      	ldr	r2, [r7, #4]
1a000922:	68b9      	ldr	r1, [r7, #8]
1a000924:	6838      	ldr	r0, [r7, #0]
1a000926:	f7ff fc27 	bl	1a000178 <data_init>
    while (SectionTableAddr < &__data_section_table_end) {
1a00092a:	69bb      	ldr	r3, [r7, #24]
1a00092c:	4a17      	ldr	r2, [pc, #92]	@ (1a00098c <ResetISR+0xd0>)
1a00092e:	4293      	cmp	r3, r2
1a000930:	d3e7      	bcc.n	1a000902 <ResetISR+0x46>
    while (SectionTableAddr < &__bss_section_table_end) {
1a000932:	e00d      	b.n	1a000950 <ResetISR+0x94>
        ExeAddr = *SectionTableAddr++;
1a000934:	69bb      	ldr	r3, [r7, #24]
1a000936:	1d1a      	adds	r2, r3, #4
1a000938:	61ba      	str	r2, [r7, #24]
1a00093a:	681b      	ldr	r3, [r3, #0]
1a00093c:	60bb      	str	r3, [r7, #8]
        SectionLen = *SectionTableAddr++;
1a00093e:	69bb      	ldr	r3, [r7, #24]
1a000940:	1d1a      	adds	r2, r3, #4
1a000942:	61ba      	str	r2, [r7, #24]
1a000944:	681b      	ldr	r3, [r3, #0]
1a000946:	607b      	str	r3, [r7, #4]
        bss_init(ExeAddr, SectionLen);
1a000948:	6879      	ldr	r1, [r7, #4]
1a00094a:	68b8      	ldr	r0, [r7, #8]
1a00094c:	f7ff fc37 	bl	1a0001be <bss_init>
    while (SectionTableAddr < &__bss_section_table_end) {
1a000950:	69bb      	ldr	r3, [r7, #24]
1a000952:	4a0f      	ldr	r2, [pc, #60]	@ (1a000990 <ResetISR+0xd4>)
1a000954:	4293      	cmp	r3, r2
1a000956:	d3ed      	bcc.n	1a000934 <ResetISR+0x78>
    asm("LDR.W R0, =0xE000ED88");
1a000958:	f8df 0040 	ldr.w	r0, [pc, #64]	@ 1a00099c <ResetISR+0xe0>
    asm("LDR R1, [R0]");
1a00095c:	6801      	ldr	r1, [r0, #0]
    asm(" ORR R1, R1, #(0xF << 20)");
1a00095e:	f441 0170 	orr.w	r1, r1, #15728640	@ 0xf00000
    asm("STR R1, [R0]");
1a000962:	6001      	str	r1, [r0, #0]
    unsigned int * pSCB_VTOR = (unsigned int *)0xE000ED08;
1a000964:	4b0b      	ldr	r3, [pc, #44]	@ (1a000994 <ResetISR+0xd8>)
1a000966:	60fb      	str	r3, [r7, #12]
        *pSCB_VTOR = (unsigned int)g_pfnVectors;
1a000968:	4a0b      	ldr	r2, [pc, #44]	@ (1a000998 <ResetISR+0xdc>)
1a00096a:	68fb      	ldr	r3, [r7, #12]
1a00096c:	601a      	str	r2, [r3, #0]
    main();
1a00096e:	f7ff ff90 	bl	1a000892 <main>
    while (1) {
1a000972:	bf00      	nop
1a000974:	e7fd      	b.n	1a000972 <ResetISR+0xb6>
1a000976:	bf00      	nop
1a000978:	40053100 	.word	0x40053100
1a00097c:	10df1000 	.word	0x10df1000
1a000980:	01dff7ff 	.word	0x01dff7ff
1a000984:	e000e280 	.word	0xe000e280
1a000988:	1a000114 	.word	0x1a000114
1a00098c:	1a000150 	.word	0x1a000150
1a000990:	1a000178 	.word	0x1a000178
1a000994:	e000ed08 	.word	0xe000ed08
1a000998:	1a000000 	.word	0x1a000000
1a00099c:	e000ed88 	.word	0xe000ed88

1a0009a0 <Chip_SCU_PinMuxSet>:
{
1a0009a0:	b480      	push	{r7}
1a0009a2:	b083      	sub	sp, #12
1a0009a4:	af00      	add	r7, sp, #0
1a0009a6:	4603      	mov	r3, r0
1a0009a8:	71fb      	strb	r3, [r7, #7]
1a0009aa:	460b      	mov	r3, r1
1a0009ac:	71bb      	strb	r3, [r7, #6]
1a0009ae:	4613      	mov	r3, r2
1a0009b0:	80bb      	strh	r3, [r7, #4]
	LPC_SCU->SFSP[port][pin] = modefunc;
1a0009b2:	4807      	ldr	r0, [pc, #28]	@ (1a0009d0 <Chip_SCU_PinMuxSet+0x30>)
1a0009b4:	79f9      	ldrb	r1, [r7, #7]
1a0009b6:	79bb      	ldrb	r3, [r7, #6]
1a0009b8:	88ba      	ldrh	r2, [r7, #4]
1a0009ba:	0149      	lsls	r1, r1, #5
1a0009bc:	440b      	add	r3, r1
1a0009be:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
}
1a0009c2:	bf00      	nop
1a0009c4:	370c      	adds	r7, #12
1a0009c6:	46bd      	mov	sp, r7
1a0009c8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009cc:	4770      	bx	lr
1a0009ce:	bf00      	nop
1a0009d0:	40086000 	.word	0x40086000

1a0009d4 <Chip_CREG_SetFlashAcceleration>:
 * This function should be called with the higher frequency before the clock frequency is
 * increased and it should be called with the new lower value after the clock frequency is
 * decreased.
 */
STATIC INLINE void Chip_CREG_SetFlashAcceleration(uint32_t Hz)
{
1a0009d4:	b480      	push	{r7}
1a0009d6:	b085      	sub	sp, #20
1a0009d8:	af00      	add	r7, sp, #0
1a0009da:	6078      	str	r0, [r7, #4]
	uint32_t FAValue = Hz / 21510000;
1a0009dc:	687b      	ldr	r3, [r7, #4]
1a0009de:	4a10      	ldr	r2, [pc, #64]	@ (1a000a20 <Chip_CREG_SetFlashAcceleration+0x4c>)
1a0009e0:	fba2 2303 	umull	r2, r3, r2, r3
1a0009e4:	0ddb      	lsrs	r3, r3, #23
1a0009e6:	60fb      	str	r3, [r7, #12]

	LPC_CREG->FLASHCFGA = (LPC_CREG->FLASHCFGA & (~(0xF << 12))) | (FAValue << 12);
1a0009e8:	4b0e      	ldr	r3, [pc, #56]	@ (1a000a24 <Chip_CREG_SetFlashAcceleration+0x50>)
1a0009ea:	f8d3 3120 	ldr.w	r3, [r3, #288]	@ 0x120
1a0009ee:	f423 4270 	bic.w	r2, r3, #61440	@ 0xf000
1a0009f2:	68fb      	ldr	r3, [r7, #12]
1a0009f4:	031b      	lsls	r3, r3, #12
1a0009f6:	490b      	ldr	r1, [pc, #44]	@ (1a000a24 <Chip_CREG_SetFlashAcceleration+0x50>)
1a0009f8:	4313      	orrs	r3, r2
1a0009fa:	f8c1 3120 	str.w	r3, [r1, #288]	@ 0x120
	LPC_CREG->FLASHCFGB = (LPC_CREG->FLASHCFGB & (~(0xF << 12))) | (FAValue << 12);
1a0009fe:	4b09      	ldr	r3, [pc, #36]	@ (1a000a24 <Chip_CREG_SetFlashAcceleration+0x50>)
1a000a00:	f8d3 3124 	ldr.w	r3, [r3, #292]	@ 0x124
1a000a04:	f423 4270 	bic.w	r2, r3, #61440	@ 0xf000
1a000a08:	68fb      	ldr	r3, [r7, #12]
1a000a0a:	031b      	lsls	r3, r3, #12
1a000a0c:	4905      	ldr	r1, [pc, #20]	@ (1a000a24 <Chip_CREG_SetFlashAcceleration+0x50>)
1a000a0e:	4313      	orrs	r3, r2
1a000a10:	f8c1 3124 	str.w	r3, [r1, #292]	@ 0x124
}
1a000a14:	bf00      	nop
1a000a16:	3714      	adds	r7, #20
1a000a18:	46bd      	mov	sp, r7
1a000a1a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a1e:	4770      	bx	lr
1a000a20:	63d6267d 	.word	0x63d6267d
1a000a24:	40043000 	.word	0x40043000

1a000a28 <Chip_GPIO_SetPinState>:
{
1a000a28:	b480      	push	{r7}
1a000a2a:	b083      	sub	sp, #12
1a000a2c:	af00      	add	r7, sp, #0
1a000a2e:	6078      	str	r0, [r7, #4]
1a000a30:	4608      	mov	r0, r1
1a000a32:	4611      	mov	r1, r2
1a000a34:	461a      	mov	r2, r3
1a000a36:	4603      	mov	r3, r0
1a000a38:	70fb      	strb	r3, [r7, #3]
1a000a3a:	460b      	mov	r3, r1
1a000a3c:	70bb      	strb	r3, [r7, #2]
1a000a3e:	4613      	mov	r3, r2
1a000a40:	707b      	strb	r3, [r7, #1]
	pGPIO->B[port][pin] = setting;
1a000a42:	78fa      	ldrb	r2, [r7, #3]
1a000a44:	78bb      	ldrb	r3, [r7, #2]
1a000a46:	7878      	ldrb	r0, [r7, #1]
1a000a48:	6879      	ldr	r1, [r7, #4]
1a000a4a:	0152      	lsls	r2, r2, #5
1a000a4c:	440a      	add	r2, r1
1a000a4e:	4413      	add	r3, r2
1a000a50:	4602      	mov	r2, r0
1a000a52:	701a      	strb	r2, [r3, #0]
}
1a000a54:	bf00      	nop
1a000a56:	370c      	adds	r7, #12
1a000a58:	46bd      	mov	sp, r7
1a000a5a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a5e:	4770      	bx	lr

1a000a60 <Chip_GPIO_SetPinDIROutput>:
{
1a000a60:	b480      	push	{r7}
1a000a62:	b083      	sub	sp, #12
1a000a64:	af00      	add	r7, sp, #0
1a000a66:	6078      	str	r0, [r7, #4]
1a000a68:	460b      	mov	r3, r1
1a000a6a:	70fb      	strb	r3, [r7, #3]
1a000a6c:	4613      	mov	r3, r2
1a000a6e:	70bb      	strb	r3, [r7, #2]
	pGPIO->DIR[port] |= 1UL << pin;
1a000a70:	78fa      	ldrb	r2, [r7, #3]
1a000a72:	687b      	ldr	r3, [r7, #4]
1a000a74:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a000a78:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000a7c:	78bb      	ldrb	r3, [r7, #2]
1a000a7e:	2201      	movs	r2, #1
1a000a80:	fa02 f303 	lsl.w	r3, r2, r3
1a000a84:	78fa      	ldrb	r2, [r7, #3]
1a000a86:	4319      	orrs	r1, r3
1a000a88:	687b      	ldr	r3, [r7, #4]
1a000a8a:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a000a8e:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a000a92:	bf00      	nop
1a000a94:	370c      	adds	r7, #12
1a000a96:	46bd      	mov	sp, r7
1a000a98:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a9c:	4770      	bx	lr

1a000a9e <Chip_GPIO_SetPinDIRInput>:
{
1a000a9e:	b480      	push	{r7}
1a000aa0:	b083      	sub	sp, #12
1a000aa2:	af00      	add	r7, sp, #0
1a000aa4:	6078      	str	r0, [r7, #4]
1a000aa6:	460b      	mov	r3, r1
1a000aa8:	70fb      	strb	r3, [r7, #3]
1a000aaa:	4613      	mov	r3, r2
1a000aac:	70bb      	strb	r3, [r7, #2]
	pGPIO->DIR[port] &= ~(1UL << pin);
1a000aae:	78fa      	ldrb	r2, [r7, #3]
1a000ab0:	687b      	ldr	r3, [r7, #4]
1a000ab2:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a000ab6:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000aba:	78bb      	ldrb	r3, [r7, #2]
1a000abc:	2201      	movs	r2, #1
1a000abe:	fa02 f303 	lsl.w	r3, r2, r3
1a000ac2:	43db      	mvns	r3, r3
1a000ac4:	78fa      	ldrb	r2, [r7, #3]
1a000ac6:	4019      	ands	r1, r3
1a000ac8:	687b      	ldr	r3, [r7, #4]
1a000aca:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a000ace:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a000ad2:	bf00      	nop
1a000ad4:	370c      	adds	r7, #12
1a000ad6:	46bd      	mov	sp, r7
1a000ad8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000adc:	4770      	bx	lr

1a000ade <Chip_GPIO_SetPinDIR>:
{
1a000ade:	b580      	push	{r7, lr}
1a000ae0:	b082      	sub	sp, #8
1a000ae2:	af00      	add	r7, sp, #0
1a000ae4:	6078      	str	r0, [r7, #4]
1a000ae6:	4608      	mov	r0, r1
1a000ae8:	4611      	mov	r1, r2
1a000aea:	461a      	mov	r2, r3
1a000aec:	4603      	mov	r3, r0
1a000aee:	70fb      	strb	r3, [r7, #3]
1a000af0:	460b      	mov	r3, r1
1a000af2:	70bb      	strb	r3, [r7, #2]
1a000af4:	4613      	mov	r3, r2
1a000af6:	707b      	strb	r3, [r7, #1]
	if (output) {
1a000af8:	787b      	ldrb	r3, [r7, #1]
1a000afa:	2b00      	cmp	r3, #0
1a000afc:	d006      	beq.n	1a000b0c <Chip_GPIO_SetPinDIR+0x2e>
		Chip_GPIO_SetPinDIROutput(pGPIO, port, pin);
1a000afe:	78ba      	ldrb	r2, [r7, #2]
1a000b00:	78fb      	ldrb	r3, [r7, #3]
1a000b02:	4619      	mov	r1, r3
1a000b04:	6878      	ldr	r0, [r7, #4]
1a000b06:	f7ff ffab 	bl	1a000a60 <Chip_GPIO_SetPinDIROutput>
}
1a000b0a:	e005      	b.n	1a000b18 <Chip_GPIO_SetPinDIR+0x3a>
		Chip_GPIO_SetPinDIRInput(pGPIO, port, pin);
1a000b0c:	78ba      	ldrb	r2, [r7, #2]
1a000b0e:	78fb      	ldrb	r3, [r7, #3]
1a000b10:	4619      	mov	r1, r3
1a000b12:	6878      	ldr	r0, [r7, #4]
1a000b14:	f7ff ffc3 	bl	1a000a9e <Chip_GPIO_SetPinDIRInput>
}
1a000b18:	bf00      	nop
1a000b1a:	3708      	adds	r7, #8
1a000b1c:	46bd      	mov	sp, r7
1a000b1e:	bd80      	pop	{r7, pc}

1a000b20 <SetupClocking>:

/* === Private variable definitions ============================================================ */

/* === Private function implementation ========================================================= */

static void SetupClocking(void) {
1a000b20:	b580      	push	{r7, lr}
1a000b22:	b082      	sub	sp, #8
1a000b24:	af00      	add	r7, sp, #0
    Chip_CREG_SetFlashAcceleration(MAX_CLOCK_FREQ);
1a000b26:	4818      	ldr	r0, [pc, #96]	@ (1a000b88 <SetupClocking+0x68>)
1a000b28:	f7ff ff54 	bl	1a0009d4 <Chip_CREG_SetFlashAcceleration>
    Chip_SetupCoreClock(CLKIN_CRYSTAL, MAX_CLOCK_FREQ, true);
1a000b2c:	2201      	movs	r2, #1
1a000b2e:	4916      	ldr	r1, [pc, #88]	@ (1a000b88 <SetupClocking+0x68>)
1a000b30:	2006      	movs	r0, #6
1a000b32:	f000 fd91 	bl	1a001658 <Chip_SetupCoreClock>

    /* Setup system base clocks and initial states. This won't enable and
       disable individual clocks, but sets up the base clock sources for
       each individual peripheral clock. */
    for (uint32_t i = 0; i < (sizeof(InitClkStates) / sizeof(InitClkStates[0])); ++i) {
1a000b36:	2300      	movs	r3, #0
1a000b38:	607b      	str	r3, [r7, #4]
1a000b3a:	e011      	b.n	1a000b60 <SetupClocking+0x40>
        const struct CLK_BASE_STATES * c = &InitClkStates[i];
1a000b3c:	687b      	ldr	r3, [r7, #4]
1a000b3e:	009b      	lsls	r3, r3, #2
1a000b40:	4a12      	ldr	r2, [pc, #72]	@ (1a000b8c <SetupClocking+0x6c>)
1a000b42:	4413      	add	r3, r2
1a000b44:	603b      	str	r3, [r7, #0]
        Chip_Clock_SetBaseClock(c->clk, c->clkin, c->autoblock_enab, c->powerdn);
1a000b46:	683b      	ldr	r3, [r7, #0]
1a000b48:	7818      	ldrb	r0, [r3, #0]
1a000b4a:	683b      	ldr	r3, [r7, #0]
1a000b4c:	7859      	ldrb	r1, [r3, #1]
1a000b4e:	683b      	ldr	r3, [r7, #0]
1a000b50:	789a      	ldrb	r2, [r3, #2]
1a000b52:	683b      	ldr	r3, [r7, #0]
1a000b54:	78db      	ldrb	r3, [r3, #3]
1a000b56:	f000 fc81 	bl	1a00145c <Chip_Clock_SetBaseClock>
    for (uint32_t i = 0; i < (sizeof(InitClkStates) / sizeof(InitClkStates[0])); ++i) {
1a000b5a:	687b      	ldr	r3, [r7, #4]
1a000b5c:	3301      	adds	r3, #1
1a000b5e:	607b      	str	r3, [r7, #4]
1a000b60:	687b      	ldr	r3, [r7, #4]
1a000b62:	2b00      	cmp	r3, #0
1a000b64:	d0ea      	beq.n	1a000b3c <SetupClocking+0x1c>
    }

    /* Reset and enable 32Khz oscillator */
    LPC_CREG->CREG0 &= ~((1 << 3) | (1 << 2));
1a000b66:	4b0a      	ldr	r3, [pc, #40]	@ (1a000b90 <SetupClocking+0x70>)
1a000b68:	685b      	ldr	r3, [r3, #4]
1a000b6a:	4a09      	ldr	r2, [pc, #36]	@ (1a000b90 <SetupClocking+0x70>)
1a000b6c:	f023 030c 	bic.w	r3, r3, #12
1a000b70:	6053      	str	r3, [r2, #4]
    LPC_CREG->CREG0 |= (1 << 1) | (1 << 0);
1a000b72:	4b07      	ldr	r3, [pc, #28]	@ (1a000b90 <SetupClocking+0x70>)
1a000b74:	685b      	ldr	r3, [r3, #4]
1a000b76:	4a06      	ldr	r2, [pc, #24]	@ (1a000b90 <SetupClocking+0x70>)
1a000b78:	f043 0303 	orr.w	r3, r3, #3
1a000b7c:	6053      	str	r3, [r2, #4]
}
1a000b7e:	bf00      	nop
1a000b80:	3708      	adds	r7, #8
1a000b82:	46bd      	mov	sp, r7
1a000b84:	bd80      	pop	{r7, pc}
1a000b86:	bf00      	nop
1a000b88:	0c28cb00 	.word	0x0c28cb00
1a000b8c:	1a001ae8 	.word	0x1a001ae8
1a000b90:	40043000 	.word	0x40043000

1a000b94 <BoardSetup>:

/* === Public function implementation ========================================================== */

void BoardSetup(void) {
1a000b94:	b580      	push	{r7, lr}
1a000b96:	af00      	add	r7, sp, #0
    SetupClocking();
1a000b98:	f7ff ffc2 	bl	1a000b20 <SetupClocking>
    SystemCoreClockUpdate();
1a000b9c:	f000 f896 	bl	1a000ccc <SystemCoreClockUpdate>
    GpioSetDirection(TEC_1, false);
    GpioSetDirection(TEC_2, false);
    GpioSetDirection(TEC_3, false);
    GpioSetDirection(TEC_4, false);
#elif defined(USE_DRIVERS)
    Chip_SCU_PinMuxSet(LED_R_PORT, LED_R_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_R_FUNC);
1a000ba0:	2254      	movs	r2, #84	@ 0x54
1a000ba2:	2100      	movs	r1, #0
1a000ba4:	2002      	movs	r0, #2
1a000ba6:	f7ff fefb 	bl	1a0009a0 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_R_GPIO, LED_R_BIT, false);
1a000baa:	2300      	movs	r3, #0
1a000bac:	2200      	movs	r2, #0
1a000bae:	2105      	movs	r1, #5
1a000bb0:	4845      	ldr	r0, [pc, #276]	@ (1a000cc8 <BoardSetup+0x134>)
1a000bb2:	f7ff ff39 	bl	1a000a28 <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_R_GPIO, LED_R_BIT, true);
1a000bb6:	2301      	movs	r3, #1
1a000bb8:	2200      	movs	r2, #0
1a000bba:	2105      	movs	r1, #5
1a000bbc:	4842      	ldr	r0, [pc, #264]	@ (1a000cc8 <BoardSetup+0x134>)
1a000bbe:	f7ff ff8e 	bl	1a000ade <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(LED_G_PORT, LED_G_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_G_FUNC);
1a000bc2:	2254      	movs	r2, #84	@ 0x54
1a000bc4:	2101      	movs	r1, #1
1a000bc6:	2002      	movs	r0, #2
1a000bc8:	f7ff feea 	bl	1a0009a0 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_G_GPIO, LED_G_BIT, false);
1a000bcc:	2300      	movs	r3, #0
1a000bce:	2201      	movs	r2, #1
1a000bd0:	2105      	movs	r1, #5
1a000bd2:	483d      	ldr	r0, [pc, #244]	@ (1a000cc8 <BoardSetup+0x134>)
1a000bd4:	f7ff ff28 	bl	1a000a28 <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_G_GPIO, LED_G_BIT, true);
1a000bd8:	2301      	movs	r3, #1
1a000bda:	2201      	movs	r2, #1
1a000bdc:	2105      	movs	r1, #5
1a000bde:	483a      	ldr	r0, [pc, #232]	@ (1a000cc8 <BoardSetup+0x134>)
1a000be0:	f7ff ff7d 	bl	1a000ade <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(LED_B_PORT, LED_B_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_B_FUNC);
1a000be4:	2254      	movs	r2, #84	@ 0x54
1a000be6:	2102      	movs	r1, #2
1a000be8:	2002      	movs	r0, #2
1a000bea:	f7ff fed9 	bl	1a0009a0 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_B_GPIO, LED_B_BIT, false);
1a000bee:	2300      	movs	r3, #0
1a000bf0:	2202      	movs	r2, #2
1a000bf2:	2105      	movs	r1, #5
1a000bf4:	4834      	ldr	r0, [pc, #208]	@ (1a000cc8 <BoardSetup+0x134>)
1a000bf6:	f7ff ff17 	bl	1a000a28 <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_B_GPIO, LED_B_BIT, true);
1a000bfa:	2301      	movs	r3, #1
1a000bfc:	2202      	movs	r2, #2
1a000bfe:	2105      	movs	r1, #5
1a000c00:	4831      	ldr	r0, [pc, #196]	@ (1a000cc8 <BoardSetup+0x134>)
1a000c02:	f7ff ff6c 	bl	1a000ade <Chip_GPIO_SetPinDIR>

    /******************/
    Chip_SCU_PinMuxSet(LED_1_PORT, LED_1_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_1_FUNC);
1a000c06:	2250      	movs	r2, #80	@ 0x50
1a000c08:	210a      	movs	r1, #10
1a000c0a:	2002      	movs	r0, #2
1a000c0c:	f7ff fec8 	bl	1a0009a0 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_1_GPIO, LED_1_BIT, false);
1a000c10:	2300      	movs	r3, #0
1a000c12:	220e      	movs	r2, #14
1a000c14:	2100      	movs	r1, #0
1a000c16:	482c      	ldr	r0, [pc, #176]	@ (1a000cc8 <BoardSetup+0x134>)
1a000c18:	f7ff ff06 	bl	1a000a28 <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_1_GPIO, LED_1_BIT, true);
1a000c1c:	2301      	movs	r3, #1
1a000c1e:	220e      	movs	r2, #14
1a000c20:	2100      	movs	r1, #0
1a000c22:	4829      	ldr	r0, [pc, #164]	@ (1a000cc8 <BoardSetup+0x134>)
1a000c24:	f7ff ff5b 	bl	1a000ade <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(LED_2_PORT, LED_2_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_2_FUNC);
1a000c28:	2250      	movs	r2, #80	@ 0x50
1a000c2a:	210b      	movs	r1, #11
1a000c2c:	2002      	movs	r0, #2
1a000c2e:	f7ff feb7 	bl	1a0009a0 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_2_GPIO, LED_2_BIT, false);
1a000c32:	2300      	movs	r3, #0
1a000c34:	220b      	movs	r2, #11
1a000c36:	2101      	movs	r1, #1
1a000c38:	4823      	ldr	r0, [pc, #140]	@ (1a000cc8 <BoardSetup+0x134>)
1a000c3a:	f7ff fef5 	bl	1a000a28 <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_2_GPIO, LED_2_BIT, true);
1a000c3e:	2301      	movs	r3, #1
1a000c40:	220b      	movs	r2, #11
1a000c42:	2101      	movs	r1, #1
1a000c44:	4820      	ldr	r0, [pc, #128]	@ (1a000cc8 <BoardSetup+0x134>)
1a000c46:	f7ff ff4a 	bl	1a000ade <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(LED_3_PORT, LED_3_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_3_FUNC);
1a000c4a:	2250      	movs	r2, #80	@ 0x50
1a000c4c:	210c      	movs	r1, #12
1a000c4e:	2002      	movs	r0, #2
1a000c50:	f7ff fea6 	bl	1a0009a0 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_3_GPIO, LED_3_BIT, false);
1a000c54:	2300      	movs	r3, #0
1a000c56:	220c      	movs	r2, #12
1a000c58:	2101      	movs	r1, #1
1a000c5a:	481b      	ldr	r0, [pc, #108]	@ (1a000cc8 <BoardSetup+0x134>)
1a000c5c:	f7ff fee4 	bl	1a000a28 <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_3_GPIO, LED_3_BIT, true);
1a000c60:	2301      	movs	r3, #1
1a000c62:	220c      	movs	r2, #12
1a000c64:	2101      	movs	r1, #1
1a000c66:	4818      	ldr	r0, [pc, #96]	@ (1a000cc8 <BoardSetup+0x134>)
1a000c68:	f7ff ff39 	bl	1a000ade <Chip_GPIO_SetPinDIR>

    /******************/
    Chip_SCU_PinMuxSet(TEC_1_PORT, TEC_1_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_1_FUNC);
1a000c6c:	2240      	movs	r2, #64	@ 0x40
1a000c6e:	2100      	movs	r1, #0
1a000c70:	2001      	movs	r0, #1
1a000c72:	f7ff fe95 	bl	1a0009a0 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_1_GPIO, TEC_1_BIT, false);
1a000c76:	2300      	movs	r3, #0
1a000c78:	2204      	movs	r2, #4
1a000c7a:	2100      	movs	r1, #0
1a000c7c:	4812      	ldr	r0, [pc, #72]	@ (1a000cc8 <BoardSetup+0x134>)
1a000c7e:	f7ff ff2e 	bl	1a000ade <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(TEC_2_PORT, TEC_2_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_2_FUNC);
1a000c82:	2240      	movs	r2, #64	@ 0x40
1a000c84:	2101      	movs	r1, #1
1a000c86:	2001      	movs	r0, #1
1a000c88:	f7ff fe8a 	bl	1a0009a0 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_2_GPIO, TEC_2_BIT, false);
1a000c8c:	2300      	movs	r3, #0
1a000c8e:	2208      	movs	r2, #8
1a000c90:	2100      	movs	r1, #0
1a000c92:	480d      	ldr	r0, [pc, #52]	@ (1a000cc8 <BoardSetup+0x134>)
1a000c94:	f7ff ff23 	bl	1a000ade <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(TEC_3_PORT, TEC_3_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_3_FUNC);
1a000c98:	2240      	movs	r2, #64	@ 0x40
1a000c9a:	2102      	movs	r1, #2
1a000c9c:	2001      	movs	r0, #1
1a000c9e:	f7ff fe7f 	bl	1a0009a0 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_3_GPIO, TEC_3_BIT, false);
1a000ca2:	2300      	movs	r3, #0
1a000ca4:	2209      	movs	r2, #9
1a000ca6:	2100      	movs	r1, #0
1a000ca8:	4807      	ldr	r0, [pc, #28]	@ (1a000cc8 <BoardSetup+0x134>)
1a000caa:	f7ff ff18 	bl	1a000ade <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(TEC_4_PORT, TEC_4_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_4_FUNC);
1a000cae:	2240      	movs	r2, #64	@ 0x40
1a000cb0:	2106      	movs	r1, #6
1a000cb2:	2001      	movs	r0, #1
1a000cb4:	f7ff fe74 	bl	1a0009a0 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_4_GPIO, TEC_4_BIT, false);
1a000cb8:	2300      	movs	r3, #0
1a000cba:	2209      	movs	r2, #9
1a000cbc:	2101      	movs	r1, #1
1a000cbe:	4802      	ldr	r0, [pc, #8]	@ (1a000cc8 <BoardSetup+0x134>)
1a000cc0:	f7ff ff0d 	bl	1a000ade <Chip_GPIO_SetPinDIR>
    the program does not execute when the board is not in debugging
    */
#if (ENABLE_ARM_SEMIHOSTING)
    initialise_monitor_handles();
#endif
}
1a000cc4:	bf00      	nop
1a000cc6:	bd80      	pop	{r7, pc}
1a000cc8:	400f4000 	.word	0x400f4000

1a000ccc <SystemCoreClockUpdate>:


/* Update system core clock rate, should be called if the system has
   a clock rate change */
void SystemCoreClockUpdate(void)
{
1a000ccc:	b580      	push	{r7, lr}
1a000cce:	af00      	add	r7, sp, #0
	/* CPU core speed */
	SystemCoreClock = Chip_Clock_GetRate(CLK_MX_MXCORE);
1a000cd0:	2069      	movs	r0, #105	@ 0x69
1a000cd2:	f000 fc37 	bl	1a001544 <Chip_Clock_GetRate>
1a000cd6:	4603      	mov	r3, r0
1a000cd8:	4a01      	ldr	r2, [pc, #4]	@ (1a000ce0 <SystemCoreClockUpdate+0x14>)
1a000cda:	6013      	str	r3, [r2, #0]
}
1a000cdc:	bf00      	nop
1a000cde:	bd80      	pop	{r7, pc}
1a000ce0:	10000080 	.word	0x10000080

1a000ce4 <ABS>:

/*****************************************************************************
 * Private functions
 ****************************************************************************/
__STATIC_INLINE uint32_t ABS(int val)
{
1a000ce4:	b480      	push	{r7}
1a000ce6:	b083      	sub	sp, #12
1a000ce8:	af00      	add	r7, sp, #0
1a000cea:	6078      	str	r0, [r7, #4]
	if (val < 0)
1a000cec:	687b      	ldr	r3, [r7, #4]
1a000cee:	2b00      	cmp	r3, #0
1a000cf0:	da02      	bge.n	1a000cf8 <ABS+0x14>
		return -val;
1a000cf2:	687b      	ldr	r3, [r7, #4]
1a000cf4:	425b      	negs	r3, r3
1a000cf6:	e000      	b.n	1a000cfa <ABS+0x16>
	return val;
1a000cf8:	687b      	ldr	r3, [r7, #4]
}
1a000cfa:	4618      	mov	r0, r3
1a000cfc:	370c      	adds	r7, #12
1a000cfe:	46bd      	mov	sp, r7
1a000d00:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d04:	4770      	bx	lr
	...

1a000d08 <pll_calc_divs>:

static void pll_calc_divs(uint32_t freq, PLL_PARAM_T *ppll)
{
1a000d08:	b580      	push	{r7, lr}
1a000d0a:	b088      	sub	sp, #32
1a000d0c:	af00      	add	r7, sp, #0
1a000d0e:	6078      	str	r0, [r7, #4]
1a000d10:	6039      	str	r1, [r7, #0]

	uint32_t prev = freq;
1a000d12:	687b      	ldr	r3, [r7, #4]
1a000d14:	61fb      	str	r3, [r7, #28]
	int n, m, p;

	/* When direct mode is set FBSEL should be a don't care */
	if (ppll->ctrl & (1 << 7)) {
1a000d16:	683b      	ldr	r3, [r7, #0]
1a000d18:	681b      	ldr	r3, [r3, #0]
1a000d1a:	f003 0380 	and.w	r3, r3, #128	@ 0x80
1a000d1e:	2b00      	cmp	r3, #0
1a000d20:	d005      	beq.n	1a000d2e <pll_calc_divs+0x26>
		ppll->ctrl &= ~(1 << 6);
1a000d22:	683b      	ldr	r3, [r7, #0]
1a000d24:	681b      	ldr	r3, [r3, #0]
1a000d26:	f023 0240 	bic.w	r2, r3, #64	@ 0x40
1a000d2a:	683b      	ldr	r3, [r7, #0]
1a000d2c:	601a      	str	r2, [r3, #0]
	}
	for (n = 1; n <= 4; n++) {
1a000d2e:	2301      	movs	r3, #1
1a000d30:	61bb      	str	r3, [r7, #24]
1a000d32:	e06f      	b.n	1a000e14 <pll_calc_divs+0x10c>
		for (p = 0; p < 4; p ++) {
1a000d34:	2300      	movs	r3, #0
1a000d36:	613b      	str	r3, [r7, #16]
1a000d38:	e066      	b.n	1a000e08 <pll_calc_divs+0x100>
			for (m = 1; m <= 256; m++) {
1a000d3a:	2301      	movs	r3, #1
1a000d3c:	617b      	str	r3, [r7, #20]
1a000d3e:	e05a      	b.n	1a000df6 <pll_calc_divs+0xee>
				uint32_t fcco, fout;
				if (ppll->ctrl & (1 << 6)) {
1a000d40:	683b      	ldr	r3, [r7, #0]
1a000d42:	681b      	ldr	r3, [r3, #0]
1a000d44:	f003 0340 	and.w	r3, r3, #64	@ 0x40
1a000d48:	2b00      	cmp	r3, #0
1a000d4a:	d00e      	beq.n	1a000d6a <pll_calc_divs+0x62>
					fcco = ((m << (p + 1)) * ppll->fin) / n;
1a000d4c:	693b      	ldr	r3, [r7, #16]
1a000d4e:	3301      	adds	r3, #1
1a000d50:	697a      	ldr	r2, [r7, #20]
1a000d52:	fa02 f303 	lsl.w	r3, r2, r3
1a000d56:	461a      	mov	r2, r3
1a000d58:	683b      	ldr	r3, [r7, #0]
1a000d5a:	695b      	ldr	r3, [r3, #20]
1a000d5c:	fb03 f202 	mul.w	r2, r3, r2
1a000d60:	69bb      	ldr	r3, [r7, #24]
1a000d62:	fbb2 f3f3 	udiv	r3, r2, r3
1a000d66:	60fb      	str	r3, [r7, #12]
1a000d68:	e008      	b.n	1a000d7c <pll_calc_divs+0x74>
				} else {
					fcco = (m * ppll->fin) / n;
1a000d6a:	683b      	ldr	r3, [r7, #0]
1a000d6c:	695b      	ldr	r3, [r3, #20]
1a000d6e:	697a      	ldr	r2, [r7, #20]
1a000d70:	fb03 f202 	mul.w	r2, r3, r2
1a000d74:	69bb      	ldr	r3, [r7, #24]
1a000d76:	fbb2 f3f3 	udiv	r3, r2, r3
1a000d7a:	60fb      	str	r3, [r7, #12]
				}
				if (fcco < PLL_MIN_CCO_FREQ) continue;
1a000d7c:	68fb      	ldr	r3, [r7, #12]
1a000d7e:	4a29      	ldr	r2, [pc, #164]	@ (1a000e24 <pll_calc_divs+0x11c>)
1a000d80:	4293      	cmp	r3, r2
1a000d82:	d934      	bls.n	1a000dee <pll_calc_divs+0xe6>
				if (fcco > PLL_MAX_CCO_FREQ) break;
1a000d84:	68fb      	ldr	r3, [r7, #12]
1a000d86:	4a28      	ldr	r2, [pc, #160]	@ (1a000e28 <pll_calc_divs+0x120>)
1a000d88:	4293      	cmp	r3, r2
1a000d8a:	d839      	bhi.n	1a000e00 <pll_calc_divs+0xf8>
				if (ppll->ctrl & (1 << 7)) {
1a000d8c:	683b      	ldr	r3, [r7, #0]
1a000d8e:	681b      	ldr	r3, [r3, #0]
1a000d90:	f003 0380 	and.w	r3, r3, #128	@ 0x80
1a000d94:	2b00      	cmp	r3, #0
1a000d96:	d002      	beq.n	1a000d9e <pll_calc_divs+0x96>
					fout = fcco;
1a000d98:	68fb      	ldr	r3, [r7, #12]
1a000d9a:	60bb      	str	r3, [r7, #8]
1a000d9c:	e005      	b.n	1a000daa <pll_calc_divs+0xa2>
				} else {
					fout = fcco >> (p + 1);
1a000d9e:	693b      	ldr	r3, [r7, #16]
1a000da0:	3301      	adds	r3, #1
1a000da2:	68fa      	ldr	r2, [r7, #12]
1a000da4:	fa22 f303 	lsr.w	r3, r2, r3
1a000da8:	60bb      	str	r3, [r7, #8]
				}

				if (ABS(freq - fout) < prev) {
1a000daa:	687a      	ldr	r2, [r7, #4]
1a000dac:	68bb      	ldr	r3, [r7, #8]
1a000dae:	1ad3      	subs	r3, r2, r3
1a000db0:	4618      	mov	r0, r3
1a000db2:	f7ff ff97 	bl	1a000ce4 <ABS>
1a000db6:	4602      	mov	r2, r0
1a000db8:	69fb      	ldr	r3, [r7, #28]
1a000dba:	4293      	cmp	r3, r2
1a000dbc:	d918      	bls.n	1a000df0 <pll_calc_divs+0xe8>
					ppll->nsel = n;
1a000dbe:	683b      	ldr	r3, [r7, #0]
1a000dc0:	69ba      	ldr	r2, [r7, #24]
1a000dc2:	609a      	str	r2, [r3, #8]
					ppll->psel = p + 1;
1a000dc4:	693b      	ldr	r3, [r7, #16]
1a000dc6:	1c5a      	adds	r2, r3, #1
1a000dc8:	683b      	ldr	r3, [r7, #0]
1a000dca:	60da      	str	r2, [r3, #12]
					ppll->msel = m;
1a000dcc:	683b      	ldr	r3, [r7, #0]
1a000dce:	697a      	ldr	r2, [r7, #20]
1a000dd0:	611a      	str	r2, [r3, #16]
					ppll->fout = fout;
1a000dd2:	683b      	ldr	r3, [r7, #0]
1a000dd4:	68ba      	ldr	r2, [r7, #8]
1a000dd6:	619a      	str	r2, [r3, #24]
					ppll->fcco = fcco;
1a000dd8:	683b      	ldr	r3, [r7, #0]
1a000dda:	68fa      	ldr	r2, [r7, #12]
1a000ddc:	61da      	str	r2, [r3, #28]
					prev = ABS(freq - fout);
1a000dde:	687a      	ldr	r2, [r7, #4]
1a000de0:	68bb      	ldr	r3, [r7, #8]
1a000de2:	1ad3      	subs	r3, r2, r3
1a000de4:	4618      	mov	r0, r3
1a000de6:	f7ff ff7d 	bl	1a000ce4 <ABS>
1a000dea:	61f8      	str	r0, [r7, #28]
1a000dec:	e000      	b.n	1a000df0 <pll_calc_divs+0xe8>
				if (fcco < PLL_MIN_CCO_FREQ) continue;
1a000dee:	bf00      	nop
			for (m = 1; m <= 256; m++) {
1a000df0:	697b      	ldr	r3, [r7, #20]
1a000df2:	3301      	adds	r3, #1
1a000df4:	617b      	str	r3, [r7, #20]
1a000df6:	697b      	ldr	r3, [r7, #20]
1a000df8:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
1a000dfc:	dda0      	ble.n	1a000d40 <pll_calc_divs+0x38>
1a000dfe:	e000      	b.n	1a000e02 <pll_calc_divs+0xfa>
				if (fcco > PLL_MAX_CCO_FREQ) break;
1a000e00:	bf00      	nop
		for (p = 0; p < 4; p ++) {
1a000e02:	693b      	ldr	r3, [r7, #16]
1a000e04:	3301      	adds	r3, #1
1a000e06:	613b      	str	r3, [r7, #16]
1a000e08:	693b      	ldr	r3, [r7, #16]
1a000e0a:	2b03      	cmp	r3, #3
1a000e0c:	dd95      	ble.n	1a000d3a <pll_calc_divs+0x32>
	for (n = 1; n <= 4; n++) {
1a000e0e:	69bb      	ldr	r3, [r7, #24]
1a000e10:	3301      	adds	r3, #1
1a000e12:	61bb      	str	r3, [r7, #24]
1a000e14:	69bb      	ldr	r3, [r7, #24]
1a000e16:	2b04      	cmp	r3, #4
1a000e18:	dd8c      	ble.n	1a000d34 <pll_calc_divs+0x2c>
				}
			}
		}
	}
}
1a000e1a:	bf00      	nop
1a000e1c:	bf00      	nop
1a000e1e:	3720      	adds	r7, #32
1a000e20:	46bd      	mov	sp, r7
1a000e22:	bd80      	pop	{r7, pc}
1a000e24:	094c5eff 	.word	0x094c5eff
1a000e28:	1312d000 	.word	0x1312d000

1a000e2c <pll_get_frac>:

static void pll_get_frac(uint32_t freq, PLL_PARAM_T *ppll)
{
1a000e2c:	b5b0      	push	{r4, r5, r7, lr}
1a000e2e:	b09e      	sub	sp, #120	@ 0x78
1a000e30:	af00      	add	r7, sp, #0
1a000e32:	6078      	str	r0, [r7, #4]
1a000e34:	6039      	str	r1, [r7, #0]
	int diff[3];
	PLL_PARAM_T pll[3] = {{0},{0},{0}};
1a000e36:	f107 030c 	add.w	r3, r7, #12
1a000e3a:	2260      	movs	r2, #96	@ 0x60
1a000e3c:	2100      	movs	r1, #0
1a000e3e:	4618      	mov	r0, r3
1a000e40:	f000 fd6e 	bl	1a001920 <memset>

	/* Try direct mode */
	pll[0].ctrl |= (1 << 7);
1a000e44:	68fb      	ldr	r3, [r7, #12]
1a000e46:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
1a000e4a:	60fb      	str	r3, [r7, #12]
	pll[0].fin = ppll->fin;
1a000e4c:	683b      	ldr	r3, [r7, #0]
1a000e4e:	695b      	ldr	r3, [r3, #20]
1a000e50:	623b      	str	r3, [r7, #32]
	pll[0].srcin = ppll->srcin;
1a000e52:	683b      	ldr	r3, [r7, #0]
1a000e54:	791b      	ldrb	r3, [r3, #4]
1a000e56:	743b      	strb	r3, [r7, #16]
	pll_calc_divs(freq, &pll[0]);
1a000e58:	f107 030c 	add.w	r3, r7, #12
1a000e5c:	4619      	mov	r1, r3
1a000e5e:	6878      	ldr	r0, [r7, #4]
1a000e60:	f7ff ff52 	bl	1a000d08 <pll_calc_divs>
	if (pll[0].fout == freq) {
1a000e64:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
1a000e66:	687a      	ldr	r2, [r7, #4]
1a000e68:	429a      	cmp	r2, r3
1a000e6a:	d10a      	bne.n	1a000e82 <pll_get_frac+0x56>
		*ppll = pll[0];
1a000e6c:	683b      	ldr	r3, [r7, #0]
1a000e6e:	461d      	mov	r5, r3
1a000e70:	f107 040c 	add.w	r4, r7, #12
1a000e74:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a000e76:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a000e78:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a000e7c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
		return ;
1a000e80:	e08e      	b.n	1a000fa0 <pll_get_frac+0x174>
	}
	diff[0] = ABS(freq - pll[0].fout);
1a000e82:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
1a000e84:	687a      	ldr	r2, [r7, #4]
1a000e86:	1ad3      	subs	r3, r2, r3
1a000e88:	4618      	mov	r0, r3
1a000e8a:	f7ff ff2b 	bl	1a000ce4 <ABS>
1a000e8e:	4603      	mov	r3, r0
1a000e90:	66fb      	str	r3, [r7, #108]	@ 0x6c

	/* Try non-Integer mode */
	pll[2].ctrl &= ~(1 << 6);			// need to set FBSEL to 0
1a000e92:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
1a000e94:	f023 0340 	bic.w	r3, r3, #64	@ 0x40
1a000e98:	64fb      	str	r3, [r7, #76]	@ 0x4c
	pll[2].fin = ppll->fin;
1a000e9a:	683b      	ldr	r3, [r7, #0]
1a000e9c:	695b      	ldr	r3, [r3, #20]
1a000e9e:	663b      	str	r3, [r7, #96]	@ 0x60
	pll[2].srcin = ppll->srcin;
1a000ea0:	683b      	ldr	r3, [r7, #0]
1a000ea2:	791b      	ldrb	r3, [r3, #4]
1a000ea4:	f887 3050 	strb.w	r3, [r7, #80]	@ 0x50
	pll_calc_divs(freq, &pll[2]);
1a000ea8:	f107 030c 	add.w	r3, r7, #12
1a000eac:	3340      	adds	r3, #64	@ 0x40
1a000eae:	4619      	mov	r1, r3
1a000eb0:	6878      	ldr	r0, [r7, #4]
1a000eb2:	f7ff ff29 	bl	1a000d08 <pll_calc_divs>
	if (pll[2].fout == freq) {
1a000eb6:	6e7b      	ldr	r3, [r7, #100]	@ 0x64
1a000eb8:	687a      	ldr	r2, [r7, #4]
1a000eba:	429a      	cmp	r2, r3
1a000ebc:	d10a      	bne.n	1a000ed4 <pll_get_frac+0xa8>
		*ppll = pll[2];
1a000ebe:	683b      	ldr	r3, [r7, #0]
1a000ec0:	461d      	mov	r5, r3
1a000ec2:	f107 044c 	add.w	r4, r7, #76	@ 0x4c
1a000ec6:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a000ec8:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a000eca:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a000ece:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
		return ;
1a000ed2:	e065      	b.n	1a000fa0 <pll_get_frac+0x174>
	}
	diff[2] = ABS(freq - pll[2].fout);
1a000ed4:	6e7b      	ldr	r3, [r7, #100]	@ 0x64
1a000ed6:	687a      	ldr	r2, [r7, #4]
1a000ed8:	1ad3      	subs	r3, r2, r3
1a000eda:	4618      	mov	r0, r3
1a000edc:	f7ff ff02 	bl	1a000ce4 <ABS>
1a000ee0:	4603      	mov	r3, r0
1a000ee2:	677b      	str	r3, [r7, #116]	@ 0x74

	if (freq <= 110000000) {
1a000ee4:	687b      	ldr	r3, [r7, #4]
1a000ee6:	4a30      	ldr	r2, [pc, #192]	@ (1a000fa8 <pll_get_frac+0x17c>)
1a000ee8:	4293      	cmp	r3, r2
1a000eea:	d81a      	bhi.n	1a000f22 <pll_get_frac+0xf6>
		/* Try integer mode */
		pll[1].ctrl = (1 << 6);
1a000eec:	2340      	movs	r3, #64	@ 0x40
1a000eee:	62fb      	str	r3, [r7, #44]	@ 0x2c
		pll[1].fin = ppll->fin;
1a000ef0:	683b      	ldr	r3, [r7, #0]
1a000ef2:	695b      	ldr	r3, [r3, #20]
1a000ef4:	643b      	str	r3, [r7, #64]	@ 0x40
		pll_calc_divs(freq, &pll[1]);
1a000ef6:	f107 030c 	add.w	r3, r7, #12
1a000efa:	3320      	adds	r3, #32
1a000efc:	4619      	mov	r1, r3
1a000efe:	6878      	ldr	r0, [r7, #4]
1a000f00:	f7ff ff02 	bl	1a000d08 <pll_calc_divs>
		if (pll[1].fout == freq) {
1a000f04:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
1a000f06:	687a      	ldr	r2, [r7, #4]
1a000f08:	429a      	cmp	r2, r3
1a000f0a:	d10a      	bne.n	1a000f22 <pll_get_frac+0xf6>
			*ppll = pll[1];
1a000f0c:	683b      	ldr	r3, [r7, #0]
1a000f0e:	461d      	mov	r5, r3
1a000f10:	f107 042c 	add.w	r4, r7, #44	@ 0x2c
1a000f14:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a000f16:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a000f18:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a000f1c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
			return ;
1a000f20:	e03e      	b.n	1a000fa0 <pll_get_frac+0x174>
		}
	}
	diff[1] = ABS(freq - pll[1].fout);
1a000f22:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
1a000f24:	687a      	ldr	r2, [r7, #4]
1a000f26:	1ad3      	subs	r3, r2, r3
1a000f28:	4618      	mov	r0, r3
1a000f2a:	f7ff fedb 	bl	1a000ce4 <ABS>
1a000f2e:	4603      	mov	r3, r0
1a000f30:	673b      	str	r3, [r7, #112]	@ 0x70

	/* Find the min of 3 and return */
	if (diff[0] <= diff[1]) {
1a000f32:	6efa      	ldr	r2, [r7, #108]	@ 0x6c
1a000f34:	6f3b      	ldr	r3, [r7, #112]	@ 0x70
1a000f36:	429a      	cmp	r2, r3
1a000f38:	dc19      	bgt.n	1a000f6e <pll_get_frac+0x142>
		if (diff[0] <= diff[2]) {
1a000f3a:	6efa      	ldr	r2, [r7, #108]	@ 0x6c
1a000f3c:	6f7b      	ldr	r3, [r7, #116]	@ 0x74
1a000f3e:	429a      	cmp	r2, r3
1a000f40:	dc0a      	bgt.n	1a000f58 <pll_get_frac+0x12c>
			*ppll = pll[0];
1a000f42:	683b      	ldr	r3, [r7, #0]
1a000f44:	461d      	mov	r5, r3
1a000f46:	f107 040c 	add.w	r4, r7, #12
1a000f4a:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a000f4c:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a000f4e:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a000f52:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a000f56:	e023      	b.n	1a000fa0 <pll_get_frac+0x174>
		} else {
			*ppll = pll[2];
1a000f58:	683b      	ldr	r3, [r7, #0]
1a000f5a:	461d      	mov	r5, r3
1a000f5c:	f107 044c 	add.w	r4, r7, #76	@ 0x4c
1a000f60:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a000f62:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a000f64:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a000f68:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a000f6c:	e018      	b.n	1a000fa0 <pll_get_frac+0x174>
		}
	} else {
		if (diff[1] <= diff[2]) {
1a000f6e:	6f3a      	ldr	r2, [r7, #112]	@ 0x70
1a000f70:	6f7b      	ldr	r3, [r7, #116]	@ 0x74
1a000f72:	429a      	cmp	r2, r3
1a000f74:	dc0a      	bgt.n	1a000f8c <pll_get_frac+0x160>
			*ppll = pll[1];
1a000f76:	683b      	ldr	r3, [r7, #0]
1a000f78:	461d      	mov	r5, r3
1a000f7a:	f107 042c 	add.w	r4, r7, #44	@ 0x2c
1a000f7e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a000f80:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a000f82:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a000f86:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a000f8a:	e009      	b.n	1a000fa0 <pll_get_frac+0x174>
		} else {
			*ppll = pll[2];
1a000f8c:	683b      	ldr	r3, [r7, #0]
1a000f8e:	461d      	mov	r5, r3
1a000f90:	f107 044c 	add.w	r4, r7, #76	@ 0x4c
1a000f94:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a000f96:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a000f98:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a000f9c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
		}
	}
}
1a000fa0:	3778      	adds	r7, #120	@ 0x78
1a000fa2:	46bd      	mov	sp, r7
1a000fa4:	bdb0      	pop	{r4, r5, r7, pc}
1a000fa6:	bf00      	nop
1a000fa8:	068e7780 	.word	0x068e7780

1a000fac <Chip_Clock_GetDivRate>:
	return TestHz;
}

/* Returns clock rate out of a divider */
static uint32_t Chip_Clock_GetDivRate(CHIP_CGU_CLKIN_T clock, CHIP_CGU_IDIV_T divider)
{
1a000fac:	b580      	push	{r7, lr}
1a000fae:	b084      	sub	sp, #16
1a000fb0:	af00      	add	r7, sp, #0
1a000fb2:	4603      	mov	r3, r0
1a000fb4:	460a      	mov	r2, r1
1a000fb6:	71fb      	strb	r3, [r7, #7]
1a000fb8:	4613      	mov	r3, r2
1a000fba:	71bb      	strb	r3, [r7, #6]
	CHIP_CGU_CLKIN_T input;
	uint32_t div;

	input = Chip_Clock_GetDividerSource(divider);
1a000fbc:	79bb      	ldrb	r3, [r7, #6]
1a000fbe:	4618      	mov	r0, r3
1a000fc0:	f000 f95e 	bl	1a001280 <Chip_Clock_GetDividerSource>
1a000fc4:	4603      	mov	r3, r0
1a000fc6:	73fb      	strb	r3, [r7, #15]
	div = Chip_Clock_GetDividerDivisor(divider);
1a000fc8:	79bb      	ldrb	r3, [r7, #6]
1a000fca:	4618      	mov	r0, r3
1a000fcc:	f000 f978 	bl	1a0012c0 <Chip_Clock_GetDividerDivisor>
1a000fd0:	60b8      	str	r0, [r7, #8]
	return Chip_Clock_GetClockInputHz(input) / (div + 1);
1a000fd2:	7bfb      	ldrb	r3, [r7, #15]
1a000fd4:	4618      	mov	r0, r3
1a000fd6:	f000 f98f 	bl	1a0012f8 <Chip_Clock_GetClockInputHz>
1a000fda:	4602      	mov	r2, r0
1a000fdc:	68bb      	ldr	r3, [r7, #8]
1a000fde:	3301      	adds	r3, #1
1a000fe0:	fbb2 f3f3 	udiv	r3, r2, r3
}
1a000fe4:	4618      	mov	r0, r3
1a000fe6:	3710      	adds	r7, #16
1a000fe8:	46bd      	mov	sp, r7
1a000fea:	bd80      	pop	{r7, pc}

1a000fec <Chip_Clock_FindBaseClock>:

/* Finds the base clock for the peripheral clock */
static CHIP_CGU_BASE_CLK_T Chip_Clock_FindBaseClock(CHIP_CCU_CLK_T clk)
{
1a000fec:	b480      	push	{r7}
1a000fee:	b085      	sub	sp, #20
1a000ff0:	af00      	add	r7, sp, #0
1a000ff2:	4603      	mov	r3, r0
1a000ff4:	80fb      	strh	r3, [r7, #6]
	CHIP_CGU_BASE_CLK_T baseclk = CLK_BASE_NONE;
1a000ff6:	231c      	movs	r3, #28
1a000ff8:	73fb      	strb	r3, [r7, #15]
	int i = 0;
1a000ffa:	2300      	movs	r3, #0
1a000ffc:	60bb      	str	r3, [r7, #8]

	while ((baseclk == CLK_BASE_NONE) && (periph_to_base[i].clkbase != baseclk)) {
1a000ffe:	e024      	b.n	1a00104a <Chip_Clock_FindBaseClock+0x5e>
		if ((clk >= periph_to_base[i].clkstart) && (clk <= periph_to_base[i].clkend)) {
1a001000:	491d      	ldr	r1, [pc, #116]	@ (1a001078 <Chip_Clock_FindBaseClock+0x8c>)
1a001002:	68ba      	ldr	r2, [r7, #8]
1a001004:	4613      	mov	r3, r2
1a001006:	005b      	lsls	r3, r3, #1
1a001008:	4413      	add	r3, r2
1a00100a:	005b      	lsls	r3, r3, #1
1a00100c:	440b      	add	r3, r1
1a00100e:	881b      	ldrh	r3, [r3, #0]
1a001010:	88fa      	ldrh	r2, [r7, #6]
1a001012:	429a      	cmp	r2, r3
1a001014:	d316      	bcc.n	1a001044 <Chip_Clock_FindBaseClock+0x58>
1a001016:	4918      	ldr	r1, [pc, #96]	@ (1a001078 <Chip_Clock_FindBaseClock+0x8c>)
1a001018:	68ba      	ldr	r2, [r7, #8]
1a00101a:	4613      	mov	r3, r2
1a00101c:	005b      	lsls	r3, r3, #1
1a00101e:	4413      	add	r3, r2
1a001020:	005b      	lsls	r3, r3, #1
1a001022:	440b      	add	r3, r1
1a001024:	3302      	adds	r3, #2
1a001026:	881b      	ldrh	r3, [r3, #0]
1a001028:	88fa      	ldrh	r2, [r7, #6]
1a00102a:	429a      	cmp	r2, r3
1a00102c:	d80a      	bhi.n	1a001044 <Chip_Clock_FindBaseClock+0x58>
			baseclk = periph_to_base[i].clkbase;
1a00102e:	4912      	ldr	r1, [pc, #72]	@ (1a001078 <Chip_Clock_FindBaseClock+0x8c>)
1a001030:	68ba      	ldr	r2, [r7, #8]
1a001032:	4613      	mov	r3, r2
1a001034:	005b      	lsls	r3, r3, #1
1a001036:	4413      	add	r3, r2
1a001038:	005b      	lsls	r3, r3, #1
1a00103a:	440b      	add	r3, r1
1a00103c:	3304      	adds	r3, #4
1a00103e:	781b      	ldrb	r3, [r3, #0]
1a001040:	73fb      	strb	r3, [r7, #15]
1a001042:	e002      	b.n	1a00104a <Chip_Clock_FindBaseClock+0x5e>
		}
		else {
			i++;
1a001044:	68bb      	ldr	r3, [r7, #8]
1a001046:	3301      	adds	r3, #1
1a001048:	60bb      	str	r3, [r7, #8]
	while ((baseclk == CLK_BASE_NONE) && (periph_to_base[i].clkbase != baseclk)) {
1a00104a:	7bfb      	ldrb	r3, [r7, #15]
1a00104c:	2b1c      	cmp	r3, #28
1a00104e:	d10b      	bne.n	1a001068 <Chip_Clock_FindBaseClock+0x7c>
1a001050:	4909      	ldr	r1, [pc, #36]	@ (1a001078 <Chip_Clock_FindBaseClock+0x8c>)
1a001052:	68ba      	ldr	r2, [r7, #8]
1a001054:	4613      	mov	r3, r2
1a001056:	005b      	lsls	r3, r3, #1
1a001058:	4413      	add	r3, r2
1a00105a:	005b      	lsls	r3, r3, #1
1a00105c:	440b      	add	r3, r1
1a00105e:	3304      	adds	r3, #4
1a001060:	781b      	ldrb	r3, [r3, #0]
1a001062:	7bfa      	ldrb	r2, [r7, #15]
1a001064:	429a      	cmp	r2, r3
1a001066:	d1cb      	bne.n	1a001000 <Chip_Clock_FindBaseClock+0x14>
		}
	}

	return baseclk;
1a001068:	7bfb      	ldrb	r3, [r7, #15]
}
1a00106a:	4618      	mov	r0, r3
1a00106c:	3714      	adds	r7, #20
1a00106e:	46bd      	mov	sp, r7
1a001070:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001074:	4770      	bx	lr
1a001076:	bf00      	nop
1a001078:	1a001af4 	.word	0x1a001af4

1a00107c <Chip_Clock_EnableCrystal>:
 * Public functions
 ****************************************************************************/

/* Enables the crystal oscillator */
void Chip_Clock_EnableCrystal(void)
{
1a00107c:	b480      	push	{r7}
1a00107e:	b083      	sub	sp, #12
1a001080:	af00      	add	r7, sp, #0
	volatile uint32_t delay = 1000;
1a001082:	f44f 737a 	mov.w	r3, #1000	@ 0x3e8
1a001086:	603b      	str	r3, [r7, #0]

	uint32_t OldCrystalConfig = LPC_CGU->XTAL_OSC_CTRL;
1a001088:	4b15      	ldr	r3, [pc, #84]	@ (1a0010e0 <Chip_Clock_EnableCrystal+0x64>)
1a00108a:	699b      	ldr	r3, [r3, #24]
1a00108c:	607b      	str	r3, [r7, #4]

	/* Clear bypass mode */
	OldCrystalConfig &= (~2);
1a00108e:	687b      	ldr	r3, [r7, #4]
1a001090:	f023 0302 	bic.w	r3, r3, #2
1a001094:	607b      	str	r3, [r7, #4]
	if (OldCrystalConfig != LPC_CGU->XTAL_OSC_CTRL) {
1a001096:	4b12      	ldr	r3, [pc, #72]	@ (1a0010e0 <Chip_Clock_EnableCrystal+0x64>)
1a001098:	699b      	ldr	r3, [r3, #24]
1a00109a:	687a      	ldr	r2, [r7, #4]
1a00109c:	429a      	cmp	r2, r3
1a00109e:	d002      	beq.n	1a0010a6 <Chip_Clock_EnableCrystal+0x2a>
		LPC_CGU->XTAL_OSC_CTRL = OldCrystalConfig;
1a0010a0:	4a0f      	ldr	r2, [pc, #60]	@ (1a0010e0 <Chip_Clock_EnableCrystal+0x64>)
1a0010a2:	687b      	ldr	r3, [r7, #4]
1a0010a4:	6193      	str	r3, [r2, #24]
	}

	/* Enable crystal oscillator */
	OldCrystalConfig &= (~1);
1a0010a6:	687b      	ldr	r3, [r7, #4]
1a0010a8:	f023 0301 	bic.w	r3, r3, #1
1a0010ac:	607b      	str	r3, [r7, #4]
	if (OscRateIn >= 20000000) {
1a0010ae:	4b0d      	ldr	r3, [pc, #52]	@ (1a0010e4 <Chip_Clock_EnableCrystal+0x68>)
1a0010b0:	681b      	ldr	r3, [r3, #0]
1a0010b2:	4a0d      	ldr	r2, [pc, #52]	@ (1a0010e8 <Chip_Clock_EnableCrystal+0x6c>)
1a0010b4:	4293      	cmp	r3, r2
1a0010b6:	d903      	bls.n	1a0010c0 <Chip_Clock_EnableCrystal+0x44>
		OldCrystalConfig |= 4;	/* Set high frequency mode */
1a0010b8:	687b      	ldr	r3, [r7, #4]
1a0010ba:	f043 0304 	orr.w	r3, r3, #4
1a0010be:	607b      	str	r3, [r7, #4]

	}
	LPC_CGU->XTAL_OSC_CTRL = OldCrystalConfig;
1a0010c0:	4a07      	ldr	r2, [pc, #28]	@ (1a0010e0 <Chip_Clock_EnableCrystal+0x64>)
1a0010c2:	687b      	ldr	r3, [r7, #4]
1a0010c4:	6193      	str	r3, [r2, #24]

	/* Delay for 250uSec */
	while(delay--) {}
1a0010c6:	bf00      	nop
1a0010c8:	683b      	ldr	r3, [r7, #0]
1a0010ca:	1e5a      	subs	r2, r3, #1
1a0010cc:	603a      	str	r2, [r7, #0]
1a0010ce:	2b00      	cmp	r3, #0
1a0010d0:	d1fa      	bne.n	1a0010c8 <Chip_Clock_EnableCrystal+0x4c>
}
1a0010d2:	bf00      	nop
1a0010d4:	bf00      	nop
1a0010d6:	370c      	adds	r7, #12
1a0010d8:	46bd      	mov	sp, r7
1a0010da:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010de:	4770      	bx	lr
1a0010e0:	40050000 	.word	0x40050000
1a0010e4:	1a001af0 	.word	0x1a001af0
1a0010e8:	01312cff 	.word	0x01312cff

1a0010ec <Chip_Clock_CalcMainPLLValue>:

/* Calculate the Main PLL div values */
int Chip_Clock_CalcMainPLLValue(uint32_t freq, PLL_PARAM_T *ppll)
{
1a0010ec:	b580      	push	{r7, lr}
1a0010ee:	b082      	sub	sp, #8
1a0010f0:	af00      	add	r7, sp, #0
1a0010f2:	6078      	str	r0, [r7, #4]
1a0010f4:	6039      	str	r1, [r7, #0]
	ppll->fin = Chip_Clock_GetClockInputHz(ppll->srcin);
1a0010f6:	683b      	ldr	r3, [r7, #0]
1a0010f8:	791b      	ldrb	r3, [r3, #4]
1a0010fa:	4618      	mov	r0, r3
1a0010fc:	f000 f8fc 	bl	1a0012f8 <Chip_Clock_GetClockInputHz>
1a001100:	4602      	mov	r2, r0
1a001102:	683b      	ldr	r3, [r7, #0]
1a001104:	615a      	str	r2, [r3, #20]

	/* Do sanity check on frequency */
	if (freq > MAX_CLOCK_FREQ || freq < (PLL_MIN_CCO_FREQ / 16) || !ppll->fin) {
1a001106:	687b      	ldr	r3, [r7, #4]
1a001108:	4a2b      	ldr	r2, [pc, #172]	@ (1a0011b8 <Chip_Clock_CalcMainPLLValue+0xcc>)
1a00110a:	4293      	cmp	r3, r2
1a00110c:	d807      	bhi.n	1a00111e <Chip_Clock_CalcMainPLLValue+0x32>
1a00110e:	687b      	ldr	r3, [r7, #4]
1a001110:	4a2a      	ldr	r2, [pc, #168]	@ (1a0011bc <Chip_Clock_CalcMainPLLValue+0xd0>)
1a001112:	4293      	cmp	r3, r2
1a001114:	d903      	bls.n	1a00111e <Chip_Clock_CalcMainPLLValue+0x32>
1a001116:	683b      	ldr	r3, [r7, #0]
1a001118:	695b      	ldr	r3, [r3, #20]
1a00111a:	2b00      	cmp	r3, #0
1a00111c:	d102      	bne.n	1a001124 <Chip_Clock_CalcMainPLLValue+0x38>
		return -1;
1a00111e:	f04f 33ff 	mov.w	r3, #4294967295
1a001122:	e044      	b.n	1a0011ae <Chip_Clock_CalcMainPLLValue+0xc2>
	}

	ppll->ctrl = 1 << 7; /* Enable direct mode [If possible] */
1a001124:	683b      	ldr	r3, [r7, #0]
1a001126:	2280      	movs	r2, #128	@ 0x80
1a001128:	601a      	str	r2, [r3, #0]
	ppll->nsel = 0;
1a00112a:	683b      	ldr	r3, [r7, #0]
1a00112c:	2200      	movs	r2, #0
1a00112e:	609a      	str	r2, [r3, #8]
	ppll->psel = 0;
1a001130:	683b      	ldr	r3, [r7, #0]
1a001132:	2200      	movs	r2, #0
1a001134:	60da      	str	r2, [r3, #12]
	ppll->msel = freq / ppll->fin;
1a001136:	683b      	ldr	r3, [r7, #0]
1a001138:	695b      	ldr	r3, [r3, #20]
1a00113a:	687a      	ldr	r2, [r7, #4]
1a00113c:	fbb2 f3f3 	udiv	r3, r2, r3
1a001140:	461a      	mov	r2, r3
1a001142:	683b      	ldr	r3, [r7, #0]
1a001144:	611a      	str	r2, [r3, #16]

	if (freq < PLL_MIN_CCO_FREQ || ppll->msel * ppll->fin != freq) {
1a001146:	687b      	ldr	r3, [r7, #4]
1a001148:	4a1d      	ldr	r2, [pc, #116]	@ (1a0011c0 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a00114a:	4293      	cmp	r3, r2
1a00114c:	d909      	bls.n	1a001162 <Chip_Clock_CalcMainPLLValue+0x76>
1a00114e:	683b      	ldr	r3, [r7, #0]
1a001150:	691b      	ldr	r3, [r3, #16]
1a001152:	461a      	mov	r2, r3
1a001154:	683b      	ldr	r3, [r7, #0]
1a001156:	695b      	ldr	r3, [r3, #20]
1a001158:	fb02 f303 	mul.w	r3, r2, r3
1a00115c:	687a      	ldr	r2, [r7, #4]
1a00115e:	429a      	cmp	r2, r3
1a001160:	d00f      	beq.n	1a001182 <Chip_Clock_CalcMainPLLValue+0x96>
		pll_get_frac(freq, ppll);
1a001162:	6839      	ldr	r1, [r7, #0]
1a001164:	6878      	ldr	r0, [r7, #4]
1a001166:	f7ff fe61 	bl	1a000e2c <pll_get_frac>
		if (!ppll->nsel) {
1a00116a:	683b      	ldr	r3, [r7, #0]
1a00116c:	689b      	ldr	r3, [r3, #8]
1a00116e:	2b00      	cmp	r3, #0
1a001170:	d102      	bne.n	1a001178 <Chip_Clock_CalcMainPLLValue+0x8c>
			return -1;
1a001172:	f04f 33ff 	mov.w	r3, #4294967295
1a001176:	e01a      	b.n	1a0011ae <Chip_Clock_CalcMainPLLValue+0xc2>
		}
		ppll->nsel --;
1a001178:	683b      	ldr	r3, [r7, #0]
1a00117a:	689b      	ldr	r3, [r3, #8]
1a00117c:	1e5a      	subs	r2, r3, #1
1a00117e:	683b      	ldr	r3, [r7, #0]
1a001180:	609a      	str	r2, [r3, #8]
	}

	if (ppll->msel == 0) {
1a001182:	683b      	ldr	r3, [r7, #0]
1a001184:	691b      	ldr	r3, [r3, #16]
1a001186:	2b00      	cmp	r3, #0
1a001188:	d102      	bne.n	1a001190 <Chip_Clock_CalcMainPLLValue+0xa4>
		return - 1;
1a00118a:	f04f 33ff 	mov.w	r3, #4294967295
1a00118e:	e00e      	b.n	1a0011ae <Chip_Clock_CalcMainPLLValue+0xc2>
	}

	if (ppll->psel) {
1a001190:	683b      	ldr	r3, [r7, #0]
1a001192:	68db      	ldr	r3, [r3, #12]
1a001194:	2b00      	cmp	r3, #0
1a001196:	d004      	beq.n	1a0011a2 <Chip_Clock_CalcMainPLLValue+0xb6>
		ppll->psel --;
1a001198:	683b      	ldr	r3, [r7, #0]
1a00119a:	68db      	ldr	r3, [r3, #12]
1a00119c:	1e5a      	subs	r2, r3, #1
1a00119e:	683b      	ldr	r3, [r7, #0]
1a0011a0:	60da      	str	r2, [r3, #12]
	}

	ppll->msel --;
1a0011a2:	683b      	ldr	r3, [r7, #0]
1a0011a4:	691b      	ldr	r3, [r3, #16]
1a0011a6:	1e5a      	subs	r2, r3, #1
1a0011a8:	683b      	ldr	r3, [r7, #0]
1a0011aa:	611a      	str	r2, [r3, #16]

	return 0;
1a0011ac:	2300      	movs	r3, #0
}
1a0011ae:	4618      	mov	r0, r3
1a0011b0:	3708      	adds	r7, #8
1a0011b2:	46bd      	mov	sp, r7
1a0011b4:	bd80      	pop	{r7, pc}
1a0011b6:	bf00      	nop
1a0011b8:	0c28cb00 	.word	0x0c28cb00
1a0011bc:	0094c5ef 	.word	0x0094c5ef
1a0011c0:	094c5eff 	.word	0x094c5eff

1a0011c4 <Chip_Clock_GetMainPLLHz>:
	return freq;
}

/* Returns the frequency of the main PLL */
uint32_t Chip_Clock_GetMainPLLHz(void)
{
1a0011c4:	b580      	push	{r7, lr}
1a0011c6:	b08c      	sub	sp, #48	@ 0x30
1a0011c8:	af00      	add	r7, sp, #0
	uint32_t PLLReg = LPC_CGU->PLL1_CTRL;
1a0011ca:	4b2b      	ldr	r3, [pc, #172]	@ (1a001278 <Chip_Clock_GetMainPLLHz+0xb4>)
1a0011cc:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
1a0011ce:	62fb      	str	r3, [r7, #44]	@ 0x2c
	uint32_t freq = Chip_Clock_GetClockInputHz((CHIP_CGU_CLKIN_T) ((PLLReg >> 24) & 0xF));
1a0011d0:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a0011d2:	0e1b      	lsrs	r3, r3, #24
1a0011d4:	b2db      	uxtb	r3, r3
1a0011d6:	f003 030f 	and.w	r3, r3, #15
1a0011da:	b2db      	uxtb	r3, r3
1a0011dc:	4618      	mov	r0, r3
1a0011de:	f000 f88b 	bl	1a0012f8 <Chip_Clock_GetClockInputHz>
1a0011e2:	62b8      	str	r0, [r7, #40]	@ 0x28
	uint32_t msel, nsel, psel, direct, fbsel;
	uint32_t m, n, p;
	const uint8_t ptab[] = {1, 2, 4, 8};
1a0011e4:	4b25      	ldr	r3, [pc, #148]	@ (1a00127c <Chip_Clock_GetMainPLLHz+0xb8>)
1a0011e6:	607b      	str	r3, [r7, #4]

	/* No lock? */
	if (!(LPC_CGU->PLL1_STAT & 1)) {
1a0011e8:	4b23      	ldr	r3, [pc, #140]	@ (1a001278 <Chip_Clock_GetMainPLLHz+0xb4>)
1a0011ea:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
1a0011ec:	f003 0301 	and.w	r3, r3, #1
1a0011f0:	2b00      	cmp	r3, #0
1a0011f2:	d101      	bne.n	1a0011f8 <Chip_Clock_GetMainPLLHz+0x34>
		return 0;
1a0011f4:	2300      	movs	r3, #0
1a0011f6:	e03b      	b.n	1a001270 <Chip_Clock_GetMainPLLHz+0xac>
	}

	msel = (PLLReg >> 16) & 0xFF;
1a0011f8:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a0011fa:	0c1b      	lsrs	r3, r3, #16
1a0011fc:	b2db      	uxtb	r3, r3
1a0011fe:	627b      	str	r3, [r7, #36]	@ 0x24
	nsel = (PLLReg >> 12) & 0x3;
1a001200:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a001202:	0b1b      	lsrs	r3, r3, #12
1a001204:	f003 0303 	and.w	r3, r3, #3
1a001208:	623b      	str	r3, [r7, #32]
	psel = (PLLReg >> 8) & 0x3;
1a00120a:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a00120c:	0a1b      	lsrs	r3, r3, #8
1a00120e:	f003 0303 	and.w	r3, r3, #3
1a001212:	61fb      	str	r3, [r7, #28]
	direct = (PLLReg >> 7) & 0x1;
1a001214:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a001216:	09db      	lsrs	r3, r3, #7
1a001218:	f003 0301 	and.w	r3, r3, #1
1a00121c:	61bb      	str	r3, [r7, #24]
	fbsel = (PLLReg >> 6) & 0x1;
1a00121e:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a001220:	099b      	lsrs	r3, r3, #6
1a001222:	f003 0301 	and.w	r3, r3, #1
1a001226:	617b      	str	r3, [r7, #20]

	m = msel + 1;
1a001228:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
1a00122a:	3301      	adds	r3, #1
1a00122c:	613b      	str	r3, [r7, #16]
	n = nsel + 1;
1a00122e:	6a3b      	ldr	r3, [r7, #32]
1a001230:	3301      	adds	r3, #1
1a001232:	60fb      	str	r3, [r7, #12]
	p = ptab[psel];
1a001234:	1d3a      	adds	r2, r7, #4
1a001236:	69fb      	ldr	r3, [r7, #28]
1a001238:	4413      	add	r3, r2
1a00123a:	781b      	ldrb	r3, [r3, #0]
1a00123c:	60bb      	str	r3, [r7, #8]

	if (direct || fbsel) {
1a00123e:	69bb      	ldr	r3, [r7, #24]
1a001240:	2b00      	cmp	r3, #0
1a001242:	d102      	bne.n	1a00124a <Chip_Clock_GetMainPLLHz+0x86>
1a001244:	697b      	ldr	r3, [r7, #20]
1a001246:	2b00      	cmp	r3, #0
1a001248:	d007      	beq.n	1a00125a <Chip_Clock_GetMainPLLHz+0x96>
		return m * (freq / n);
1a00124a:	6aba      	ldr	r2, [r7, #40]	@ 0x28
1a00124c:	68fb      	ldr	r3, [r7, #12]
1a00124e:	fbb2 f3f3 	udiv	r3, r2, r3
1a001252:	693a      	ldr	r2, [r7, #16]
1a001254:	fb02 f303 	mul.w	r3, r2, r3
1a001258:	e00a      	b.n	1a001270 <Chip_Clock_GetMainPLLHz+0xac>
	}

	return (m / (2 * p)) * (freq / n);
1a00125a:	68bb      	ldr	r3, [r7, #8]
1a00125c:	005b      	lsls	r3, r3, #1
1a00125e:	693a      	ldr	r2, [r7, #16]
1a001260:	fbb2 f3f3 	udiv	r3, r2, r3
1a001264:	6ab9      	ldr	r1, [r7, #40]	@ 0x28
1a001266:	68fa      	ldr	r2, [r7, #12]
1a001268:	fbb1 f2f2 	udiv	r2, r1, r2
1a00126c:	fb02 f303 	mul.w	r3, r2, r3
}
1a001270:	4618      	mov	r0, r3
1a001272:	3730      	adds	r7, #48	@ 0x30
1a001274:	46bd      	mov	sp, r7
1a001276:	bd80      	pop	{r7, pc}
1a001278:	40050000 	.word	0x40050000
1a00127c:	08040201 	.word	0x08040201

1a001280 <Chip_Clock_GetDividerSource>:
	}
}

/* Gets a CGU clock divider source */
CHIP_CGU_CLKIN_T Chip_Clock_GetDividerSource(CHIP_CGU_IDIV_T Divider)
{
1a001280:	b480      	push	{r7}
1a001282:	b085      	sub	sp, #20
1a001284:	af00      	add	r7, sp, #0
1a001286:	4603      	mov	r3, r0
1a001288:	71fb      	strb	r3, [r7, #7]
	uint32_t reg = LPC_CGU->IDIV_CTRL[Divider];
1a00128a:	4a0c      	ldr	r2, [pc, #48]	@ (1a0012bc <Chip_Clock_GetDividerSource+0x3c>)
1a00128c:	79fb      	ldrb	r3, [r7, #7]
1a00128e:	3312      	adds	r3, #18
1a001290:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001294:	60fb      	str	r3, [r7, #12]

	if (reg & 1) {	/* divider is powered down */
1a001296:	68fb      	ldr	r3, [r7, #12]
1a001298:	f003 0301 	and.w	r3, r3, #1
1a00129c:	2b00      	cmp	r3, #0
1a00129e:	d001      	beq.n	1a0012a4 <Chip_Clock_GetDividerSource+0x24>
		return CLKINPUT_PD;
1a0012a0:	2311      	movs	r3, #17
1a0012a2:	e005      	b.n	1a0012b0 <Chip_Clock_GetDividerSource+0x30>
	}

	return (CHIP_CGU_CLKIN_T) ((reg >> 24) & 0x1F);
1a0012a4:	68fb      	ldr	r3, [r7, #12]
1a0012a6:	0e1b      	lsrs	r3, r3, #24
1a0012a8:	b2db      	uxtb	r3, r3
1a0012aa:	f003 031f 	and.w	r3, r3, #31
1a0012ae:	b2db      	uxtb	r3, r3
}
1a0012b0:	4618      	mov	r0, r3
1a0012b2:	3714      	adds	r7, #20
1a0012b4:	46bd      	mov	sp, r7
1a0012b6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012ba:	4770      	bx	lr
1a0012bc:	40050000 	.word	0x40050000

1a0012c0 <Chip_Clock_GetDividerDivisor>:

/* Gets a CGU clock divider divisor */
uint32_t Chip_Clock_GetDividerDivisor(CHIP_CGU_IDIV_T Divider)
{
1a0012c0:	b480      	push	{r7}
1a0012c2:	b083      	sub	sp, #12
1a0012c4:	af00      	add	r7, sp, #0
1a0012c6:	4603      	mov	r3, r0
1a0012c8:	71fb      	strb	r3, [r7, #7]
	return (CHIP_CGU_CLKIN_T) ((LPC_CGU->IDIV_CTRL[Divider] >> 2) & CHIP_CGU_IDIV_MASK(Divider));
1a0012ca:	4a09      	ldr	r2, [pc, #36]	@ (1a0012f0 <Chip_Clock_GetDividerDivisor+0x30>)
1a0012cc:	79fb      	ldrb	r3, [r7, #7]
1a0012ce:	3312      	adds	r3, #18
1a0012d0:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a0012d4:	089b      	lsrs	r3, r3, #2
1a0012d6:	b2da      	uxtb	r2, r3
1a0012d8:	79fb      	ldrb	r3, [r7, #7]
1a0012da:	4906      	ldr	r1, [pc, #24]	@ (1a0012f4 <Chip_Clock_GetDividerDivisor+0x34>)
1a0012dc:	5ccb      	ldrb	r3, [r1, r3]
1a0012de:	4013      	ands	r3, r2
1a0012e0:	b2db      	uxtb	r3, r3
}
1a0012e2:	4618      	mov	r0, r3
1a0012e4:	370c      	adds	r7, #12
1a0012e6:	46bd      	mov	sp, r7
1a0012e8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012ec:	4770      	bx	lr
1a0012ee:	bf00      	nop
1a0012f0:	40050000 	.word	0x40050000
1a0012f4:	1a001b60 	.word	0x1a001b60

1a0012f8 <Chip_Clock_GetClockInputHz>:

/* Returns the frequency of the specified input clock source */
uint32_t Chip_Clock_GetClockInputHz(CHIP_CGU_CLKIN_T input)
{
1a0012f8:	b580      	push	{r7, lr}
1a0012fa:	b084      	sub	sp, #16
1a0012fc:	af00      	add	r7, sp, #0
1a0012fe:	4603      	mov	r3, r0
1a001300:	71fb      	strb	r3, [r7, #7]
	uint32_t rate = 0;
1a001302:	2300      	movs	r3, #0
1a001304:	60fb      	str	r3, [r7, #12]

	switch (input) {
1a001306:	79fb      	ldrb	r3, [r7, #7]
1a001308:	2b11      	cmp	r3, #17
1a00130a:	d87f      	bhi.n	1a00140c <Chip_Clock_GetClockInputHz+0x114>
1a00130c:	a201      	add	r2, pc, #4	@ (adr r2, 1a001314 <Chip_Clock_GetClockInputHz+0x1c>)
1a00130e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a001312:	bf00      	nop
1a001314:	1a00135d 	.word	0x1a00135d
1a001318:	1a001365 	.word	0x1a001365
1a00131c:	1a00136b 	.word	0x1a00136b
1a001320:	1a00137f 	.word	0x1a00137f
1a001324:	1a001399 	.word	0x1a001399
1a001328:	1a00140d 	.word	0x1a00140d
1a00132c:	1a0013a1 	.word	0x1a0013a1
1a001330:	1a0013a9 	.word	0x1a0013a9
1a001334:	1a0013b1 	.word	0x1a0013b1
1a001338:	1a0013b9 	.word	0x1a0013b9
1a00133c:	1a00140d 	.word	0x1a00140d
1a001340:	1a00140d 	.word	0x1a00140d
1a001344:	1a0013c1 	.word	0x1a0013c1
1a001348:	1a0013cf 	.word	0x1a0013cf
1a00134c:	1a0013dd 	.word	0x1a0013dd
1a001350:	1a0013eb 	.word	0x1a0013eb
1a001354:	1a0013f9 	.word	0x1a0013f9
1a001358:	1a001407 	.word	0x1a001407
	case CLKIN_32K:
		rate = CRYSTAL_32K_FREQ_IN;
1a00135c:	f44f 4300 	mov.w	r3, #32768	@ 0x8000
1a001360:	60fb      	str	r3, [r7, #12]
		break;
1a001362:	e056      	b.n	1a001412 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_IRC:
		rate = CGU_IRC_FREQ;
1a001364:	4b2d      	ldr	r3, [pc, #180]	@ (1a00141c <Chip_Clock_GetClockInputHz+0x124>)
1a001366:	60fb      	str	r3, [r7, #12]
		break;
1a001368:	e053      	b.n	1a001412 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_ENET_RX:
		if ((LPC_CREG->CREG6 & 0x07) != 0x4) {
1a00136a:	4b2d      	ldr	r3, [pc, #180]	@ (1a001420 <Chip_Clock_GetClockInputHz+0x128>)
1a00136c:	f8d3 312c 	ldr.w	r3, [r3, #300]	@ 0x12c
1a001370:	f003 0307 	and.w	r3, r3, #7
1a001374:	2b04      	cmp	r3, #4
1a001376:	d04b      	beq.n	1a001410 <Chip_Clock_GetClockInputHz+0x118>
			/* MII mode requires 25MHz clock */
			rate = 25000000;
1a001378:	4b2a      	ldr	r3, [pc, #168]	@ (1a001424 <Chip_Clock_GetClockInputHz+0x12c>)
1a00137a:	60fb      	str	r3, [r7, #12]
		}
		break;
1a00137c:	e048      	b.n	1a001410 <Chip_Clock_GetClockInputHz+0x118>

	case CLKIN_ENET_TX:
		if ((LPC_CREG->CREG6 & 0x07) != 0x4) {
1a00137e:	4b28      	ldr	r3, [pc, #160]	@ (1a001420 <Chip_Clock_GetClockInputHz+0x128>)
1a001380:	f8d3 312c 	ldr.w	r3, [r3, #300]	@ 0x12c
1a001384:	f003 0307 	and.w	r3, r3, #7
1a001388:	2b04      	cmp	r3, #4
1a00138a:	d002      	beq.n	1a001392 <Chip_Clock_GetClockInputHz+0x9a>
			rate = 25000000; /* MII uses 25 MHz */
1a00138c:	4b25      	ldr	r3, [pc, #148]	@ (1a001424 <Chip_Clock_GetClockInputHz+0x12c>)
1a00138e:	60fb      	str	r3, [r7, #12]
		} else {
			rate = 50000000; /* RMII uses 50 MHz */
		}
		break;
1a001390:	e03f      	b.n	1a001412 <Chip_Clock_GetClockInputHz+0x11a>
			rate = 50000000; /* RMII uses 50 MHz */
1a001392:	4b25      	ldr	r3, [pc, #148]	@ (1a001428 <Chip_Clock_GetClockInputHz+0x130>)
1a001394:	60fb      	str	r3, [r7, #12]
		break;
1a001396:	e03c      	b.n	1a001412 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_CLKIN:
		rate = ExtRateIn;
1a001398:	4b24      	ldr	r3, [pc, #144]	@ (1a00142c <Chip_Clock_GetClockInputHz+0x134>)
1a00139a:	681b      	ldr	r3, [r3, #0]
1a00139c:	60fb      	str	r3, [r7, #12]
		break;
1a00139e:	e038      	b.n	1a001412 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_CRYSTAL:
		rate = OscRateIn;
1a0013a0:	4b23      	ldr	r3, [pc, #140]	@ (1a001430 <Chip_Clock_GetClockInputHz+0x138>)
1a0013a2:	681b      	ldr	r3, [r3, #0]
1a0013a4:	60fb      	str	r3, [r7, #12]
		break;
1a0013a6:	e034      	b.n	1a001412 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_USBPLL:
		rate = audio_usb_pll_freq[CGU_USB_PLL];
1a0013a8:	4b22      	ldr	r3, [pc, #136]	@ (1a001434 <Chip_Clock_GetClockInputHz+0x13c>)
1a0013aa:	681b      	ldr	r3, [r3, #0]
1a0013ac:	60fb      	str	r3, [r7, #12]
		break;
1a0013ae:	e030      	b.n	1a001412 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_AUDIOPLL:
		rate = audio_usb_pll_freq[CGU_AUDIO_PLL];
1a0013b0:	4b20      	ldr	r3, [pc, #128]	@ (1a001434 <Chip_Clock_GetClockInputHz+0x13c>)
1a0013b2:	685b      	ldr	r3, [r3, #4]
1a0013b4:	60fb      	str	r3, [r7, #12]
		break;
1a0013b6:	e02c      	b.n	1a001412 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_MAINPLL:
		rate = Chip_Clock_GetMainPLLHz();
1a0013b8:	f7ff ff04 	bl	1a0011c4 <Chip_Clock_GetMainPLLHz>
1a0013bc:	60f8      	str	r0, [r7, #12]
		break;
1a0013be:	e028      	b.n	1a001412 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_IDIVA:
		rate = Chip_Clock_GetDivRate(input, CLK_IDIV_A);
1a0013c0:	79fb      	ldrb	r3, [r7, #7]
1a0013c2:	2100      	movs	r1, #0
1a0013c4:	4618      	mov	r0, r3
1a0013c6:	f7ff fdf1 	bl	1a000fac <Chip_Clock_GetDivRate>
1a0013ca:	60f8      	str	r0, [r7, #12]
		break;
1a0013cc:	e021      	b.n	1a001412 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_IDIVB:
		rate = Chip_Clock_GetDivRate(input, CLK_IDIV_B);
1a0013ce:	79fb      	ldrb	r3, [r7, #7]
1a0013d0:	2101      	movs	r1, #1
1a0013d2:	4618      	mov	r0, r3
1a0013d4:	f7ff fdea 	bl	1a000fac <Chip_Clock_GetDivRate>
1a0013d8:	60f8      	str	r0, [r7, #12]
		break;
1a0013da:	e01a      	b.n	1a001412 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_IDIVC:
		rate = Chip_Clock_GetDivRate(input, CLK_IDIV_C);
1a0013dc:	79fb      	ldrb	r3, [r7, #7]
1a0013de:	2102      	movs	r1, #2
1a0013e0:	4618      	mov	r0, r3
1a0013e2:	f7ff fde3 	bl	1a000fac <Chip_Clock_GetDivRate>
1a0013e6:	60f8      	str	r0, [r7, #12]
		break;
1a0013e8:	e013      	b.n	1a001412 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_IDIVD:
		rate = Chip_Clock_GetDivRate(input, CLK_IDIV_D);
1a0013ea:	79fb      	ldrb	r3, [r7, #7]
1a0013ec:	2103      	movs	r1, #3
1a0013ee:	4618      	mov	r0, r3
1a0013f0:	f7ff fddc 	bl	1a000fac <Chip_Clock_GetDivRate>
1a0013f4:	60f8      	str	r0, [r7, #12]
		break;
1a0013f6:	e00c      	b.n	1a001412 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_IDIVE:
		rate = Chip_Clock_GetDivRate(input, CLK_IDIV_E);
1a0013f8:	79fb      	ldrb	r3, [r7, #7]
1a0013fa:	2104      	movs	r1, #4
1a0013fc:	4618      	mov	r0, r3
1a0013fe:	f7ff fdd5 	bl	1a000fac <Chip_Clock_GetDivRate>
1a001402:	60f8      	str	r0, [r7, #12]
		break;
1a001404:	e005      	b.n	1a001412 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKINPUT_PD:
		rate = 0;
1a001406:	2300      	movs	r3, #0
1a001408:	60fb      	str	r3, [r7, #12]
		break;
1a00140a:	e002      	b.n	1a001412 <Chip_Clock_GetClockInputHz+0x11a>

	default:
		break;
1a00140c:	bf00      	nop
1a00140e:	e000      	b.n	1a001412 <Chip_Clock_GetClockInputHz+0x11a>
		break;
1a001410:	bf00      	nop
	}

	return rate;
1a001412:	68fb      	ldr	r3, [r7, #12]
}
1a001414:	4618      	mov	r0, r3
1a001416:	3710      	adds	r7, #16
1a001418:	46bd      	mov	sp, r7
1a00141a:	bd80      	pop	{r7, pc}
1a00141c:	00b71b00 	.word	0x00b71b00
1a001420:	40043000 	.word	0x40043000
1a001424:	017d7840 	.word	0x017d7840
1a001428:	02faf080 	.word	0x02faf080
1a00142c:	1a001aec 	.word	0x1a001aec
1a001430:	1a001af0 	.word	0x1a001af0
1a001434:	10000084 	.word	0x10000084

1a001438 <Chip_Clock_GetBaseClocktHz>:

/* Returns the frequency of the specified base clock source */
uint32_t Chip_Clock_GetBaseClocktHz(CHIP_CGU_BASE_CLK_T clock)
{
1a001438:	b580      	push	{r7, lr}
1a00143a:	b082      	sub	sp, #8
1a00143c:	af00      	add	r7, sp, #0
1a00143e:	4603      	mov	r3, r0
1a001440:	71fb      	strb	r3, [r7, #7]
	return Chip_Clock_GetClockInputHz(Chip_Clock_GetBaseClock(clock));
1a001442:	79fb      	ldrb	r3, [r7, #7]
1a001444:	4618      	mov	r0, r3
1a001446:	f000 f857 	bl	1a0014f8 <Chip_Clock_GetBaseClock>
1a00144a:	4603      	mov	r3, r0
1a00144c:	4618      	mov	r0, r3
1a00144e:	f7ff ff53 	bl	1a0012f8 <Chip_Clock_GetClockInputHz>
1a001452:	4603      	mov	r3, r0
}
1a001454:	4618      	mov	r0, r3
1a001456:	3708      	adds	r7, #8
1a001458:	46bd      	mov	sp, r7
1a00145a:	bd80      	pop	{r7, pc}

1a00145c <Chip_Clock_SetBaseClock>:

/* Sets a CGU Base Clock clock source */
void Chip_Clock_SetBaseClock(CHIP_CGU_BASE_CLK_T BaseClock, CHIP_CGU_CLKIN_T Input, bool autoblocken, bool powerdn)
{
1a00145c:	b490      	push	{r4, r7}
1a00145e:	b084      	sub	sp, #16
1a001460:	af00      	add	r7, sp, #0
1a001462:	4604      	mov	r4, r0
1a001464:	4608      	mov	r0, r1
1a001466:	4611      	mov	r1, r2
1a001468:	461a      	mov	r2, r3
1a00146a:	4623      	mov	r3, r4
1a00146c:	71fb      	strb	r3, [r7, #7]
1a00146e:	4603      	mov	r3, r0
1a001470:	71bb      	strb	r3, [r7, #6]
1a001472:	460b      	mov	r3, r1
1a001474:	717b      	strb	r3, [r7, #5]
1a001476:	4613      	mov	r3, r2
1a001478:	713b      	strb	r3, [r7, #4]
	uint32_t reg = LPC_CGU->BASE_CLK[BaseClock];
1a00147a:	4a1d      	ldr	r2, [pc, #116]	@ (1a0014f0 <Chip_Clock_SetBaseClock+0x94>)
1a00147c:	79fb      	ldrb	r3, [r7, #7]
1a00147e:	3316      	adds	r3, #22
1a001480:	009b      	lsls	r3, r3, #2
1a001482:	4413      	add	r3, r2
1a001484:	685b      	ldr	r3, [r3, #4]
1a001486:	60fb      	str	r3, [r7, #12]

	if (BaseClock < CLK_BASE_NONE) {
1a001488:	79fb      	ldrb	r3, [r7, #7]
1a00148a:	2b1b      	cmp	r3, #27
1a00148c:	d821      	bhi.n	1a0014d2 <Chip_Clock_SetBaseClock+0x76>
		if (Input != CLKINPUT_PD) {
1a00148e:	79bb      	ldrb	r3, [r7, #6]
1a001490:	2b11      	cmp	r3, #17
1a001492:	d027      	beq.n	1a0014e4 <Chip_Clock_SetBaseClock+0x88>
			/* Mask off fields we plan to update */
			reg &= ~((0x1F << 24) | 1 | (1 << 11));
1a001494:	68fa      	ldr	r2, [r7, #12]
1a001496:	4b17      	ldr	r3, [pc, #92]	@ (1a0014f4 <Chip_Clock_SetBaseClock+0x98>)
1a001498:	4013      	ands	r3, r2
1a00149a:	60fb      	str	r3, [r7, #12]

			if (autoblocken) {
1a00149c:	797b      	ldrb	r3, [r7, #5]
1a00149e:	2b00      	cmp	r3, #0
1a0014a0:	d003      	beq.n	1a0014aa <Chip_Clock_SetBaseClock+0x4e>
				reg |= (1 << 11);
1a0014a2:	68fb      	ldr	r3, [r7, #12]
1a0014a4:	f443 6300 	orr.w	r3, r3, #2048	@ 0x800
1a0014a8:	60fb      	str	r3, [r7, #12]
			}
			if (powerdn) {
1a0014aa:	793b      	ldrb	r3, [r7, #4]
1a0014ac:	2b00      	cmp	r3, #0
1a0014ae:	d003      	beq.n	1a0014b8 <Chip_Clock_SetBaseClock+0x5c>
				reg |= (1 << 0);
1a0014b0:	68fb      	ldr	r3, [r7, #12]
1a0014b2:	f043 0301 	orr.w	r3, r3, #1
1a0014b6:	60fb      	str	r3, [r7, #12]
			}

			/* Set clock source */
			reg |= (Input << 24);
1a0014b8:	79bb      	ldrb	r3, [r7, #6]
1a0014ba:	061b      	lsls	r3, r3, #24
1a0014bc:	68fa      	ldr	r2, [r7, #12]
1a0014be:	4313      	orrs	r3, r2
1a0014c0:	60fb      	str	r3, [r7, #12]

			LPC_CGU->BASE_CLK[BaseClock] = reg;
1a0014c2:	4a0b      	ldr	r2, [pc, #44]	@ (1a0014f0 <Chip_Clock_SetBaseClock+0x94>)
1a0014c4:	79fb      	ldrb	r3, [r7, #7]
1a0014c6:	3316      	adds	r3, #22
1a0014c8:	009b      	lsls	r3, r3, #2
1a0014ca:	4413      	add	r3, r2
1a0014cc:	68fa      	ldr	r2, [r7, #12]
1a0014ce:	605a      	str	r2, [r3, #4]
		}
	}
	else {
		LPC_CGU->BASE_CLK[BaseClock] = reg | 1;	/* Power down this base clock */
	}
}
1a0014d0:	e008      	b.n	1a0014e4 <Chip_Clock_SetBaseClock+0x88>
		LPC_CGU->BASE_CLK[BaseClock] = reg | 1;	/* Power down this base clock */
1a0014d2:	4907      	ldr	r1, [pc, #28]	@ (1a0014f0 <Chip_Clock_SetBaseClock+0x94>)
1a0014d4:	79fb      	ldrb	r3, [r7, #7]
1a0014d6:	68fa      	ldr	r2, [r7, #12]
1a0014d8:	f042 0201 	orr.w	r2, r2, #1
1a0014dc:	3316      	adds	r3, #22
1a0014de:	009b      	lsls	r3, r3, #2
1a0014e0:	440b      	add	r3, r1
1a0014e2:	605a      	str	r2, [r3, #4]
}
1a0014e4:	bf00      	nop
1a0014e6:	3710      	adds	r7, #16
1a0014e8:	46bd      	mov	sp, r7
1a0014ea:	bc90      	pop	{r4, r7}
1a0014ec:	4770      	bx	lr
1a0014ee:	bf00      	nop
1a0014f0:	40050000 	.word	0x40050000
1a0014f4:	e0fff7fe 	.word	0xe0fff7fe

1a0014f8 <Chip_Clock_GetBaseClock>:
	return enabled;
}

/* Gets a CGU Base Clock clock source */
CHIP_CGU_CLKIN_T Chip_Clock_GetBaseClock(CHIP_CGU_BASE_CLK_T BaseClock)
{
1a0014f8:	b480      	push	{r7}
1a0014fa:	b085      	sub	sp, #20
1a0014fc:	af00      	add	r7, sp, #0
1a0014fe:	4603      	mov	r3, r0
1a001500:	71fb      	strb	r3, [r7, #7]
	uint32_t reg;

	if (BaseClock >= CLK_BASE_NONE) {
1a001502:	79fb      	ldrb	r3, [r7, #7]
1a001504:	2b1b      	cmp	r3, #27
1a001506:	d901      	bls.n	1a00150c <Chip_Clock_GetBaseClock+0x14>
		return CLKINPUT_PD;
1a001508:	2311      	movs	r3, #17
1a00150a:	e013      	b.n	1a001534 <Chip_Clock_GetBaseClock+0x3c>
	}

	reg = LPC_CGU->BASE_CLK[BaseClock];
1a00150c:	4a0c      	ldr	r2, [pc, #48]	@ (1a001540 <Chip_Clock_GetBaseClock+0x48>)
1a00150e:	79fb      	ldrb	r3, [r7, #7]
1a001510:	3316      	adds	r3, #22
1a001512:	009b      	lsls	r3, r3, #2
1a001514:	4413      	add	r3, r2
1a001516:	685b      	ldr	r3, [r3, #4]
1a001518:	60fb      	str	r3, [r7, #12]

	/* base clock is powered down? */
	if (reg & 1) {
1a00151a:	68fb      	ldr	r3, [r7, #12]
1a00151c:	f003 0301 	and.w	r3, r3, #1
1a001520:	2b00      	cmp	r3, #0
1a001522:	d001      	beq.n	1a001528 <Chip_Clock_GetBaseClock+0x30>
		return CLKINPUT_PD;
1a001524:	2311      	movs	r3, #17
1a001526:	e005      	b.n	1a001534 <Chip_Clock_GetBaseClock+0x3c>
	}

	return (CHIP_CGU_CLKIN_T) ((reg >> 24) & 0x1F);
1a001528:	68fb      	ldr	r3, [r7, #12]
1a00152a:	0e1b      	lsrs	r3, r3, #24
1a00152c:	b2db      	uxtb	r3, r3
1a00152e:	f003 031f 	and.w	r3, r3, #31
1a001532:	b2db      	uxtb	r3, r3
}
1a001534:	4618      	mov	r0, r3
1a001536:	3714      	adds	r7, #20
1a001538:	46bd      	mov	sp, r7
1a00153a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00153e:	4770      	bx	lr
1a001540:	40050000 	.word	0x40050000

1a001544 <Chip_Clock_GetRate>:
	LPC_CCU2->PM = 0;
}

/* Returns a peripheral clock rate */
uint32_t Chip_Clock_GetRate(CHIP_CCU_CLK_T clk)
{
1a001544:	b580      	push	{r7, lr}
1a001546:	b086      	sub	sp, #24
1a001548:	af00      	add	r7, sp, #0
1a00154a:	4603      	mov	r3, r0
1a00154c:	80fb      	strh	r3, [r7, #6]
	CHIP_CGU_BASE_CLK_T baseclk;
	uint32_t reg, div, rate;

	/* Get CCU config register for clock */
	if (clk >= CLK_CCU2_START) {
1a00154e:	88fb      	ldrh	r3, [r7, #6]
1a001550:	f5b3 7fa1 	cmp.w	r3, #322	@ 0x142
1a001554:	d308      	bcc.n	1a001568 <Chip_Clock_GetRate+0x24>
		reg = LPC_CCU2->CLKCCU[clk - CLK_CCU2_START].CFG;
1a001556:	4a1b      	ldr	r2, [pc, #108]	@ (1a0015c4 <Chip_Clock_GetRate+0x80>)
1a001558:	88fb      	ldrh	r3, [r7, #6]
1a00155a:	f5a3 73a1 	sub.w	r3, r3, #322	@ 0x142
1a00155e:	3320      	adds	r3, #32
1a001560:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001564:	617b      	str	r3, [r7, #20]
1a001566:	e005      	b.n	1a001574 <Chip_Clock_GetRate+0x30>
	}
	else {
		reg = LPC_CCU1->CLKCCU[clk].CFG;
1a001568:	4a17      	ldr	r2, [pc, #92]	@ (1a0015c8 <Chip_Clock_GetRate+0x84>)
1a00156a:	88fb      	ldrh	r3, [r7, #6]
1a00156c:	3320      	adds	r3, #32
1a00156e:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001572:	617b      	str	r3, [r7, #20]
	}

	/* Is the clock enabled? */
	if (reg & 1) {
1a001574:	697b      	ldr	r3, [r7, #20]
1a001576:	f003 0301 	and.w	r3, r3, #1
1a00157a:	2b00      	cmp	r3, #0
1a00157c:	d01b      	beq.n	1a0015b6 <Chip_Clock_GetRate+0x72>
		/* Get base clock for this peripheral clock */
		baseclk = Chip_Clock_FindBaseClock(clk);
1a00157e:	88fb      	ldrh	r3, [r7, #6]
1a001580:	4618      	mov	r0, r3
1a001582:	f7ff fd33 	bl	1a000fec <Chip_Clock_FindBaseClock>
1a001586:	4603      	mov	r3, r0
1a001588:	72fb      	strb	r3, [r7, #11]

		/* Get base clock rate */
		rate = Chip_Clock_GetBaseClocktHz(baseclk);
1a00158a:	7afb      	ldrb	r3, [r7, #11]
1a00158c:	4618      	mov	r0, r3
1a00158e:	f7ff ff53 	bl	1a001438 <Chip_Clock_GetBaseClocktHz>
1a001592:	60f8      	str	r0, [r7, #12]

		/* Get divider for this clock */
		if (((reg >> 5) & 0x7) == 0) {
1a001594:	697b      	ldr	r3, [r7, #20]
1a001596:	095b      	lsrs	r3, r3, #5
1a001598:	f003 0307 	and.w	r3, r3, #7
1a00159c:	2b00      	cmp	r3, #0
1a00159e:	d102      	bne.n	1a0015a6 <Chip_Clock_GetRate+0x62>
			div = 1;
1a0015a0:	2301      	movs	r3, #1
1a0015a2:	613b      	str	r3, [r7, #16]
1a0015a4:	e001      	b.n	1a0015aa <Chip_Clock_GetRate+0x66>
		}
		else {
			div = 2;/* No other dividers supported */
1a0015a6:	2302      	movs	r3, #2
1a0015a8:	613b      	str	r3, [r7, #16]

		}
		rate = rate / div;
1a0015aa:	68fa      	ldr	r2, [r7, #12]
1a0015ac:	693b      	ldr	r3, [r7, #16]
1a0015ae:	fbb2 f3f3 	udiv	r3, r2, r3
1a0015b2:	60fb      	str	r3, [r7, #12]
1a0015b4:	e001      	b.n	1a0015ba <Chip_Clock_GetRate+0x76>
	}
	else {
		rate = 0;
1a0015b6:	2300      	movs	r3, #0
1a0015b8:	60fb      	str	r3, [r7, #12]
	}

	return rate;
1a0015ba:	68fb      	ldr	r3, [r7, #12]
}
1a0015bc:	4618      	mov	r0, r3
1a0015be:	3718      	adds	r7, #24
1a0015c0:	46bd      	mov	sp, r7
1a0015c2:	bd80      	pop	{r7, pc}
1a0015c4:	40052000 	.word	0x40052000
1a0015c8:	40051000 	.word	0x40051000

1a0015cc <Chip_Clock_DisableMainPLL>:
 * @return	none
 * Make sure the main PLL is not needed to clock the part before disabling it.
 * Saves power if the main PLL is not needed.
 */
__STATIC_INLINE void Chip_Clock_DisableMainPLL(void)
{
1a0015cc:	b480      	push	{r7}
1a0015ce:	af00      	add	r7, sp, #0
	/* power down main PLL */
	LPC_CGU->PLL1_CTRL |= 1;
1a0015d0:	4b05      	ldr	r3, [pc, #20]	@ (1a0015e8 <Chip_Clock_DisableMainPLL+0x1c>)
1a0015d2:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
1a0015d4:	4a04      	ldr	r2, [pc, #16]	@ (1a0015e8 <Chip_Clock_DisableMainPLL+0x1c>)
1a0015d6:	f043 0301 	orr.w	r3, r3, #1
1a0015da:	6453      	str	r3, [r2, #68]	@ 0x44
}
1a0015dc:	bf00      	nop
1a0015de:	46bd      	mov	sp, r7
1a0015e0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0015e4:	4770      	bx	lr
1a0015e6:	bf00      	nop
1a0015e8:	40050000 	.word	0x40050000

1a0015ec <Chip_Clock_SetupMainPLL>:
 * @param	ppll	: Pointer to pll param structure #PLL_PARAM_T
 * @return	none
 * Make sure the main PLL is enabled.
 */
__STATIC_INLINE void Chip_Clock_SetupMainPLL(const PLL_PARAM_T *ppll)
{
1a0015ec:	b480      	push	{r7}
1a0015ee:	b083      	sub	sp, #12
1a0015f0:	af00      	add	r7, sp, #0
1a0015f2:	6078      	str	r0, [r7, #4]
	/* power up main PLL */
    LPC_CGU->PLL1_CTRL = ppll->ctrl | ((uint32_t) ppll->srcin << 24) | (ppll->msel << 16) | (ppll->nsel << 12) | (ppll->psel << 8) | ( 1 << 11);
1a0015f4:	687b      	ldr	r3, [r7, #4]
1a0015f6:	681b      	ldr	r3, [r3, #0]
1a0015f8:	461a      	mov	r2, r3
1a0015fa:	687b      	ldr	r3, [r7, #4]
1a0015fc:	791b      	ldrb	r3, [r3, #4]
1a0015fe:	061b      	lsls	r3, r3, #24
1a001600:	431a      	orrs	r2, r3
1a001602:	687b      	ldr	r3, [r7, #4]
1a001604:	691b      	ldr	r3, [r3, #16]
1a001606:	041b      	lsls	r3, r3, #16
1a001608:	431a      	orrs	r2, r3
1a00160a:	687b      	ldr	r3, [r7, #4]
1a00160c:	689b      	ldr	r3, [r3, #8]
1a00160e:	031b      	lsls	r3, r3, #12
1a001610:	431a      	orrs	r2, r3
1a001612:	687b      	ldr	r3, [r7, #4]
1a001614:	68db      	ldr	r3, [r3, #12]
1a001616:	021b      	lsls	r3, r3, #8
1a001618:	4313      	orrs	r3, r2
1a00161a:	4a05      	ldr	r2, [pc, #20]	@ (1a001630 <Chip_Clock_SetupMainPLL+0x44>)
1a00161c:	f443 6300 	orr.w	r3, r3, #2048	@ 0x800
1a001620:	6453      	str	r3, [r2, #68]	@ 0x44
}
1a001622:	bf00      	nop
1a001624:	370c      	adds	r7, #12
1a001626:	46bd      	mov	sp, r7
1a001628:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00162c:	4770      	bx	lr
1a00162e:	bf00      	nop
1a001630:	40050000 	.word	0x40050000

1a001634 <Chip_Clock_MainPLLLocked>:
 * @brief	Wait for Main PLL to be locked
 * @return	1 - PLL is LOCKED; 0 - PLL is not locked
 * @note	The main PLL should be locked prior to using it as a clock input for a base clock.
 */
__STATIC_INLINE int Chip_Clock_MainPLLLocked(void)
{
1a001634:	b480      	push	{r7}
1a001636:	af00      	add	r7, sp, #0
	/* Return true if locked */
	return (LPC_CGU->PLL1_STAT & 1) != 0;
1a001638:	4b06      	ldr	r3, [pc, #24]	@ (1a001654 <Chip_Clock_MainPLLLocked+0x20>)
1a00163a:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
1a00163c:	f003 0301 	and.w	r3, r3, #1
1a001640:	2b00      	cmp	r3, #0
1a001642:	bf14      	ite	ne
1a001644:	2301      	movne	r3, #1
1a001646:	2300      	moveq	r3, #0
1a001648:	b2db      	uxtb	r3, r3
}
1a00164a:	4618      	mov	r0, r3
1a00164c:	46bd      	mov	sp, r7
1a00164e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001652:	4770      	bx	lr
1a001654:	40050000 	.word	0x40050000

1a001658 <Chip_SetupCoreClock>:
/*****************************************************************************
 * Public functions
 ****************************************************************************/
/* Setup Chip Core clock */
void Chip_SetupCoreClock(CHIP_CGU_CLKIN_T clkin, uint32_t core_freq, bool setbase)
{
1a001658:	b590      	push	{r4, r7, lr}
1a00165a:	b08f      	sub	sp, #60	@ 0x3c
1a00165c:	af00      	add	r7, sp, #0
1a00165e:	4603      	mov	r3, r0
1a001660:	6039      	str	r1, [r7, #0]
1a001662:	71fb      	strb	r3, [r7, #7]
1a001664:	4613      	mov	r3, r2
1a001666:	71bb      	strb	r3, [r7, #6]
	int i;
	volatile uint32_t delay = 500;
1a001668:	f44f 73fa 	mov.w	r3, #500	@ 0x1f4
1a00166c:	62bb      	str	r3, [r7, #40]	@ 0x28
	uint32_t direct = 0, pdivide = 0;
1a00166e:	2300      	movs	r3, #0
1a001670:	633b      	str	r3, [r7, #48]	@ 0x30
1a001672:	2300      	movs	r3, #0
1a001674:	62fb      	str	r3, [r7, #44]	@ 0x2c
	PLL_PARAM_T ppll;

	if (clkin == CLKIN_CRYSTAL) {
1a001676:	79fb      	ldrb	r3, [r7, #7]
1a001678:	2b06      	cmp	r3, #6
1a00167a:	d101      	bne.n	1a001680 <Chip_SetupCoreClock+0x28>
		/* Switch main system clocking to crystal */
		Chip_Clock_EnableCrystal();
1a00167c:	f7ff fcfe 	bl	1a00107c <Chip_Clock_EnableCrystal>
	}
	Chip_Clock_SetBaseClock(CLK_BASE_MX, clkin, true, false);
1a001680:	79f9      	ldrb	r1, [r7, #7]
1a001682:	2300      	movs	r3, #0
1a001684:	2201      	movs	r2, #1
1a001686:	2004      	movs	r0, #4
1a001688:	f7ff fee8 	bl	1a00145c <Chip_Clock_SetBaseClock>
	Chip_Clock_DisableMainPLL(); /* Disable PLL */
1a00168c:	f7ff ff9e 	bl	1a0015cc <Chip_Clock_DisableMainPLL>

	/* Calculate the PLL Parameters */
	ppll.srcin = clkin;
1a001690:	79fb      	ldrb	r3, [r7, #7]
1a001692:	733b      	strb	r3, [r7, #12]
	Chip_Clock_CalcMainPLLValue(core_freq, &ppll);
1a001694:	f107 0308 	add.w	r3, r7, #8
1a001698:	4619      	mov	r1, r3
1a00169a:	6838      	ldr	r0, [r7, #0]
1a00169c:	f7ff fd26 	bl	1a0010ec <Chip_Clock_CalcMainPLLValue>

	if (core_freq > 110000000UL) {
1a0016a0:	683b      	ldr	r3, [r7, #0]
1a0016a2:	4a3d      	ldr	r2, [pc, #244]	@ (1a001798 <Chip_SetupCoreClock+0x140>)
1a0016a4:	4293      	cmp	r3, r2
1a0016a6:	d917      	bls.n	1a0016d8 <Chip_SetupCoreClock+0x80>
		if (ppll.ctrl & (1 << 6)) {
1a0016a8:	68bb      	ldr	r3, [r7, #8]
1a0016aa:	f003 0340 	and.w	r3, r3, #64	@ 0x40
1a0016ae:	2b00      	cmp	r3, #0
1a0016b0:	d001      	beq.n	1a0016b6 <Chip_SetupCoreClock+0x5e>
			while(1);		// to run in integer mode above 110 MHz, you need to use IDIV clock to boot strap CPU to that freq
1a0016b2:	bf00      	nop
1a0016b4:	e7fd      	b.n	1a0016b2 <Chip_SetupCoreClock+0x5a>
		} else if (ppll.ctrl & (1 << 7)){
1a0016b6:	68bb      	ldr	r3, [r7, #8]
1a0016b8:	f003 0380 	and.w	r3, r3, #128	@ 0x80
1a0016bc:	2b00      	cmp	r3, #0
1a0016be:	d006      	beq.n	1a0016ce <Chip_SetupCoreClock+0x76>
			direct = 1;
1a0016c0:	2301      	movs	r3, #1
1a0016c2:	633b      	str	r3, [r7, #48]	@ 0x30
			ppll.ctrl &= ~(1 << 7);
1a0016c4:	68bb      	ldr	r3, [r7, #8]
1a0016c6:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
1a0016ca:	60bb      	str	r3, [r7, #8]
1a0016cc:	e004      	b.n	1a0016d8 <Chip_SetupCoreClock+0x80>
		} else {
			pdivide = 1;
1a0016ce:	2301      	movs	r3, #1
1a0016d0:	62fb      	str	r3, [r7, #44]	@ 0x2c
			ppll.psel++;
1a0016d2:	697b      	ldr	r3, [r7, #20]
1a0016d4:	3301      	adds	r3, #1
1a0016d6:	617b      	str	r3, [r7, #20]
		}
	}

	/* Setup and start the PLL */
	Chip_Clock_SetupMainPLL(&ppll);
1a0016d8:	f107 0308 	add.w	r3, r7, #8
1a0016dc:	4618      	mov	r0, r3
1a0016de:	f7ff ff85 	bl	1a0015ec <Chip_Clock_SetupMainPLL>

	/* Wait for the PLL to lock */
	while(!Chip_Clock_MainPLLLocked()) {}
1a0016e2:	bf00      	nop
1a0016e4:	f7ff ffa6 	bl	1a001634 <Chip_Clock_MainPLLLocked>
1a0016e8:	4603      	mov	r3, r0
1a0016ea:	2b00      	cmp	r3, #0
1a0016ec:	d0fa      	beq.n	1a0016e4 <Chip_SetupCoreClock+0x8c>

	/* Set core clock base as PLL1 */
	Chip_Clock_SetBaseClock(CLK_BASE_MX, CLKIN_MAINPLL, true, false);
1a0016ee:	2300      	movs	r3, #0
1a0016f0:	2201      	movs	r2, #1
1a0016f2:	2109      	movs	r1, #9
1a0016f4:	2004      	movs	r0, #4
1a0016f6:	f7ff feb1 	bl	1a00145c <Chip_Clock_SetBaseClock>

	if (direct) {
1a0016fa:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
1a0016fc:	2b00      	cmp	r3, #0
1a0016fe:	d012      	beq.n	1a001726 <Chip_SetupCoreClock+0xce>
		delay = 1000;
1a001700:	f44f 737a 	mov.w	r3, #1000	@ 0x3e8
1a001704:	62bb      	str	r3, [r7, #40]	@ 0x28
		while(delay --){} /* Wait for approx 50 uSec -- for power supply to stabilize*/
1a001706:	bf00      	nop
1a001708:	6abb      	ldr	r3, [r7, #40]	@ 0x28
1a00170a:	1e5a      	subs	r2, r3, #1
1a00170c:	62ba      	str	r2, [r7, #40]	@ 0x28
1a00170e:	2b00      	cmp	r3, #0
1a001710:	d1fa      	bne.n	1a001708 <Chip_SetupCoreClock+0xb0>
		ppll.ctrl |= 1 << 7;
1a001712:	68bb      	ldr	r3, [r7, #8]
1a001714:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
1a001718:	60bb      	str	r3, [r7, #8]
		Chip_Clock_SetupMainPLL(&ppll); /* Set DIRECT to operate at full frequency */
1a00171a:	f107 0308 	add.w	r3, r7, #8
1a00171e:	4618      	mov	r0, r3
1a001720:	f7ff ff64 	bl	1a0015ec <Chip_Clock_SetupMainPLL>
1a001724:	e013      	b.n	1a00174e <Chip_SetupCoreClock+0xf6>
	} else if (pdivide) {
1a001726:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a001728:	2b00      	cmp	r3, #0
1a00172a:	d010      	beq.n	1a00174e <Chip_SetupCoreClock+0xf6>
		delay = 1000;
1a00172c:	f44f 737a 	mov.w	r3, #1000	@ 0x3e8
1a001730:	62bb      	str	r3, [r7, #40]	@ 0x28
		while(delay --){} /* Wait for approx 50 uSec -- for power supply to stabilize */
1a001732:	bf00      	nop
1a001734:	6abb      	ldr	r3, [r7, #40]	@ 0x28
1a001736:	1e5a      	subs	r2, r3, #1
1a001738:	62ba      	str	r2, [r7, #40]	@ 0x28
1a00173a:	2b00      	cmp	r3, #0
1a00173c:	d1fa      	bne.n	1a001734 <Chip_SetupCoreClock+0xdc>
		ppll.psel--;
1a00173e:	697b      	ldr	r3, [r7, #20]
1a001740:	3b01      	subs	r3, #1
1a001742:	617b      	str	r3, [r7, #20]
		Chip_Clock_SetupMainPLL(&ppll); /* Set PDIV to operate at full frequency */
1a001744:	f107 0308 	add.w	r3, r7, #8
1a001748:	4618      	mov	r0, r3
1a00174a:	f7ff ff4f 	bl	1a0015ec <Chip_Clock_SetupMainPLL>
	}

	if (setbase) {
1a00174e:	79bb      	ldrb	r3, [r7, #6]
1a001750:	2b00      	cmp	r3, #0
1a001752:	d01d      	beq.n	1a001790 <Chip_SetupCoreClock+0x138>
		/* Setup system base clocks and initial states. This won't enable and
		   disable individual clocks, but sets up the base clock sources for
		   each individual peripheral clock. */
		for (i = 0; i < (sizeof(InitClkStates) / sizeof(InitClkStates[0])); i++) {
1a001754:	2300      	movs	r3, #0
1a001756:	637b      	str	r3, [r7, #52]	@ 0x34
1a001758:	e017      	b.n	1a00178a <Chip_SetupCoreClock+0x132>
			Chip_Clock_SetBaseClock(InitClkStates[i].clk, InitClkStates[i].clkin,
1a00175a:	4a10      	ldr	r2, [pc, #64]	@ (1a00179c <Chip_SetupCoreClock+0x144>)
1a00175c:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
1a00175e:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a001762:	4a0e      	ldr	r2, [pc, #56]	@ (1a00179c <Chip_SetupCoreClock+0x144>)
1a001764:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
1a001766:	009b      	lsls	r3, r3, #2
1a001768:	4413      	add	r3, r2
1a00176a:	7859      	ldrb	r1, [r3, #1]
									InitClkStates[i].autoblock_enab, InitClkStates[i].powerdn);
1a00176c:	4a0b      	ldr	r2, [pc, #44]	@ (1a00179c <Chip_SetupCoreClock+0x144>)
1a00176e:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
1a001770:	009b      	lsls	r3, r3, #2
1a001772:	4413      	add	r3, r2
1a001774:	789a      	ldrb	r2, [r3, #2]
1a001776:	4c09      	ldr	r4, [pc, #36]	@ (1a00179c <Chip_SetupCoreClock+0x144>)
1a001778:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
1a00177a:	009b      	lsls	r3, r3, #2
1a00177c:	4423      	add	r3, r4
1a00177e:	78db      	ldrb	r3, [r3, #3]
			Chip_Clock_SetBaseClock(InitClkStates[i].clk, InitClkStates[i].clkin,
1a001780:	f7ff fe6c 	bl	1a00145c <Chip_Clock_SetBaseClock>
		for (i = 0; i < (sizeof(InitClkStates) / sizeof(InitClkStates[0])); i++) {
1a001784:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
1a001786:	3301      	adds	r3, #1
1a001788:	637b      	str	r3, [r7, #52]	@ 0x34
1a00178a:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
1a00178c:	2b11      	cmp	r3, #17
1a00178e:	d9e4      	bls.n	1a00175a <Chip_SetupCoreClock+0x102>
		}
	}
}
1a001790:	bf00      	nop
1a001792:	373c      	adds	r7, #60	@ 0x3c
1a001794:	46bd      	mov	sp, r7
1a001796:	bd90      	pop	{r4, r7, pc}
1a001798:	068e7780 	.word	0x068e7780
1a00179c:	1a001b68 	.word	0x1a001b68

1a0017a0 <malloc>:
1a0017a0:	4b02      	ldr	r3, [pc, #8]	@ (1a0017ac <malloc+0xc>)
1a0017a2:	4601      	mov	r1, r0
1a0017a4:	6818      	ldr	r0, [r3, #0]
1a0017a6:	f000 b82f 	b.w	1a001808 <_malloc_r>
1a0017aa:	bf00      	nop
1a0017ac:	10000004 	.word	0x10000004

1a0017b0 <free>:
1a0017b0:	4b02      	ldr	r3, [pc, #8]	@ (1a0017bc <free+0xc>)
1a0017b2:	4601      	mov	r1, r0
1a0017b4:	6818      	ldr	r0, [r3, #0]
1a0017b6:	f000 b92b 	b.w	1a001a10 <_free_r>
1a0017ba:	bf00      	nop
1a0017bc:	10000004 	.word	0x10000004

1a0017c0 <sbrk_aligned>:
1a0017c0:	b570      	push	{r4, r5, r6, lr}
1a0017c2:	4e10      	ldr	r6, [pc, #64]	@ (1a001804 <sbrk_aligned+0x44>)
1a0017c4:	6833      	ldr	r3, [r6, #0]
1a0017c6:	4605      	mov	r5, r0
1a0017c8:	460c      	mov	r4, r1
1a0017ca:	b1b3      	cbz	r3, 1a0017fa <sbrk_aligned+0x3a>
1a0017cc:	4621      	mov	r1, r4
1a0017ce:	4628      	mov	r0, r5
1a0017d0:	f000 f8f8 	bl	1a0019c4 <_sbrk_r>
1a0017d4:	1c43      	adds	r3, r0, #1
1a0017d6:	d00c      	beq.n	1a0017f2 <sbrk_aligned+0x32>
1a0017d8:	1cc4      	adds	r4, r0, #3
1a0017da:	f024 0403 	bic.w	r4, r4, #3
1a0017de:	42a0      	cmp	r0, r4
1a0017e0:	d005      	beq.n	1a0017ee <sbrk_aligned+0x2e>
1a0017e2:	1a21      	subs	r1, r4, r0
1a0017e4:	4628      	mov	r0, r5
1a0017e6:	f000 f8ed 	bl	1a0019c4 <_sbrk_r>
1a0017ea:	3001      	adds	r0, #1
1a0017ec:	d001      	beq.n	1a0017f2 <sbrk_aligned+0x32>
1a0017ee:	4620      	mov	r0, r4
1a0017f0:	bd70      	pop	{r4, r5, r6, pc}
1a0017f2:	f04f 34ff 	mov.w	r4, #4294967295
1a0017f6:	4620      	mov	r0, r4
1a0017f8:	bd70      	pop	{r4, r5, r6, pc}
1a0017fa:	4619      	mov	r1, r3
1a0017fc:	f000 f8e2 	bl	1a0019c4 <_sbrk_r>
1a001800:	6030      	str	r0, [r6, #0]
1a001802:	e7e3      	b.n	1a0017cc <sbrk_aligned+0xc>
1a001804:	1000008c 	.word	0x1000008c

1a001808 <_malloc_r>:
1a001808:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
1a00180c:	1ccd      	adds	r5, r1, #3
1a00180e:	f025 0503 	bic.w	r5, r5, #3
1a001812:	3508      	adds	r5, #8
1a001814:	2d0c      	cmp	r5, #12
1a001816:	bf38      	it	cc
1a001818:	250c      	movcc	r5, #12
1a00181a:	2d00      	cmp	r5, #0
1a00181c:	4606      	mov	r6, r0
1a00181e:	db18      	blt.n	1a001852 <_malloc_r+0x4a>
1a001820:	42a9      	cmp	r1, r5
1a001822:	d816      	bhi.n	1a001852 <_malloc_r+0x4a>
1a001824:	f8df 80dc 	ldr.w	r8, [pc, #220]	@ 1a001904 <_malloc_r+0xfc>
1a001828:	f000 f86e 	bl	1a001908 <__malloc_lock>
1a00182c:	f8d8 2004 	ldr.w	r2, [r8, #4]
1a001830:	b1a2      	cbz	r2, 1a00185c <_malloc_r+0x54>
1a001832:	4614      	mov	r4, r2
1a001834:	e003      	b.n	1a00183e <_malloc_r+0x36>
1a001836:	6863      	ldr	r3, [r4, #4]
1a001838:	4622      	mov	r2, r4
1a00183a:	b17b      	cbz	r3, 1a00185c <_malloc_r+0x54>
1a00183c:	461c      	mov	r4, r3
1a00183e:	6823      	ldr	r3, [r4, #0]
1a001840:	1b5b      	subs	r3, r3, r5
1a001842:	d4f8      	bmi.n	1a001836 <_malloc_r+0x2e>
1a001844:	2b0b      	cmp	r3, #11
1a001846:	d81f      	bhi.n	1a001888 <_malloc_r+0x80>
1a001848:	4294      	cmp	r4, r2
1a00184a:	6863      	ldr	r3, [r4, #4]
1a00184c:	d054      	beq.n	1a0018f8 <_malloc_r+0xf0>
1a00184e:	6053      	str	r3, [r2, #4]
1a001850:	e00c      	b.n	1a00186c <_malloc_r+0x64>
1a001852:	230c      	movs	r3, #12
1a001854:	6033      	str	r3, [r6, #0]
1a001856:	2000      	movs	r0, #0
1a001858:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
1a00185c:	4629      	mov	r1, r5
1a00185e:	4630      	mov	r0, r6
1a001860:	f7ff ffae 	bl	1a0017c0 <sbrk_aligned>
1a001864:	1c43      	adds	r3, r0, #1
1a001866:	4604      	mov	r4, r0
1a001868:	d019      	beq.n	1a00189e <_malloc_r+0x96>
1a00186a:	6005      	str	r5, [r0, #0]
1a00186c:	4630      	mov	r0, r6
1a00186e:	f000 f851 	bl	1a001914 <__malloc_unlock>
1a001872:	f104 000b 	add.w	r0, r4, #11
1a001876:	1d23      	adds	r3, r4, #4
1a001878:	f020 0007 	bic.w	r0, r0, #7
1a00187c:	1ac2      	subs	r2, r0, r3
1a00187e:	bf1c      	itt	ne
1a001880:	1a1b      	subne	r3, r3, r0
1a001882:	50a3      	strne	r3, [r4, r2]
1a001884:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
1a001888:	1961      	adds	r1, r4, r5
1a00188a:	4294      	cmp	r4, r2
1a00188c:	6025      	str	r5, [r4, #0]
1a00188e:	bf14      	ite	ne
1a001890:	6051      	strne	r1, [r2, #4]
1a001892:	f8c8 1004 	streq.w	r1, [r8, #4]
1a001896:	5163      	str	r3, [r4, r5]
1a001898:	6863      	ldr	r3, [r4, #4]
1a00189a:	604b      	str	r3, [r1, #4]
1a00189c:	e7e6      	b.n	1a00186c <_malloc_r+0x64>
1a00189e:	f8d8 7004 	ldr.w	r7, [r8, #4]
1a0018a2:	b31f      	cbz	r7, 1a0018ec <_malloc_r+0xe4>
1a0018a4:	463c      	mov	r4, r7
1a0018a6:	687f      	ldr	r7, [r7, #4]
1a0018a8:	2f00      	cmp	r7, #0
1a0018aa:	d1fb      	bne.n	1a0018a4 <_malloc_r+0x9c>
1a0018ac:	6823      	ldr	r3, [r4, #0]
1a0018ae:	4639      	mov	r1, r7
1a0018b0:	4630      	mov	r0, r6
1a0018b2:	eb04 0903 	add.w	r9, r4, r3
1a0018b6:	f000 f885 	bl	1a0019c4 <_sbrk_r>
1a0018ba:	4581      	cmp	r9, r0
1a0018bc:	d116      	bne.n	1a0018ec <_malloc_r+0xe4>
1a0018be:	6823      	ldr	r3, [r4, #0]
1a0018c0:	1aed      	subs	r5, r5, r3
1a0018c2:	4629      	mov	r1, r5
1a0018c4:	4630      	mov	r0, r6
1a0018c6:	f7ff ff7b 	bl	1a0017c0 <sbrk_aligned>
1a0018ca:	3001      	adds	r0, #1
1a0018cc:	d00e      	beq.n	1a0018ec <_malloc_r+0xe4>
1a0018ce:	6823      	ldr	r3, [r4, #0]
1a0018d0:	f8d8 2004 	ldr.w	r2, [r8, #4]
1a0018d4:	442b      	add	r3, r5
1a0018d6:	6023      	str	r3, [r4, #0]
1a0018d8:	6853      	ldr	r3, [r2, #4]
1a0018da:	b183      	cbz	r3, 1a0018fe <_malloc_r+0xf6>
1a0018dc:	42a3      	cmp	r3, r4
1a0018de:	d003      	beq.n	1a0018e8 <_malloc_r+0xe0>
1a0018e0:	461a      	mov	r2, r3
1a0018e2:	685b      	ldr	r3, [r3, #4]
1a0018e4:	429c      	cmp	r4, r3
1a0018e6:	d1fb      	bne.n	1a0018e0 <_malloc_r+0xd8>
1a0018e8:	2300      	movs	r3, #0
1a0018ea:	e7b0      	b.n	1a00184e <_malloc_r+0x46>
1a0018ec:	230c      	movs	r3, #12
1a0018ee:	6033      	str	r3, [r6, #0]
1a0018f0:	4630      	mov	r0, r6
1a0018f2:	f000 f80f 	bl	1a001914 <__malloc_unlock>
1a0018f6:	e7ae      	b.n	1a001856 <_malloc_r+0x4e>
1a0018f8:	f8c8 3004 	str.w	r3, [r8, #4]
1a0018fc:	e7b6      	b.n	1a00186c <_malloc_r+0x64>
1a0018fe:	f8c8 7004 	str.w	r7, [r8, #4]
1a001902:	e7b3      	b.n	1a00186c <_malloc_r+0x64>
1a001904:	1000008c 	.word	0x1000008c

1a001908 <__malloc_lock>:
1a001908:	4801      	ldr	r0, [pc, #4]	@ (1a001910 <__malloc_lock+0x8>)
1a00190a:	f000 b877 	b.w	1a0019fc <__retarget_lock_acquire_recursive>
1a00190e:	bf00      	nop
1a001910:	100001e4 	.word	0x100001e4

1a001914 <__malloc_unlock>:
1a001914:	4801      	ldr	r0, [pc, #4]	@ (1a00191c <__malloc_unlock+0x8>)
1a001916:	f000 b879 	b.w	1a001a0c <__retarget_lock_release_recursive>
1a00191a:	bf00      	nop
1a00191c:	100001e4 	.word	0x100001e4

1a001920 <memset>:
1a001920:	0783      	lsls	r3, r0, #30
1a001922:	b530      	push	{r4, r5, lr}
1a001924:	d047      	beq.n	1a0019b6 <memset+0x96>
1a001926:	1e54      	subs	r4, r2, #1
1a001928:	2a00      	cmp	r2, #0
1a00192a:	d03e      	beq.n	1a0019aa <memset+0x8a>
1a00192c:	b2ca      	uxtb	r2, r1
1a00192e:	4603      	mov	r3, r0
1a001930:	e001      	b.n	1a001936 <memset+0x16>
1a001932:	3c01      	subs	r4, #1
1a001934:	d339      	bcc.n	1a0019aa <memset+0x8a>
1a001936:	f803 2b01 	strb.w	r2, [r3], #1
1a00193a:	079d      	lsls	r5, r3, #30
1a00193c:	d1f9      	bne.n	1a001932 <memset+0x12>
1a00193e:	2c03      	cmp	r4, #3
1a001940:	d92c      	bls.n	1a00199c <memset+0x7c>
1a001942:	b2cd      	uxtb	r5, r1
1a001944:	eb05 2505 	add.w	r5, r5, r5, lsl #8
1a001948:	2c0f      	cmp	r4, #15
1a00194a:	eb05 4505 	add.w	r5, r5, r5, lsl #16
1a00194e:	d935      	bls.n	1a0019bc <memset+0x9c>
1a001950:	f1a4 0210 	sub.w	r2, r4, #16
1a001954:	f022 0c0f 	bic.w	ip, r2, #15
1a001958:	f103 0e10 	add.w	lr, r3, #16
1a00195c:	44e6      	add	lr, ip
1a00195e:	ea4f 1c12 	mov.w	ip, r2, lsr #4
1a001962:	461a      	mov	r2, r3
1a001964:	e9c2 5500 	strd	r5, r5, [r2]
1a001968:	e9c2 5502 	strd	r5, r5, [r2, #8]
1a00196c:	3210      	adds	r2, #16
1a00196e:	4572      	cmp	r2, lr
1a001970:	d1f8      	bne.n	1a001964 <memset+0x44>
1a001972:	f10c 0201 	add.w	r2, ip, #1
1a001976:	f014 0f0c 	tst.w	r4, #12
1a00197a:	eb03 1202 	add.w	r2, r3, r2, lsl #4
1a00197e:	f004 0c0f 	and.w	ip, r4, #15
1a001982:	d013      	beq.n	1a0019ac <memset+0x8c>
1a001984:	f1ac 0304 	sub.w	r3, ip, #4
1a001988:	f023 0303 	bic.w	r3, r3, #3
1a00198c:	3304      	adds	r3, #4
1a00198e:	4413      	add	r3, r2
1a001990:	f842 5b04 	str.w	r5, [r2], #4
1a001994:	4293      	cmp	r3, r2
1a001996:	d1fb      	bne.n	1a001990 <memset+0x70>
1a001998:	f00c 0403 	and.w	r4, ip, #3
1a00199c:	b12c      	cbz	r4, 1a0019aa <memset+0x8a>
1a00199e:	b2c9      	uxtb	r1, r1
1a0019a0:	441c      	add	r4, r3
1a0019a2:	f803 1b01 	strb.w	r1, [r3], #1
1a0019a6:	42a3      	cmp	r3, r4
1a0019a8:	d1fb      	bne.n	1a0019a2 <memset+0x82>
1a0019aa:	bd30      	pop	{r4, r5, pc}
1a0019ac:	4664      	mov	r4, ip
1a0019ae:	4613      	mov	r3, r2
1a0019b0:	2c00      	cmp	r4, #0
1a0019b2:	d1f4      	bne.n	1a00199e <memset+0x7e>
1a0019b4:	e7f9      	b.n	1a0019aa <memset+0x8a>
1a0019b6:	4603      	mov	r3, r0
1a0019b8:	4614      	mov	r4, r2
1a0019ba:	e7c0      	b.n	1a00193e <memset+0x1e>
1a0019bc:	461a      	mov	r2, r3
1a0019be:	46a4      	mov	ip, r4
1a0019c0:	e7e0      	b.n	1a001984 <memset+0x64>
1a0019c2:	bf00      	nop

1a0019c4 <_sbrk_r>:
1a0019c4:	b538      	push	{r3, r4, r5, lr}
1a0019c6:	4d07      	ldr	r5, [pc, #28]	@ (1a0019e4 <_sbrk_r+0x20>)
1a0019c8:	2200      	movs	r2, #0
1a0019ca:	4604      	mov	r4, r0
1a0019cc:	4608      	mov	r0, r1
1a0019ce:	602a      	str	r2, [r5, #0]
1a0019d0:	f000 f87c 	bl	1a001acc <_sbrk>
1a0019d4:	1c43      	adds	r3, r0, #1
1a0019d6:	d000      	beq.n	1a0019da <_sbrk_r+0x16>
1a0019d8:	bd38      	pop	{r3, r4, r5, pc}
1a0019da:	682b      	ldr	r3, [r5, #0]
1a0019dc:	2b00      	cmp	r3, #0
1a0019de:	d0fb      	beq.n	1a0019d8 <_sbrk_r+0x14>
1a0019e0:	6023      	str	r3, [r4, #0]
1a0019e2:	bd38      	pop	{r3, r4, r5, pc}
1a0019e4:	100001d0 	.word	0x100001d0

1a0019e8 <__retarget_lock_init>:
1a0019e8:	4770      	bx	lr
1a0019ea:	bf00      	nop

1a0019ec <__retarget_lock_init_recursive>:
1a0019ec:	4770      	bx	lr
1a0019ee:	bf00      	nop

1a0019f0 <__retarget_lock_close>:
1a0019f0:	4770      	bx	lr
1a0019f2:	bf00      	nop

1a0019f4 <__retarget_lock_close_recursive>:
1a0019f4:	4770      	bx	lr
1a0019f6:	bf00      	nop

1a0019f8 <__retarget_lock_acquire>:
1a0019f8:	4770      	bx	lr
1a0019fa:	bf00      	nop

1a0019fc <__retarget_lock_acquire_recursive>:
1a0019fc:	4770      	bx	lr
1a0019fe:	bf00      	nop

1a001a00 <__retarget_lock_try_acquire>:
1a001a00:	2001      	movs	r0, #1
1a001a02:	4770      	bx	lr

1a001a04 <__retarget_lock_try_acquire_recursive>:
1a001a04:	2001      	movs	r0, #1
1a001a06:	4770      	bx	lr

1a001a08 <__retarget_lock_release>:
1a001a08:	4770      	bx	lr
1a001a0a:	bf00      	nop

1a001a0c <__retarget_lock_release_recursive>:
1a001a0c:	4770      	bx	lr
1a001a0e:	bf00      	nop

1a001a10 <_free_r>:
1a001a10:	2900      	cmp	r1, #0
1a001a12:	d050      	beq.n	1a001ab6 <_free_r+0xa6>
1a001a14:	b538      	push	{r3, r4, r5, lr}
1a001a16:	f851 3c04 	ldr.w	r3, [r1, #-4]
1a001a1a:	1f0c      	subs	r4, r1, #4
1a001a1c:	2b00      	cmp	r3, #0
1a001a1e:	bfb8      	it	lt
1a001a20:	18e4      	addlt	r4, r4, r3
1a001a22:	4605      	mov	r5, r0
1a001a24:	f7ff ff70 	bl	1a001908 <__malloc_lock>
1a001a28:	4a27      	ldr	r2, [pc, #156]	@ (1a001ac8 <_free_r+0xb8>)
1a001a2a:	6813      	ldr	r3, [r2, #0]
1a001a2c:	b12b      	cbz	r3, 1a001a3a <_free_r+0x2a>
1a001a2e:	42a3      	cmp	r3, r4
1a001a30:	d90c      	bls.n	1a001a4c <_free_r+0x3c>
1a001a32:	6821      	ldr	r1, [r4, #0]
1a001a34:	1860      	adds	r0, r4, r1
1a001a36:	4283      	cmp	r3, r0
1a001a38:	d02c      	beq.n	1a001a94 <_free_r+0x84>
1a001a3a:	6063      	str	r3, [r4, #4]
1a001a3c:	4628      	mov	r0, r5
1a001a3e:	6014      	str	r4, [r2, #0]
1a001a40:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
1a001a44:	f7ff bf66 	b.w	1a001914 <__malloc_unlock>
1a001a48:	42a3      	cmp	r3, r4
1a001a4a:	d80f      	bhi.n	1a001a6c <_free_r+0x5c>
1a001a4c:	461a      	mov	r2, r3
1a001a4e:	685b      	ldr	r3, [r3, #4]
1a001a50:	2b00      	cmp	r3, #0
1a001a52:	d1f9      	bne.n	1a001a48 <_free_r+0x38>
1a001a54:	6811      	ldr	r1, [r2, #0]
1a001a56:	1850      	adds	r0, r2, r1
1a001a58:	4284      	cmp	r4, r0
1a001a5a:	d017      	beq.n	1a001a8c <_free_r+0x7c>
1a001a5c:	d32c      	bcc.n	1a001ab8 <_free_r+0xa8>
1a001a5e:	6063      	str	r3, [r4, #4]
1a001a60:	6054      	str	r4, [r2, #4]
1a001a62:	4628      	mov	r0, r5
1a001a64:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
1a001a68:	f7ff bf54 	b.w	1a001914 <__malloc_unlock>
1a001a6c:	6811      	ldr	r1, [r2, #0]
1a001a6e:	1850      	adds	r0, r2, r1
1a001a70:	42a0      	cmp	r0, r4
1a001a72:	d014      	beq.n	1a001a9e <_free_r+0x8e>
1a001a74:	d820      	bhi.n	1a001ab8 <_free_r+0xa8>
1a001a76:	6821      	ldr	r1, [r4, #0]
1a001a78:	1860      	adds	r0, r4, r1
1a001a7a:	4283      	cmp	r3, r0
1a001a7c:	d1ef      	bne.n	1a001a5e <_free_r+0x4e>
1a001a7e:	6818      	ldr	r0, [r3, #0]
1a001a80:	685b      	ldr	r3, [r3, #4]
1a001a82:	4408      	add	r0, r1
1a001a84:	e9c4 0300 	strd	r0, r3, [r4]
1a001a88:	6054      	str	r4, [r2, #4]
1a001a8a:	e7ea      	b.n	1a001a62 <_free_r+0x52>
1a001a8c:	6823      	ldr	r3, [r4, #0]
1a001a8e:	440b      	add	r3, r1
1a001a90:	6013      	str	r3, [r2, #0]
1a001a92:	e7e6      	b.n	1a001a62 <_free_r+0x52>
1a001a94:	6818      	ldr	r0, [r3, #0]
1a001a96:	685b      	ldr	r3, [r3, #4]
1a001a98:	4408      	add	r0, r1
1a001a9a:	6020      	str	r0, [r4, #0]
1a001a9c:	e7cd      	b.n	1a001a3a <_free_r+0x2a>
1a001a9e:	6820      	ldr	r0, [r4, #0]
1a001aa0:	4401      	add	r1, r0
1a001aa2:	1850      	adds	r0, r2, r1
1a001aa4:	4283      	cmp	r3, r0
1a001aa6:	6011      	str	r1, [r2, #0]
1a001aa8:	d1db      	bne.n	1a001a62 <_free_r+0x52>
1a001aaa:	e9d3 0400 	ldrd	r0, r4, [r3]
1a001aae:	4401      	add	r1, r0
1a001ab0:	e9c2 1400 	strd	r1, r4, [r2]
1a001ab4:	e7d5      	b.n	1a001a62 <_free_r+0x52>
1a001ab6:	4770      	bx	lr
1a001ab8:	230c      	movs	r3, #12
1a001aba:	602b      	str	r3, [r5, #0]
1a001abc:	4628      	mov	r0, r5
1a001abe:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
1a001ac2:	f7ff bf27 	b.w	1a001914 <__malloc_unlock>
1a001ac6:	bf00      	nop
1a001ac8:	10000090 	.word	0x10000090

1a001acc <_sbrk>:
1a001acc:	4a04      	ldr	r2, [pc, #16]	@ (1a001ae0 <_sbrk+0x14>)
1a001ace:	4905      	ldr	r1, [pc, #20]	@ (1a001ae4 <_sbrk+0x18>)
1a001ad0:	6813      	ldr	r3, [r2, #0]
1a001ad2:	2b00      	cmp	r3, #0
1a001ad4:	bf08      	it	eq
1a001ad6:	460b      	moveq	r3, r1
1a001ad8:	4418      	add	r0, r3
1a001ada:	6010      	str	r0, [r2, #0]
1a001adc:	4618      	mov	r0, r3
1a001ade:	4770      	bx	lr
1a001ae0:	100001f4 	.word	0x100001f4
1a001ae4:	100001f8 	.word	0x100001f8

1a001ae8 <InitClkStates>:
1a001ae8:	01010f01                                ....

1a001aec <ExtRateIn>:
1a001aec:	00000000                                ....

1a001af0 <OscRateIn>:
1a001af0:	00b71b00                                ....

1a001af4 <periph_to_base>:
1a001af4:	00050000 0020000a 00090024 00400040     ...... .$...@.@.
1a001b04:	00600005 000400a6 00c300c0 00e00002     ..`.............
1a001b14:	000100e0 01000100 01200003 00060120     .......... . ...
1a001b24:	01400140 0142000c 00190142 01620162     @.@...B.B...b.b.
1a001b34:	01820013 00120182 01a201a2 01c20011     ................
1a001b44:	001001c2 01e201e2 0202000f 000e0202     ................
1a001b54:	02220222 0223000d 001c0223 0f0f0f03     "."...#.#.......
1a001b64:	000000ff                                ....

1a001b68 <InitClkStates>:
1a001b68:	00010100 00010909 0001090a 01010701     ................
1a001b78:	00010902 00010906 0101090c 0001090d     ................
1a001b88:	0001090e 0001090f 00010910 00010911     ................
1a001b98:	00010912 00010913 00011114 00011119     ................
1a001ba8:	0001111a 0001111b                       ........
