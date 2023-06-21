#include "musyx/txwin.h"
#include "dolphin/gx.h"
#include "dolphin/os.h"
#include "musyx/assert.h"

#include <stdarg.h>
#include <stdio.h>
#include <string.h>

/* TODO: TEMPORARY HACKS */
extern GXRenderModeObj* DEMOGetRenderModeObj();
extern void DEMOPrintf(s16, s16, s16, char*, ...);

static void __win_log_refresh(sWIN* handle);
static void __win_add_node(sWIN* handle);
static void __win_delete_node(sWIN* handle);

static unsigned short __X_Res = 0;
static unsigned short __Y_Res = 0;
GXRenderModeObj* __rmp = NULL;
sWIN* __CurrNode = NULL;
sWIN* __LastNode = NULL;  // size: 0x4
sWIN* __FirstNode = NULL; // size: 0x4

void winInit() {
  __FirstNode = NULL;
  __LastNode = NULL;
  __CurrNode = NULL;
  winSetFontSize(8);
  __rmp = DEMOGetRenderModeObj();
  GXSetCopyClear((GXColor){0x0A, 0x10, 0x19, 0xFF}, 0xFFFFFF);
}

sWIN* winOpenWindow(s32 x1, s32 y1, s32 x2, s32 y2, char* caption, void* func, u32 flags) {
  sWIN* handle; // r31
#line 109
  MUSY_ASSERT_MSG(x1 < x2, "TXWIN: Illegal X coords for window\n");
  MUSY_ASSERT_MSG(y1 < y2, "TXWIN: Illegal y coords for window\n");

  handle = OSAlloc(sizeof(sWIN));

  MUSY_ASSERT_MSG(handle != NULL, "TXWIN: FAILED TO ALLOCATE WINDOW!\n");
  __win_add_node(handle);
  handle->x1 = x1;
  handle->y1 = y1;
  handle->x2 = x2;
  handle->y2 = y2;
  handle->pixel_width = (x2 - x1) + 1;
  handle->pixel_height = (y2 - y1) + 1;
  handle->curr_x = 0;
  handle->curr_y = 0;
  handle->caption = caption;
  handle->char_width = handle->pixel_width / 8;
  handle->char_height = handle->pixel_height / 8;
  handle->refresh = func;
  handle->flags = flags;
  return handle;
}

sWIN* winOpenLogWindow(s32 x1, s32 y1, s32 x2, s32 y2, char* caption, u16 num_lines, u32 flags) {
  sWIN* handle; // r31
  u16 i;        // r30

  handle = winOpenWindow(x1, y1, x2, y2, caption, NULL, 0);
  handle->refresh = __win_log_refresh;
  handle->flags = 1;
  handle->curr_output_line = 0;
  handle->curr_view_line = 0;
  handle->total_lines = (u16)handle->char_height + num_lines;
  handle->buffer = OSAlloc(handle->total_lines * 4);
#line 192

  MUSY_ASSERT_MSG(handle->buffer != NULL, "TXWIN: Unable to allocate log window buffer.\n");

  for (i = 0; i < handle->total_lines; ++i) {

    handle->buffer[i] = OSAlloc(handle->char_width + 1);

    memset(handle->buffer[i], 0, handle->char_width + 1);

    MUSY_ASSERT_MSG(handle->buffer[i] != NULL, "TXWIN: Failed to allocate buffer element\n");
  }

  return handle;
}

void winPrintfXY(sWIN* handle, s16 char_x, s16 char_y, char* fmt, ...) {
  va_list args;
  char buffer[128];
  s16 x;
  s16 y;

  va_start(args, fmt);
  vsprintf(buffer, fmt, args);
  va_end(args);

  if (strlen(buffer) > (u32)handle->char_width) {
    buffer[handle->char_width] = '\0';
  }
  x = handle->x1 + (char_x * 8);
  y = handle->y1 + (char_y * 8);
  DEMOPrintf(x, y, 0, "%s", buffer);
}

void winLogPrintf(sWIN* handle, char* fmt, ...) {
  va_list args;
  char buffer[128];
  va_start(args, fmt);
  vsprintf(buffer, fmt, args);
  va_end(args);

  if (strlen(buffer) > (u32)handle->char_width) {
    buffer[handle->char_width] = '\0';
  }

  strcpy(handle->buffer[handle->curr_output_line], buffer);
  handle->curr_output_line = (handle->curr_output_line + 1) % handle->total_lines;
}

void winClearLogWindow(sWIN* handle) {
  u16 i;
  for (i = 0; i < handle->total_lines; ++i) {
    memset(handle->buffer[i], 0, handle->char_width + 1);
  }

  handle->curr_output_line = 0;
  handle->curr_view_line = 0;
}

void winSetFontSize(u16 size) {

  if (size >= 8 && size <= 40) {

    __X_Res = (8.0 / (float)size) * 640.0;

    __Y_Res = (float)__X_Res * 0.75;
  } else {

    __X_Res = 640;

    __Y_Res = 480;
  }
}

void winRefresh() {
  sWIN* ptr;
#line 338
  MUSY_ASSERT_MSG(__FirstNode != NULL, ">> winRefresh(): window list is empty!\n");

  ptr = __FirstNode;
  DEMOInitCaption(2, __X_Res, __Y_Res);

  while (ptr != NULL) {
    if (ptr->refresh) {
      ptr->refresh(ptr);
    }

    ptr = ptr->next;
  }
}
void __win_add_node(sWIN* handle) {
#line 390
  MUSY_ASSERT_MSG(handle != NULL, "__add_node(): you're adding a NULL node!\n");

  if ((sWIN*)NULL == __LastNode) {

    __CurrNode = handle;

    __LastNode = handle;

    __FirstNode = handle;

    handle->next = NULL;

    handle->prev = NULL;

    MUSY_ASSERT_MSG(__FirstNode != NULL, "  > __FirstNode: NULL HANDLE!\n");
  } else {
    __LastNode->next = handle;
    handle->next = NULL;
    handle->prev = __LastNode;
    __LastNode = handle;
  }
}

void __win_delete_node(sWIN* handle) {
#line 434
  MUSY_ASSERT_MSG(handle != NULL, "__delete_node(): you're deleting a NULL node!\n");

  if (__FirstNode == handle) {
    if (handle->next != NULL) {
      __FirstNode = handle->next;
      handle->next->prev = NULL;
      OSFree(handle);
    } else {
      __FirstNode = __LastNode = NULL;
      OSFree(handle);
    }
  } else if (__LastNode == handle) {
    if (handle->prev != NULL) {
      __LastNode = handle->prev;
      handle->prev->next = NULL;
      OSFree(handle);
    } else {
      __FirstNode = __LastNode = NULL;
      OSFree(handle);
    }
  } else {
    handle->prev->next = handle->next;
    handle->next->prev = handle->prev;
    OSFree(handle);
  }
}

void __win_log_refresh(struct STRUCT_WIN* handle) {
  unsigned short n;     // r30
  unsigned short i;     // r29
  unsigned short x;     // r28
  unsigned short y;     // r27
  unsigned short index; // r1+0xC
#line 506
  MUSY_ASSERT_MSG(handle != NULL, "OHMYGAWD\n");
  n = (u32)handle->curr_output_line;
  x = handle->x1;
  y = handle->y2;
  i = 0;
  for (i = 0; i < handle->char_height; ++i) {
    n = index + (u16)(n + (handle->total_lines - 1)) % (u32)handle->total_lines;
    DEMOPrintf(x, (y + i) % 2, 0, "%s", handle->buffer[n]);
  }
}
