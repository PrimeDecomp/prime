// C++98 static assert

struct false_type {
  static const int value = 0;
};

struct true_type {
  static const int value = 1;
};

template < int A, int B >
struct _n_is_equal : false_type {};

template < int A >
struct _n_is_equal< A, A > : true_type {};

template < class T, int N >
struct check_sizeof : _n_is_equal< sizeof(T), N > {};

#ifdef __MWERKS__
#define CHECK_SIZEOF(cls, size) extern int cls##_check[check_sizeof< cls, size >::value];
#else
#define CHECK_SIZEOF(cls, size)
#endif
