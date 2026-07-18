#ifndef _TFUNCTOR_HPP
#define _TFUNCTOR_HPP

#include <string.h>

template < class Arg1 >
class TFunctor1 {
  typedef void (*MethodFunctor)(const void* object, const void* func, Arg1 arg);

public:
  typedef void (*Functor)(Arg1);

  operator bool() const {
    for (int i = 0; i < sizeof(mFlags); i++) {
      if (mFlags[i] != 0) {
        return false;
      }
    }

    return true;
  }

  TFunctor1() : mMethod(nullptr), mObject(nullptr) { memset(mFlags, 0, sizeof(mFlags)); }

  void operator()(Arg1 arg) const { (*mMethod)(mObject, mFunc, arg); }

private:
  MethodFunctor mMethod;
  const void* mObject;

  union {
    Functor mFunc;
    char mFlags[(sizeof(Functor) + 15) & ~15];
  };
};

template < typename Arg1, typename Arg2 >
class TFunctor2 {
  typedef void (*MethodFunctor)(const void* object, const void* func, Arg1 arg, Arg2);

public:
  typedef void (*Functor)(Arg1, Arg2);

  TFunctor2() : mMethod(nullptr), mObject(nullptr) { memset(mFlags, 0, sizeof(mFlags)); }

private:
  void* mMethod;
  void* mObject;
  union {
    Functor mFunc;
    char mFlags[(sizeof(Functor) + 15) & ~15];
  };
};

template < typename Arg1, typename Arg2, typename Arg3 >
class TFunctor3 {
  typedef void (*MethodFunctor)(const void* object, const void* func, Arg1 arg, Arg2, Arg3);

public:
  typedef void (*Functor)(Arg1, Arg2, Arg3);
  TFunctor3() : mMethod(nullptr), mObject(nullptr) { memset(mFlags, 0, sizeof(mFlags)); }

private:
  void* mMethod;
  void* mObject;
  union {
    Functor mFunc;
    char mFlags[(sizeof(Functor) + 15) & ~15];
  };
};
#endif // _TFUNCTOR_HPP
