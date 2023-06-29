#ifndef _MUSYX_TXWIN
#define _MUSYX_TXWIN

#include <dolphin/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct STRUCT_WIN {
  s32 x1;
  s32 y1;
  s32 x2;
  s32 y2;
  char* caption;
  u32 flags;
  s32 curr_x;
  s32 curr_y;
  s32 pixel_width;
  s32 pixel_height;
  s32 char_width;
  s32 char_height;
  u16 num_lines;
  char** buffer;
  u16 total_lines;
  u16 curr_output_line;
  u16 curr_view_line;
  void (*refresh)();
  struct STRUCT_WIN* next;
  struct STRUCT_WIN* prev;

} sWIN;

void winInit(void);
void winRefresh(void);
void winLogPrintf(sWIN* handle, char* fmt, ...);
void winPrintfXY(sWIN* handle, s16 char_x, s16 char_y, char* fmt, ...);
void winClearLogWindow(sWIN* handle);
void winSetFontSize(u16 size);

sWIN* winOpenLogWindow(s32 x1, s32 y1, s32 x2, s32 y2, char* caption, u16 num_lines, u32 flags);
sWIN* winOpenWindow(s32 x1, s32 y1, s32 x2, s32 y2, char* caption, void* func, u32 flags);

// WXOpenWindow();

#ifdef __cpluplus
}
#endif // __cpluplus
#endif // _MUSYX_TXWIN
