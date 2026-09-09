#ifndef _MODWRAPPER_H_
#define _MODWRAPPER_H_

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

void _prolog();
void _epilog();
void _unresolved();

#ifdef __MWERKS__
#define REL_EXPORT __declspec(export)
#else
#define REL_EXPORT
#endif

#ifdef __cplusplus
}
#endif

void ksNesInitModule(void);

#endif // _MODWRAPPER_H_
