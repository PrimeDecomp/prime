#ifndef _ANSI_FP
#define _ANSI_FP

#define SIGDIGLEN 36
typedef struct decimal {
  char sgn;
  char unused;
  short exp;
  struct {
    unsigned char length;
    unsigned char text[SIGDIGLEN];
    unsigned char unused;
  } sig;
} decimal;

typedef struct decform {
  char style;
  char unused;
  short digits;
} decform;


void __num2dec(const decform* f, double x, decimal* d);
double __dec2num(const decimal* d);

#endif // _ANSI_FP
