#ifndef _RSTL_ITERATOR
#define _RSTL_ITERATOR

namespace rstl {

struct input_iterator_tag {};
struct output_iterator_tag {};
struct forward_iterator_tag : public input_iterator_tag {};
struct bidirectional_iterator_tag : public forward_iterator_tag {};
struct random_access_iterator_tag : public bidirectional_iterator_tag {};

template < typename It >
typename It::difference_type __distance(It first, It last, forward_iterator_tag) {
  typename It::difference_type result = 0;
  It it = first;
  while (it != last) {
    ++result;
    ++it;
  }
  return result;
}

template < typename It >
inline typename It::difference_type distance(It first, It last) {
  return __distance(first, last, typename It::iterator_category());
}

template < typename It, typename S >
void __advance(It& it, S count, forward_iterator_tag) {
  while (count > 0) {
    ++it;
  }
}

template < typename It, typename S >
inline void advance(It& it, S count) {
  return __advance(it, count, typename It::iterator_category());
}

} // namespace rstl

#endif // _RSTL_ITERATOR
