#ifndef _KSNES
#define _KSNES

#include "dolphin/mtx.h"
#include "dolphin/os.h"
#include "types.h"

#define KS_NES_WIDTH 256
#define KS_NES_HEIGHT 228

#define KS_NES_PPU_CYCLES_PER_SCANLINE 341
#define KS_NES_CPU_CYCLES_PER_SCANLINE 114

#define KS_NES_SCANLINE_COUNT 240
#define KS_NES_SCANLINE_SPRITE_OVERDRAW_COUNT (KS_NES_SCANLINE_COUNT + 32) // 272

#define KS_NES_CENTER_X (KS_NES_WIDTH / 2)
#define KS_NES_CENTER_Y (KS_NES_SCANLINE_SPRITE_OVERDRAW_COUNT / 2)

#define KS_NES_OAM_TABLE_SIZE 64

#define CHR_TO_I8_BUF_SIZE 0x100000
#define KS_NES_NESFILE_HEADER_SIZE 0x10
#define KS_NES_PRGROM_SIZE 0x80000 // 512kb for MMC3
#define KS_NES_CHRROM_SIZE 0x40000 // 256kb for MMC3

#define KS_NES_CHRRAM_SIZE 0x2000 // 8kb
#define KS_NES_BBRAM_SIZE 0x8000  // 32kb, battery backed-up ram
#define KS_NES_NOISE_DATA_SIZE 0x7F000
#define KS_NES_DRAW_RESULT_BUF_SIZE 0x1C800

#define KS_NES_WRAM_SIZE 0x800              // 2kb
#define KS_NES_PPU_NAMETABLE_RAM_SIZE 0x800 // 2kb

#define KS_NES_EMU_STACK_SIZE 0x1000 // 4kb for thread stack

// NES PPU Control Register ($2000) flags
#define KS_NES_PPU_CTRL_NAMETABLE_MASK 0x03 // Nametable select (0-3)
#define KS_NES_PPU_CTRL_NAMETABLE_0 0x00    // Nametable at $2000
#define KS_NES_PPU_CTRL_NAMETABLE_1 0x01    // Nametable at $2400
#define KS_NES_PPU_CTRL_NAMETABLE_2 0x02    // Nametable at $2800
#define KS_NES_PPU_CTRL_NAMETABLE_3 0x03    // Nametable at $2C00

#define KS_NES_PPU_CTRL_VRAM_INCREMENT                                                             \
  0x04 // VRAM address increment (0=add 1 across, 1=add 32 down)
#define KS_NES_PPU_CTRL_SPRITE_PATTERN                                                             \
  0x08                                    // Sprite pattern table for 8x8 sprites (0=$0000, 1=$1000)
#define KS_NES_PPU_CTRL_BG_PATTERN 0x10   // Background pattern table (0=$0000, 1=$1000)
#define KS_NES_PPU_CTRL_SPRITE_SIZE 0x20  // Sprite size (0=8x8, 1=8x16)
#define KS_NES_PPU_CTRL_MASTER_SLAVE 0x40 // PPU master/slave select
#define KS_NES_PPU_CTRL_NMI_ENABLE 0x80   // Generate NMI at start of vertical blanking

// Sprite sizes
#define KS_NES_PPU_CTRL_SPRITE_SIZE_8x8 0x00  // 8x8 sprite size
#define KS_NES_PPU_CTRL_SPRITE_SIZE_8x16 0x20 // 8x16 sprite size

// NES PPU Mask Register ($2001) flags
#define KS_NES_PPU_MASK_GREYSCALE 0x01         // Greyscale mode
#define KS_NES_PPU_MASK_SHOW_BG_LEFT 0x02      // Show background in leftmost 8 pixels
#define KS_NES_PPU_MASK_SHOW_SPRITES_LEFT 0x04 // Show sprites in leftmost 8 pixels
#define KS_NES_PPU_MASK_SHOW_BG 0x08           // Enable background rendering
#define KS_NES_PPU_MASK_SHOW_SPRITES 0x10      // Enable sprite rendering
#define KS_NES_PPU_MASK_EMPHASIZE_RED 0x20     // Emphasize red channel
#define KS_NES_PPU_MASK_EMPHASIZE_GREEN 0x40   // Emphasize green channel
#define KS_NES_PPU_MASK_EMPHASIZE_BLUE 0x80    // Emphasize blue channel

// NES PPU Status Register ($2002) flags
#define KS_NES_PPU_STATUS_FLG_SPRITE_OVERFLOW (1 << 5) // 0x20
#define KS_NES_PPU_STATUS_FLG_SPRITE_ZERO_HIT (1 << 6) // 0x40
#define KS_NES_PPU_STATUS_FLG_VBLANK (1 << 7)          // 0x80

// Combined masks used in the codebase
// All color modification bits (greyscale + RGB emphasis)
#define KS_NES_PPU_MASK_COLOR_EFFECTS                                                              \
  (KS_NES_PPU_MASK_GREYSCALE | KS_NES_PPU_MASK_EMPHASIZE_RED | KS_NES_PPU_MASK_EMPHASIZE_GREEN |   \
   KS_NES_PPU_MASK_EMPHASIZE_BLUE) // 0xE1
// Sprites enabled + leftmost sprites
#define KS_NES_PPU_MASK_SPRITES_COMBINED                                                           \
  (KS_NES_PPU_MASK_SHOW_SPRITES_LEFT | KS_NES_PPU_MASK_SHOW_SPRITES) // 0x14

// Timer IRQ control register @ 0x4022
#define KS_NES_FDS_TIMER_CTRL_FLG_IRQ_REPEAT (1 << 0) // 0 = don't repeat, 1 = repeat
#define KS_NES_FDS_TIMER_CTRL_FLG_IRQ_ENABLE (1 << 1) // 0 = disabled, 1 = enabled

// Master IO register @ 0x4023
#define KS_NES_FDS_MASTER_IO_FLG_ENABLE_DISK_REGS (1 << 0)  // enable disk I/O registers
#define KS_NES_FDS_MASTER_IO_FLG_ENABLE_SOUND_REGS (1 << 1) // enable sound I/O registers

// FDS Control register @ 0x4025
#define KS_NES_FDS_CTRL_FLG_TRANSFER_RESET (1 << 0) // 1 = reset transfer timing state
#define KS_NES_FDS_CTRL_FLG_MOTOR (1 << 1)          // 0 = start, 1 = stop
#define KS_NES_FDS_CTRL_FLG_TRANSFER_MODE (1 << 2)  // 0 = write, 1 = read
#define KS_NES_FDS_CTRL_FLG_NAMETABLE_MODE                                                         \
  (1 << 3) // 0 = horizontal (vertical mirroring), 1 = vertical (horizontal mirroring)
#define KS_NES_FDS_CTRL_FLG_CRC_TRANSFER (1 << 4) // 1 = transfer CRC value
#define KS_NES_FDS_CTRL_FLG_5 (1 << 5)            // unknown, NESDev says it's always 1
#define KS_NES_FDS_CTRL_FLG_CRC_ENABLE (1 << 6)   // 0 = disable/reset, 1 = enable
#define KS_NES_FDS_CTRL_FLG_INTERRUPT_ENABLE                                                       \
  (1 << 7) // 1 = generate IRQ every time byte transfer flag is raised

// OAM Tile/Index Flags
#define KS_NES_OAM_TILE_BANK 0x01
#define KS_NES_OAM_TILE_IDX 0xFE

// OAM Attribute Flags
#define KS_NES_OAM_ATTR_PALETTE_MASK 0x03
#define KS_NES_OAM_ATTR_PRIORITY (1 << 5) // 0x20, 0 = in front of background, 1 = behind background
#define KS_NES_OAM_ATTR_FLIP_HORIZONTAL (1 << 6) // 0x40, 0 = normal, 1 = flip horizontally
#define KS_NES_OAM_ATTR_FLIP_VERTICAL (1 << 7)   // 0x80, 0 = normal, 1 = flip vertically

// Misc
#define KS_NES_SPRITES_PER_SCANLINE 8

// Mapper definitions
#define KS_NES_MAPPER_NROM 0
#define KS_NES_MAPPER_MMC1 1
#define KS_NES_MAPPER_UxROM 2
#define KS_NES_MAPPER_CNROM 3
#define KS_NES_MAPPER_MMC3 4
#define KS_NES_MAPPER_MMC5 5
#define KS_NES_MAPPER_MMC2 9
#define KS_NES_MAPPER_MMC4 10

#define KS_NES_MAPPER_KONAMI_VRC6A 24
#define KS_NES_MAPPER_KONAMI_VRC6B 26

// Memory mapped register addresses

// APU Registers & Flags
#define KS_NES_REG_APU_STATUS 0x4015
#define KS_NES_REG_APU_STATUS_FLG_PULSE1_ENABLE (1 << 0)
#define KS_NES_REG_APU_STATUS_FLG_PULSE2_ENABLE (1 << 1)
#define KS_NES_REG_APU_STATUS_FLG_TRIANGLE_ENABLE (1 << 2)
#define KS_NES_REG_APU_STATUS_FLG_NOISE_ENABLE (1 << 3)
#define KS_NES_REG_APU_STATUS_FLG_DMC_ENABLE (1 << 4)

// MMC5 Audio Registers & Flags
#define KS_NES_REG_MMC5_AUDIO_PULSE1_TIMER 0x5000
#define KS_NES_REG_MMC5_AUDIO_PULSE1_LENGTH_CTR 0x5001
#define KS_NES_REG_MMC5_AUDIO_PULSE1_ENVELOPE 0x5002
#define KS_NES_REG_MMC5_AUDIO_PULSE1_SWEEP 0x5003
#define KS_NES_REG_MMC5_AUDIO_PULSE2_TIMER 0x5004
#define KS_NES_REG_MMC5_AUDIO_PULSE2_LENGTH_CTR 0x5005
#define KS_NES_REG_MMC5_AUDIO_PULSE2_ENVELOPE 0x5006
#define KS_NES_REG_MMC5_AUDIO_PULSE2_SWEEP 0x5007
#define KS_NES_REG_MMC5_AUDIO_PCM_MODE_IRQ                                                         \
  0x5010 // bit0 = mode select, 0 = write, 1 = read & bit7 = PCM IRQ enable
#define KS_NES_REG_MMC5_AUDIO_RAW_PCM 0x5011
#define KS_NES_REG_MMC5_AUDIO_STATUS                                                               \
  0x5015 // only bottom two bits are used (bit0/1) and toggle pulse1/2
#define KS_NES_REG_MMC5_AUDIO_STATUS_PULSE1 (1 << 0)
#define KS_NES_REG_MMC5_AUDIO_STATUS_PULSE2 (1 << 1)
#define KS_NES_REG_MMC5_AUDIO_STATUS_PULSE_MASK                                                    \
  (KS_NES_REG_MMC5_AUDIO_STATUS_PULSE1 | KS_NES_REG_MMC5_AUDIO_STATUS_PULSE2)

// Emulator flags
#define KS_NES_FLAG_NINES_OVER_MODE                                                                \
  (1 << 13) // 0x2000, enables "nines over" mode which allows drawing more than 8 sprites per
            // scanline

typedef struct ksNesPPUScanlineState {
  u8* nametable_ptrs[2];
  // Either chr_bank_sprite or chr_bank_bg_mmc3 is used depending on mapper type and CPU cycle
  union {
    u8 chr_bank_sprite[8];
    u32 chr_bank_bg_mmc3[2]; // used in ksNesDrawMakeBGIndTex when the scanline column is >= 9.
  };

  u32 chr_bank_bg[2];
  u8 ppu_ctrl;
  u8 ppumask_flags;
  u8 fine_x_and_next;
  u8 vram_addr_coarse_x;
  u8 vram_addr_y;

  // MMC5-only state
  u8 mmc5_ext_mode;
  u8 chr_bank_ext_upper_sprite;
  u8 chr_bank_ext_upper_bg;
} ksNesPPUScanlineState;
CHECK_SIZEOF(ksNesPPUScanlineState, 0x20)

typedef struct ksNesSpriteQuadData {
  u8 y_and_v_pairs[32]; // Pairs of (Y position, texture V coord) for quad segments
                        // Each quad segment uses 4 bytes: y_top, v_top, y_bottom, v_bottom
                        // Supports up to 8 quad segments per sprite
} ksNesSpriteQuadData;
CHECK_SIZEOF(ksNesSpriteQuadData, 0x20)

typedef struct ksNesOAMEntry {
  u8 y_pos;
  u8 tile_index;
  u8 attributes;
  u8 x_pos;
} ksNesOAMEntry;
CHECK_SIZEOF(ksNesOAMEntry, 0x4)

// A vertical span recorded in the shared scanline buffer.
typedef struct ksNesScanlineYCoords {
  u8 top;
  u8 height;
} ksNesScanlineYCoords;
CHECK_SIZEOF(ksNesScanlineYCoords, 0x2)

typedef struct ksNesDrawCtx {
  union {
    u8 sprite_scanline_limit[KS_NES_SCANLINE_SPRITE_OVERDRAW_COUNT]; // tracks the number of sprites
                                                                     // that have been drawn on each
                                                                     // scanline
    u8 scanline_y_coords[2 * 256]; // tracks the Y coordinate of the top & bottom of each scanline
    u8 scanline_raw_buf[512];
  };

  u8 sprite_vertex_count[KS_NES_OAM_TABLE_SIZE];
  ksNesSpriteQuadData sprite_quad_data[KS_NES_OAM_TABLE_SIZE];
  ksNesPPUScanlineState ppu_scanline_regs[KS_NES_SCANLINE_COUNT];
  u8 OAMTable[KS_NES_OAM_TABLE_SIZE * 4];
  u8 post_process_lut[0x800];
  u8 bg_tile_index_texture[(36 * 256) * 2];   // IA8 texture, holds information about the background
                                              // tile indices and pattern table data
  u8 bg_palette_attr_texture[(40 * 256) / 2]; // I4 texture, holds background palette attributes
  u8 sprite_indirect_lut[(16 * 4) * 2];       // 4x16 texture IA8, handles indirect tex coords, for
                                              // mirroring and sized sprites
  u8 sprite_chr_bank_lut[(4 * 4) * 2];        // 4x4 IA8 sprite CHR bank lookup table
  Mtx draw_mtx;
} ksNesDrawCtx;
CHECK_SIZEOF(ksNesDrawCtx, 0x8E10)

#define KS_NES_TYPE_FROM_DRAW_CTX_SCANLINE_BUF_OFS(type, draw_ctx, ofs)                            \
  reinterpret_cast< type* >(reinterpret_cast< u8* >((draw_ctx).scanline_raw_buf) + (ofs))

typedef struct ksNesCommonWorkObj {
  u8* nesromp;
  u8* noise_bufp;
  size_t chr_to_i8_buf_size;
  u8* chr_to_u8_bufp;
  u8* result_bufp;
  u32 cpu_cycle_count;
  u32 total_cpu_cycles;
  u8 frames;
  u8 fds_disk_count;
  u8 _001E;
  u8 _001F;
  u32 pads[4 + 3];
  u8 _003C;
  u32 _0040;
  u32 _0044;
  size_t prg_size;
  u8 _004C[0x0060 - 0x004C];
  ksNesDrawCtx draw_ctx;
} ksNesCommonWorkObj;
CHECK_SIZEOF(ksNesCommonWorkObj, 0x8E70)

typedef void (*ksNesAsmHandler)();

typedef struct ksNesStateObj {
  u8 wram[KS_NES_WRAM_SIZE];
  u8 ppu_nametable_ram[KS_NES_PPU_NAMETABLE_RAM_SIZE];
  u8 cartridge_nametable_ram[28];
  u8 _pad[4]; // this might not exist and instead the next member might be ATTRIBUTE_ALIGN(16/32)
  ksNesOAMEntry primary_oam[KS_NES_OAM_TABLE_SIZE]; // u8 primary_oam[0x100];
  // Entry points in the assembly interpreter.
  ksNesAsmHandler store_ppu_func[8]; // ksNesStorePPUFuncTblDefault
  ksNesAsmHandler store_io_func[40]; // ksNesStoreIOFuncTblDefault
  ksNesAsmHandler store_func[8];     // ksNesStoreFuncTblDefault
  ksNesAsmHandler load_func[8];      // ksNesLoadFuncTblDefault
  ksNesAsmHandler load_io_func[24];  // ksNesLoadIOFuncTblDefault
  u8* cpu_0000_1fff;                 // work RAM and its mirrors
  u8* cpu_2000_3fff;                 // PPU registers and their mirrors
  u8* cpu_4000_5fff; // APU registers, I/O registers, and usually unmapped cartridge addresses
  u8* cpu_6000_7fff; // usually battery backed cartridge RAM
  u8* cpu_8000_9fff; // usually cartridge ROM and mapper registers
  u8* cpu_a000_bfff; // usually cartridge ROM and mapper registers
  u8* cpu_c000_dfff; // usually cartridge ROM and mapper registers
  u8* cpu_e000_ffff; // usually cartridge ROM and mapper registers
  u8 ppu_internal_state[8];
  u8 ppu_register_cache[8];
  union {
    u8 raw[4];
    struct {
      u8 disk_status;         // 0x00
      u8 data;                // 0x01
      u8 drive_status;        // 0x02
      u8 expansion_connector; // 0x03 top-most bit is battery status
    } registers;
  } qd_drive;
  u32 vblank_frame_counter;
  u16 wdm_return_addr; // return address calculated by opcode 42, WDM
  u16 _16BA;
  u8 _16BC;
  u8 qd_irq_acknowledged_flag;
  u8 _16BE;
  u8 _16BF;
  union {
    u32 full;
    struct {
      u16 upper;
      u16 lower;
    } split;
  } qd_disk_head_position;
  u8 _16C4;                         // 0x4020 ?
  u8 _16C5;                         // 0x4021 ?
  u8 fds_timer_control_register;    // 0x4022
  u8 fds_master_io_enable_register; // 0x4023
  u8 _16C8;                         // 0x4024 ?
  u8 fds_control_register;          // 0x4025
  u8 _16CA;
  u8 _16CB;
  u8 ppu_palette_ram[4 * 0x20];
  u8 ppu_render_latches[24]; // PPU latches for tile/attribute data
  u8 mapper;
  u8 prg_banks;  // init to number of 8k PRG banks - 1. might indicate currently selected bank
  u16 chr_banks; // init to number of 1k CHR banks - 1. might indicate currently selected bank
  u8 bbram_mode_select;
  u8 chr_ram_write_enable; // 0 = can't write to chr ram, 1 = can write
  u8 fds_disk_count;
  u8 fds_disk_drive_status; // duplicate of qd_drive.registers.drive_status?
  u8 fds_ready_delay_counter;
  u8 motor_timer;
  // u8 mmc5_registers[0x40]; // MMC5 registers -- also used to store QD info during fast save
  u8 _176E[26];
  u8 fds_fast_io_lock;

  // MMC1 mapper specific (mapper 01)
  // 0x00 = control
  // 0x01 = chr_bank0, 0x02 = chr_bank1
  // 0x03 = selected_reg_idx
  // 0x04 = 512k_prg_mode_flag
  // 0x05 = load_counter
  // 0x06 = shift_register
  u8 mmc1_regs[7];
  u16 ppu_palette_write_addr;
  u8 ppu_palette_bank;
  u8 fds_timer_latch_low;
  u8 fds_timer_latch_high;
  u8 _1395[3];
  u8* prgromp; // pointer to the start of PRG ROM?
  u8* chrramp; // pointer to the end of PRG ROM?
  u8* bbramp;  // pointer to battery backed RAM?
  u8 ppu_chr_banks[8];
  u8* ppu_nametable_pointers[4];
  s16 ppu_scanline_counter;
  s16 cpu_cycles_per_visible_scanline;
  s16 cpu_cycles_per_vblank_scanline;
  s16 cpu_cycles_for_nmi;
  u16 scanline_irq_target_val;     // scanline target to initiate iterrupt request
  u16 mapper19_irq_scanline_latch; // latch value used for IRQ timings for Namco 163 mapper
  u8 sprite0_hit_scanline;         // scanline which
  u8 mmc3_command_register;        // Used exclusive in ksNesStore04_8000 for routing logic
  u8 ppu_scanline_threshold; // used for Tetris 2 + Bombliss & Quinty to correct scrolling behavior
  u8 ppu_fine_x_scroll;
  u8 ppu_vram_addr_v_hi; // vram address for the current bg tile (v)
  u8 ppu_vram_addr_v_lo; // fine Y scroll corrected
  u16 ppu_addr_latch;
  u8 ppu_vram_addr_t_hi; // vram address for work (t)
  u8 ppu_vram_addr_t_lo; // fine Y scroll raw
  u16 _1836;             // assumed to be an unused ppu latch value for t?
  s32 cycle_count;
  u16 mapper_irq_latch;
  u16 _183E; // unused
  ksNesAsmHandler mapper_irq_handler;
  u16 PC;
  struct {
    u8 A; // 0x00
    u8 X; // 0x01
    u8 Y; // 0x02
    u8 S; // 0x03

    u8 flag_z; // 0x04
    u8 flag_c; // 0x05
    u8 flag_v; // 0x06
    u8 flag_n; // 0x07

    u8 P; // 0x08

    u8 _unused_09; // 0x09

    u8 apu_dma_dmc_flags; // 0x0A
    u8 dac_value;         // 0x0B

    u8 irq_status_flags; // 0x0C
    u8 irq_mask_flags;   // 0x0D

    u8 controller_strobe; // 0x0E

    u8 apu_frame_counter_mode; // 0x0F

    u8 irq_pending_flag; // 0x10

    u8 mapper_irq_enable; // 0x11
  } cpu_state;
  u32 reset_flags; // this should probably be defined as an enum.
  u32 frame_flags; // this should probably be defined as an enum.
  size_t prg_size; // PRG size in bytes
  size_t chr_size; // CHR size in bytes
  u8* nesromp;
  u8* ppu_chr_bank_pointers[24];
  u32 io_shift_registers[7];
  u8 palette_normal[0x80]; // ksNesPaletteNormal
  u32 frame_counter;
  OSTick os_tick;
} ksNesStateObj;
CHECK_SIZEOF(ksNesStateObj, 0x150C)

void ksNesConvertChrToI8(ksNesCommonWorkObj* wp, const u8* data, u32 flags);
extern "C" {
void EmuSound_Start(u8* noiseData);
void EmuSound_Exit();
u32 ksNesGetAudioStream();
u8 Sound_Read(u16 regAddr);
void Sound_Write(u16 event, u8 value, u16 cycle);
void Sound_SetC000(u8* rom);
void Sound_SetE000(u8* rom);
void Sound_SetMMC(u8 mode);
}
void ksNesEmuFrameAsm(ksNesCommonWorkObj* wp, ksNesStateObj* sp);
void ksNesEmuFrame(ksNesCommonWorkObj* wp, ksNesStateObj* sp, u32 flags);
void ksNesQDSoundSync();
int ksNesQDFastLoad(ksNesCommonWorkObj* wp, ksNesStateObj* sp);
int ksNesQDFastSave(ksNesCommonWorkObj* wp, ksNesStateObj* sp);
void ksNesPushResetButton(ksNesStateObj* sp);
extern ksNesAsmHandler ksNesMapperInitFuncTbl[2][5];
void ksNesInit01();
u32 ksNesResetAsm(ksNesCommonWorkObj* work, ksNesStateObj* state);
void ksNesDrawInit(ksNesCommonWorkObj* wp);
void ksNesDrawMakeBGIndTex(ksNesCommonWorkObj* wp, u32 mmc3);
void ksNesDrawBG(ksNesCommonWorkObj* wp, ksNesStateObj* sp);

int ksNesReset(ksNesCommonWorkObj* wp, ksNesStateObj* sp, u32 flags, u8* chrRam, u8* bbRam);
void ksNesDraw(ksNesCommonWorkObj* wp, ksNesStateObj* sp);
void ksNesDrawOBJ(ksNesCommonWorkObj* wp, ksNesStateObj* sp, u32 spritePriority);
void ksNesInitAudio();
void ksNesExitAudio();
void ksNesInitModule();

struct ksNesModule {
  void (*initAudio)();
  void (*exitAudio)();
  u32 (*getAudioStream)();
  int (*reset)(ksNesCommonWorkObj*, ksNesStateObj*, u32, u8*, u8*);
  void (*emuFrame)(ksNesCommonWorkObj*, ksNesStateObj*, u32);
  void (*pushResetButton)(ksNesStateObj*);
  void (*draw)(ksNesCommonWorkObj*, ksNesStateObj*);
  void (*drawInit)(ksNesCommonWorkObj*);
};
CHECK_SIZEOF(ksNesModule, 0x20)
extern ksNesModule* sNesModule;

#endif
