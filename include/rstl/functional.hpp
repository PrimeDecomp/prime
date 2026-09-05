#ifndef _RSTL_FUNCTIONAL
#define _RSTL_FUNCTIONAL

namespace rstl {

template < typename P >
struct identity {
  const P& operator()(const P& it) const { return it; }
};

template < typename T >
struct equal_to {
  typedef T first_argument_type;
  typedef T second_argument_type;
  bool operator()(const T& a, const T& b) const { return a == b; }
};

template < typename Op >
class binder1st {
  Op mOp;
  typename Op::first_argument_type mValue;

public:
  binder1st(const Op& op, const typename Op::first_argument_type& value) : mOp(op), mValue(value) {}
  bool operator()(const typename Op::second_argument_type& value) const {
    return mOp(mValue, value);
  }
};

template < typename Op, typename T >
binder1st< Op > bind1st(const Op& op, const T& value) {
  return binder1st< Op >(op, typename Op::first_argument_type(value));
}

template < typename T >
struct less {
  bool operator()(const T& a, const T& b) const { return a < b; }
};

} // namespace rstl

#endif // _RSTL_FUNCTIONAL
