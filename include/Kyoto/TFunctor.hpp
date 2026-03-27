#ifndef _TFUNCTOR
#define _TFUNCTOR

#include "types.h"
#include <string.h>

template < class A1 >
class TFunctor1 {
public:
  typedef void (*CallOp)(void*, void*, A1);

  TFunctor1() : x0_callop(nullptr), x4_obj(nullptr) {
    x8_ptmf[0] = 0;
    x8_ptmf[1] = 0;
    x8_ptmf[2] = 0;
  }

  template < class T, class MFn >
  TFunctor1(T* obj, MFn fn) {
    int ptmf[3];
    memcpy(ptmf, &fn, sizeof(ptmf));
    x0_callop = &Thunk< T >;
    x4_obj = obj;
    memcpy(x8_ptmf, ptmf, sizeof(x8_ptmf));
  }

  void operator()(A1 a1) const { x0_callop(x4_obj, const_cast< int* >(x8_ptmf), a1); }

private:
  template < class T >
  static void Thunk(void* obj, void* ptmf_data, A1 a1) {
    void (T::*fn)(A1);
    memcpy(&fn, ptmf_data, sizeof(fn));
    (static_cast< T* >(obj)->*fn)(a1);
  }

  CallOp x0_callop;
  void* x4_obj;
  int x8_ptmf[3];
  int x14_pad;
};

template < class A1, class A2, class A3 >
class TFunctor3 {
public:
  typedef void (*CallOp)(void*, void*, A1, A2);

  TFunctor3() : x0_callop(nullptr), x4_obj(nullptr) {
    x8_ptmf[0] = 0;
    x8_ptmf[1] = 0;
    x8_ptmf[2] = 0;
  }

  template < class T, class MFn >
  TFunctor3(T* obj, MFn fn) {
    int ptmf[3];
    memcpy(ptmf, &fn, sizeof(ptmf));
    x0_callop = &Thunk< T >;
    x4_obj = obj;
    memcpy(x8_ptmf, ptmf, sizeof(x8_ptmf));
  }

  void operator()(A1 a1, A2 a2, A3 a3) const {
    x0_callop(x4_obj, const_cast< int* >(x8_ptmf), a1, a2);
  }

private:
  template < class T >
  static void Thunk(void* obj, void* ptmf_data, A1 a1, A2 a2) {
    typedef void (T::*Fn)(A1, A2);
    Fn fn;
    memcpy(&fn, ptmf_data, sizeof(fn));
    (static_cast< T* >(obj)->*fn)(a1, a2);
  }

  CallOp x0_callop;
  void* x4_obj;
  int x8_ptmf[3];
  int x14_pad;
};

#endif // _TFUNCTOR
