#ifndef _ALLOCA_H_
#define _ALLOCA_H_

#ifdef __MWERKS__
#define alloca(x) __alloca(x)
#else
#define alloca(x) __builtin_alloca(x)
#endif

#endif
