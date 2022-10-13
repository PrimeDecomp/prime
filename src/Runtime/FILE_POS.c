#include <ansi_files.h>
#include <errno.h>

inline fpos_t _ftell(FILE* file) {
  int charsInUndoBuffer = 0;
  fpos_t position;

  unsigned char tmp_kind = file->mode.file_kind;
  if (!(tmp_kind == __disk_file || tmp_kind == __console_file) || file->state.error) {
    errno = EFPOS;
    return (-1L);
  }

  if (file->state.io_state == __neutral)
    return (file->position);

  position = file->buffer_pos + (file->buffer_ptr - file->buffer);

  if (file->state.io_state >= __rereading) {
    charsInUndoBuffer = file->state.io_state - __rereading + 1;
    position -= charsInUndoBuffer;
  }

  return (position);
}

long ftell(FILE* file) {
  long retval;

  retval = (long)_ftell(file);

  return retval;
}

int _fseek(FILE* file, fpos_t offset, int mode) {
  fpos_t position;
  __pos_proc pos_proc;

  unsigned char tmp_kind = file->mode.file_kind;
  if (!(tmp_kind == __disk_file) || file->state.error) {
    errno = EFPOS;
    return (-1);
  }

  if (file->state.io_state == __writing) {
    if (__flush_buffer(file, NULL) != __no_io_error) {
      set_error(file);
      errno = EFPOS;
      return (-1);
    }
  }

  if (mode == SEEK_CUR) {

    mode = SEEK_SET;

    if ((position = _ftell(file)) < 0)
      position = 0;

    offset += position;
  }

  if ((mode != SEEK_END) && (file->mode.io_mode != __read_write) &&
      ((file->state.io_state == __reading) || (file->state.io_state == __rereading))) {
    if ((offset >= file->position) || offset < file->buffer_pos) {
      file->state.io_state = __neutral;
    } else {
      file->buffer_ptr = file->buffer + (offset - file->buffer_pos);
      file->buffer_len = file->position - offset;
      file->state.io_state = __reading;
    }
  } else {
    file->state.io_state = __neutral;
  }

  if (file->state.io_state == __neutral) {
    if ((pos_proc = file->position_proc) != 0 &&
        (*pos_proc)(file->handle, &offset, mode, file->idle_proc)) {
      set_error(file);
      errno = EFPOS;
      return (-1);
    }

    file->state.eof = 0;
    file->position = offset;
    file->buffer_len = 0;
  }

  return 0;
}

int fseek(FILE * file, long offset, int mode)
{
		fpos_t real_offset = (fpos_t)offset;
		int retval;		
		
		
		retval = _fseek(file, real_offset, mode);


		return(retval);
}
