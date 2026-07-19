#include "ansi_fp.h"
#include <limits.h>
#include <locale.h>
#include <math.h>
#include <stdio.h>
#include <float.h>
#include <errno.h>
#include <ctype.h>

enum scan_states {
  start = 0x0001,
  sig_start = 0x0002,
  leading_sig_zeroes = 0x0004,
  int_digit_loop = 0x0008,
  frac_start = 0x0010,
  frac_digit_loop = 0x0020,
  sig_end = 0x0040,
  exp_start = 0x0080,
  leading_exp_digit = 0x0100,
  leading_exp_zeroes = 0x0200,
  exp_digit_loop = 0x0400,
  finished = 0x0800,
  failure = 0x1000,
  nan_state = 0x2000,
  infin_state = 0x4000,
  hex_state = 0x8000
};

enum hex_scan_states {
  not_hex = 0x0000,
  hex_start = 0x0001,
  hex_leading_sig_zeroes = 0x0002,
  hex_int_digit_loop = 0x0004,
  hex_frac_digit_loop = 0x0008,
  hex_sig_end = 0x0010,
  hex_exp_start = 0x0020,
  hex_leading_exp_digit = 0x0040,
  hex_leading_exp_zeroes = 0x0080,
  hex_exp_digit_loop = 0x0100
};

#define MAX_SIG_DIG 20

#define FINAL_STATE(scan_state) (scan_state & (finished | failure))

#define SUCCESS(scan_state)                                                                        \
  (scan_state & (leading_sig_zeroes | int_digit_loop | frac_digit_loop | leading_exp_zeroes |      \
                 exp_digit_loop | finished))

#define FETCH() (count++, (*ReadProc)(ReadProcArg, 0, __GetChar))
#define UNFETCH(c) (*ReadProc)(ReadProcArg, c, __UngetChar)

long double __strtold(int max_width, int (*ReadProc)(void*, int, int), void* ReadProcArg,
                      int* chars_scanned, int* overflow) {
  int scan_state = start;
  int hex_scan_state = not_hex;
  int count = 0;
  int spaces = 0;
  int c;
  decimal d = {0, 0, 0, {0, ""}};
  int sig_negative = 0;
  int exp_negative = 0;
  long exp_value = 0;
  int exp_adjust = 0;
  long double result;
  int sign_detected = 0;

  unsigned char* chptr = (unsigned char*)&result;
  unsigned char uch, uch1;
  int ui;
  int chindex;
  int NibbleIndex;
  int expsign = 0;
  int exp_digits = 0;
  int intdigits = 0;
  int RadixPointFound = 0;
  short exponent = 0;
  int dot;
  dot = *(unsigned char*)__lconv.decimal_point;
  *overflow = 0;
  c = FETCH();

  while (count <= max_width && c != EOF && !FINAL_STATE(scan_state)) {

    switch (scan_state) {
    case start:
      if (isspace(c)) {
        c = FETCH();
        count--; 
        spaces++;
        break;
      }

      switch (toupper(c)) {
      case '-':
        sig_negative = 1;

      case '+':
        c = FETCH();
        sign_detected = 1;
        break;

      case 'I':
        c = FETCH();
        scan_state = infin_state;
        break;

      case 'N':
        c = FETCH();
        scan_state = nan_state;
        break;

      default:
        scan_state = sig_start;
        break;
      }
      break;

    case infin_state: {
      int i = 1;
      char model[] = "INFINITY";
      while ((i < 8) && (toupper(c) == model[i])) {
        i++;
        c = FETCH();
      }
      if ((i == 3) || (i == 8)) {
        if (sig_negative)
          result = -INFINITY;
        else
          result = INFINITY;
        *chars_scanned = spaces + i + sign_detected;
        return (result);
      } else
        scan_state = failure;
      break;
    }

    case nan_state: {
      int i = 1, j = 0;
      char model[] = "NAN(";
      char nan_arg[32] = "";
      while ((i < 4) && (toupper(c) == model[i])) {
        i++;
        c = FETCH();
      }
      if ((i == 3) || (i == 4)) {
        if (i == 4) {
          while ((j < 32) && (isdigit(c) || isalpha(c))) {
            nan_arg[j++] = c;
            c = FETCH();
          }
          if (c != ')') {
            scan_state = failure;
            break;
          } else
            j++;
        }
        nan_arg[j] = '\0';

        if (sig_negative)
          result = -NAN;
        else
          result = NAN;
        *chars_scanned = spaces + i + j + sign_detected;
        return (result);
      } else
        scan_state = failure;
      break;
    }

    case sig_start:
      if (c == dot) {
        scan_state = frac_start;
        c = FETCH();
        break;
      }
      if (!isdigit(c)) {
        scan_state = failure;
        break;
      }
      if (c == '0') {
        c = FETCH();
        if (toupper(c) == 'X') {
          scan_state = hex_state;
          hex_scan_state = hex_start;
        } else
          scan_state = leading_sig_zeroes;
        break;
      }
      scan_state = int_digit_loop;
      break;

    case leading_sig_zeroes:

      if (c == '0') {
        c = FETCH();

        break;
      }
      scan_state = int_digit_loop;
      break;

    case int_digit_loop:
      if (!isdigit(c)) {
        if (c == dot) {
          scan_state = frac_digit_loop;
          c = FETCH();
        } else
          scan_state = sig_end;
        break;
      }
      if (d.sig.length < MAX_SIG_DIG)
        d.sig.text[d.sig.length++] = c;
      else
        exp_adjust++;
      c = FETCH();
      break;

    case frac_start:
      if (!isdigit(c)) {
        scan_state = failure;
        break;
      }
      scan_state = frac_digit_loop;
      break;

    case frac_digit_loop:
      if (!isdigit(c)) {
        scan_state = sig_end;
        break;
      }
      if (d.sig.length < MAX_SIG_DIG)
      {
        if (c != '0' || d.sig.length)
          d.sig.text[d.sig.length++] = c;
        exp_adjust--;
      }
      c = FETCH();
      break;

    case sig_end:
      if (toupper(c) == 'E') {
        scan_state = exp_start;
        c = FETCH();
        break;
      }
      scan_state = finished;
      break;

    case exp_start:
      if (c == '+')
        c = FETCH();
      else if (c == '-') {
        c = FETCH();
        exp_negative = 1;
      }
      scan_state = leading_exp_digit;
      break;

    case leading_exp_digit:
      if (!isdigit(c)) {
        scan_state = failure;
        break;
      }
      if (c == '0') {
        scan_state = leading_exp_zeroes;
        c = FETCH();
        break;
      }
      scan_state = exp_digit_loop;
      break;

    case leading_exp_zeroes:
      if (c == '0') {
        c = FETCH();
        break;
      }
      scan_state = exp_digit_loop;
      break;

    case exp_digit_loop:
      if (!isdigit(c)) {
        scan_state = finished;
        break;
      }
      exp_value = exp_value * 10 + (c - '0');
      if (exp_value > SHRT_MAX)
        *overflow = 1;
      c = FETCH();
      break;

    case hex_state: {
      switch (hex_scan_state) {
      case hex_start:
        for (chindex = 0; chindex < 8; chindex++)
          *(chptr + chindex) = '\0';
        NibbleIndex = 2;
        hex_scan_state = hex_leading_sig_zeroes;
        c = FETCH();
        break;

      case hex_leading_sig_zeroes:
        if (c == '0') {
          c = FETCH();
          break;
        }
        hex_scan_state = hex_int_digit_loop;

        break;

      case hex_int_digit_loop:
        if (!isxdigit(c)) {
          if (c == dot) {
            hex_scan_state = hex_frac_digit_loop;
            c = FETCH();
          } else
            hex_scan_state = hex_sig_end;
          break;
        }
        if (NibbleIndex < 17) {
          intdigits++;
          uch = *(chptr + NibbleIndex / 2);
          ui = toupper(c);
          if (ui >= 'A')
            ui = ui - 'A' + 10;
          else
            ui -= '0';
          uch1 = ui;
          if ((NibbleIndex % 2) != 0)
            uch |= uch1;
          else
            uch |= uch1 << 4;
          *(chptr + NibbleIndex++ / 2) = uch;
          c = FETCH();
        } else
          c = FETCH();

        break;

      case hex_frac_digit_loop:
        if (!isxdigit(c)) {
          hex_scan_state = hex_sig_end;
          break;
        }
        if (NibbleIndex < 17) {
          uch = *(chptr + NibbleIndex / 2);
          ui = toupper(c);
          if (ui >= 'A')
            ui = ui - 'A' + 10;
          else
            ui -= '0';
          uch1 = ui;
          if ((NibbleIndex % 2) != 0)
            uch |= uch1;
          else
            uch |= uch1 << 4;
          *(chptr + NibbleIndex++ / 2) = uch;
          c = FETCH();
        } else
          c = FETCH();
        break;

      case hex_sig_end:
        if (toupper(c) == 'P') {
          hex_scan_state = hex_exp_start;
          exp_digits++;
          c = FETCH();
        } else
          scan_state = finished;
        break;

      case hex_exp_start:
        exp_digits++;
        if (c == '-')
          expsign = 1;
        else if (c != '+') {
          c = UNFETCH(c);
          exp_digits--;
        }
        hex_scan_state = hex_leading_exp_digit;
        c = FETCH();
        break;

      case hex_leading_exp_digit:

        if (!isdigit(c)) {
          scan_state = failure;
          break;
        }
        if (c == '0') {
          exp_digits++;
          hex_scan_state = hex_leading_exp_zeroes;
          c = FETCH();
          break;
        }
        hex_scan_state = hex_exp_digit_loop;
        break;

      case hex_exp_digit_loop:
        if (!isdigit(c)) {
          scan_state = finished;
          break;
        }
        exponent = exponent * 10 + (c - '0');
        if (exp_value > SHRT_MAX)
          *overflow = 1;
        exp_digits++;
        c = FETCH();

        break;
      }
    } break;
    }
  }

  if (!SUCCESS(scan_state)) {
    count = 0;
    *chars_scanned = 0;
  } else {
    count--;
    *chars_scanned = count + spaces;
  }

  UNFETCH(c);

  if (hex_scan_state == not_hex) {

    if (exp_negative)
      exp_value = -exp_value;

    {
      int n = d.sig.length;
      unsigned char* p = &d.sig.text[n];

      while (n-- && *--p == '0')
        exp_adjust++;

      d.sig.length = n + 1;

      if (d.sig.length == 0)
        d.sig.text[d.sig.length++] = '0';
    }

    exp_value += exp_adjust;

    if (exp_value < SHRT_MIN || exp_value > SHRT_MAX)
      *overflow = 1;

    if (*overflow) {
      if (exp_negative) {
        return 0.0;
      } else {
        return sig_negative ? -HUGE_VAL : HUGE_VAL;
      }
    }

    d.exp = exp_value;

    result = __dec2num(&d);

    if (result != 0.0 && result < LDBL_MIN) {
      *overflow = 1;
    } else if (result > LDBL_MAX) {
      *overflow = 1;
      result = HUGE_VAL;
    }

    if (sig_negative && SUCCESS(scan_state))
      result = -result;

    return (result);
  } else {
    unsigned long long *  uptr = (unsigned long long *)&result;

    if (result) {
      if (expsign) {
        exponent = -exponent;
      }
      while ((*(short*)(&result) & 0x00f0) != 0x0010) {
        *uptr >>= 1;
        exponent++;
      }
      exponent += 4 * (intdigits - 1);
      *(short*)&result &= 0x000f;
      *(short*)(&result) |= ((exponent + 1023) << 4);

      *chars_scanned = spaces + sign_detected + NibbleIndex + 1 + exp_digits;
      if (result != 0.0 && result < LDBL_MIN) {
        *overflow = 1;
        result = 0.0;
      } else if (result > LDBL_MAX) {
        *overflow = 1;
        result = HUGE_VAL;
      }
      if (sig_negative) {
        *(short*)(&result) |= 0x8000;
      }
    } else {
      result = 0.0;
    }
    return result;
  }
}

long double strtold(const char* nptr, char** endptr) {
  long double value, abs_value;
  int count, overflow;

  __InStrCtrl isc;
  isc.NextChar = (char*)nptr;
  isc.NullCharDetected = 0;

  value = __strtold(INT_MAX, &__StringRead, (void*)&isc, &count, &overflow);

  if (endptr)
    *endptr = (char*)nptr + count;

  abs_value = fabs(value);

  if (overflow || (value != 0.0 && (abs_value < DBL_MIN || abs_value > DBL_MAX)))
    errno = ERANGE;

  return value;
}

double strtod(const char* str, char** end) {
  long double value, abs_value;
  int count, overflow;

  __InStrCtrl isc;
  isc.NextChar = (char*)str;
  isc.NullCharDetected = 0;

  value = __strtold(INT_MAX, &__StringRead, (void*)&isc, &count, &overflow);

  if (end)
    *end = (char*)str + count;

  abs_value = fabs(value);

  if (overflow || (value != 0.0 && (abs_value < DBL_MIN || abs_value > DBL_MAX)))
    errno = ERANGE;

  return (value);
}

double atof(const char* str) { return (strtod(str, NULL)); }
