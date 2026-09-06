#ifndef _TFUNCTOR_HPP
#define _TFUNCTOR_HPP

#include "types.h"
#include <string.h>

class CMethodPtrStore {
public:
  typedef void (*DummyFunctor)();
  CMethodPtrStore() { memset(mFuncStorage, 0, sizeof(mFuncStorage)); }
  CMethodPtrStore(const void* method, int size) { memcpy(mFuncStorage, method, size); }
  bool IsNull() const {
    for (int i = 0; i < ARRAY_SIZE(mFuncStorage); i++) {
      if (mFuncStorage[i] != 0) {
        return false;
      }
    }

    return true;
  }

  const void* GetMethodPointer() const { return mFuncStorage; }

private:
  union {
    DummyFunctor mFunc;
    char mFuncStorage[(sizeof(DummyFunctor) + 15) & ~15];
  };
};

template < class Arg1 >
class TFunctor1 {
public:
  typedef void (*Functor)(const void* object, const void* func, Arg1 arg1);

  TFunctor1() : mFunctor(nullptr), mObject(nullptr) {}
  TFunctor1(Functor functor, const void* object, const void* func, int v)
  : mFunctor(functor), mObject(object), mMethod(func, v) {}

  void operator()(Arg1 arg1) const { mFunctor(mObject, mMethod.GetMethodPointer(), arg1); }
  operator bool() const { return !mMethod.IsNull(); }

private:
  Functor mFunctor;
  const void* mObject;
  CMethodPtrStore mMethod;
};

template < class T, typename P1 >
class TNonStaticCallback1 {
public:
  typedef void (T::*MethodPtr)(P1);

  static void Function(const void* object, const void* method, P1 p1) {
    const MethodPtr* m = static_cast< const MethodPtr* >(method);
    MethodPtr _m;
    memcpy(&_m, m, sizeof(_m));
    (static_cast< T* >(const_cast< void* >(object))->*_m)(p1);
  }
};

template < class T, typename P1 >
class TFunctor1FromMethod {
public:
  typedef void (T::*MethodPtr)(P1);
  static TFunctor1< P1 > Make(T& object, MethodPtr method) {
    typedef TNonStaticCallback1< T, P1 > CallbackBridge;
    typedef typename TFunctor1< P1 >::Functor InternalFunctorPtr;

    InternalFunctorPtr bridgeFunc = &CallbackBridge::Function;
    char methodData[sizeof(method)];
    memcpy(methodData, &method, sizeof(method));

    return TFunctor1< P1 >(bridgeFunc, &object, methodData, sizeof(method));
  }
};

template < typename Arg1, typename Arg2 >
class TFunctor2 {
public:
  typedef void (*Functor)(const void* object, const void* func, Arg1 arg, Arg2);

  TFunctor2() : mFunctor(nullptr), mObject(nullptr) {}
  TFunctor2(Functor functor, const void* object, const void* func, int v)
  : mFunctor(functor), mObject(object), mMethod(func, v) {}

  void operator()(Arg1 arg1, Arg2 arg2) const {
    mFunctor(mObject, mMethod.GetMethodPointer(), arg1, arg2);
  }
  operator bool() const { return !mMethod.IsNull(); }

private:
  Functor mFunctor;
  const void* mObject;
  CMethodPtrStore mMethod;
};

template < class T, typename P1, typename P2 >
class TNonStaticCallback2 {
public:
  typedef void (T::*MethodPtr)(P1, P2);

  static void Function(const void* object, const void* method, P1 p1, P2 p2) {
    const MethodPtr* m = static_cast< const MethodPtr* >(method);
    MethodPtr _m;
    memcpy(&_m, m, sizeof(_m));
    (static_cast< T* >(const_cast< void* >(object))->*_m)(p1, p2);
  }
};

template < class T, typename P1, typename P2 >
class TFunctor2FromMethod {
public:
  typedef void (T::*MethodPtr)(P1, P2);
  static TFunctor2< P1, P2 > Make(T& object, MethodPtr method) {
    typedef TNonStaticCallback2< T, P1, P2 > CallbackBridge;
    typedef typename TFunctor2< P1, P2 >::Functor InternalFunctorPtr;

    InternalFunctorPtr bridgeFunc = &CallbackBridge::Function;
    char methodData[sizeof(method)];
    memcpy(methodData, &method, sizeof(method));

    return TFunctor2< P1, P2 >(bridgeFunc, &object, methodData, sizeof(method));
  }
};

template < typename Arg1, typename Arg2, typename Arg3 >
class TFunctor3 {
public:
  typedef void (*Functor)(const void* object, const void* func, Arg1 arg, Arg2, Arg3);

  TFunctor3() : mFunctor(nullptr), mObject(nullptr) {}
  TFunctor3(Functor functor, const void* object, const void* func, int v)
  : mFunctor(functor), mObject(object), mMethod(func, v) {}

  void operator()(Arg1 arg1, Arg2 arg2, Arg3 arg3) const {
    mFunctor(mObject, mMethod.GetMethodPointer(), arg1, arg2, arg3);
  }

  operator bool() const { return !mMethod.IsNull(); }

private:
  Functor mFunctor;
  const void* mObject;
  CMethodPtrStore mMethod;
};

template < class T, typename P1, typename P2, typename P3 >
class TNonStaticCallback3 {
public:
  typedef void (T::*MethodPtr)(P1, P2, P3);

  static void Function(const void* object, const void* method, P1 p1, P2 p2, P3 p3) {
    const MethodPtr* m = static_cast< const MethodPtr* >(method);
    MethodPtr _m;
    memcpy(&_m, m, sizeof(_m));
    (static_cast< T* >(const_cast< void* >(object))->*_m)(p1, p2, p3);
  }
};

template < class T, typename P1, typename P2, typename P3 >
class TFunctor3FromMethod {
public:
  typedef void (T::*MethodPtr)(P1, P2, P3);

  static TFunctor3< P1, P2, P3 > Make(T& object, MethodPtr method) {
    typedef TNonStaticCallback3< T, P1, P2, P3 > CallbackBridge;
    typedef typename TFunctor3< P1, P2, P3 >::Functor InternalFunctorPtr;

    InternalFunctorPtr bridgeFunc = &CallbackBridge::Function;
    char methodData[sizeof(method)];
    memcpy(methodData, &method, sizeof(method));

    return TFunctor3< P1, P2, P3 >(bridgeFunc, &object, methodData, sizeof(method));
  }
};

template < class Arg1, typename R >
class TFunctor1R {
public:
  typedef R (*Functor)(const void* object, const void* func, Arg1 arg1);

  TFunctor1R() : mFunctor(nullptr), mObject(nullptr) {}
  TFunctor1R(Functor functor, const void* object, const void* func, int v)
  : mFunctor(functor)
  , mObject(object)
  , mMethod(func, v) {}

  R operator()(Arg1 arg1) const { return mFunctor(mObject, mMethod.GetMethodPointer(), arg1); }
  operator bool() const { return !mMethod.IsNull(); }

private:
  Functor mFunctor;
  const void* mObject;
  CMethodPtrStore mMethod;
};

template < typename Arg1, typename Arg2, typename R >
class TFunctor2R {
public:
  typedef R (*Functor)(const void* object, const void* func, Arg1 arg1, Arg2 arg2);

  TFunctor2R() : mFunctor(nullptr), mObject(nullptr) {}
  TFunctor2R(Functor functor, const void* object, const void* func, int v)
  : mFunctor(functor)
  , mObject(object)
  , mMethod(func, v) {}

  R operator()(Arg1 arg1, Arg2 arg2) const {
    return mFunctor(mObject, mMethod.GetMethodPointer(), arg1, arg2);
  }
  operator bool() const { return !mMethod.IsNull(); }

private:
  Functor mFunctor;
  const void* mObject;
  CMethodPtrStore mMethod;
};

template < typename Arg1, typename Arg2, typename Arg3, typename R >
class TFunctor3R {
public:
  typedef R (*Functor)(const void* object, const void* func, Arg1 arg1, Arg2 arg2, Arg3 arg3);

  TFunctor3R() : mFunctor(nullptr), mObject(nullptr) {}
  TFunctor3R(Functor functor, const void* object, const void* func, int v)
  : mFunctor(functor)
  , mObject(object)
  , mMethod(func, v) {}

  R operator()(Arg1 arg1, Arg2 arg2, Arg3 arg3) const {
    return mFunctor(mObject, mMethod.GetMethodPointer(), arg1, arg2, arg3);
  }

  operator bool() const { return !mMethod.IsNull(); }

private:
  Functor mFunctor;
  const void* mObject;
  CMethodPtrStore mMethod;
};

#endif // _TFUNCTOR_HPP
