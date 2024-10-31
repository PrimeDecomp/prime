#ifndef _FLOAT_H_
#define _FLOAT_H_

#ifdef __cplusplus
extern "C" {
#endif

#define FLT_DIG 6
#define FLT_MAX 3.402823466e+38f
#define FLT_EPSILON 1.192092896e-07f
#define FLT_MIN 1.175494351e-38f

#define DBL_DIG 6
#define DBL_MIN 5.8774717e-39
#define DBL_MAX						(* (double *) __double_max)
#define DBL_EPSILON 1.1920929e-07

#define DBL_MANT_DIG 53

#ifdef __cplusplus
}
#endif

#endif
