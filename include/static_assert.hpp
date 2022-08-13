// C++98 static assert

template < bool expr >
struct do_static_assert;

template <>
struct do_static_assert< true > {
  static const char test;
};

struct false_type {
  static const bool value = false;
};

struct true_type {
  static const bool value = true;
};

template < int A, int B >
struct _n_is_equal : false_type {};

template < int A >
struct _n_is_equal< A, A > : true_type {};

template < class T, int N >
struct check_sizeof : _n_is_equal< sizeof(T), N > {};

#ifdef __MWERKS__
#define CHECK_SIZEOF(cls, size)                                                                                                            \
  static void cls##_check() { do_static_assert< check_sizeof< cls, size >::value >::test; }
#else
#define CHECK_SIZEOF(cls, size)
#endif