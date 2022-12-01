#ifndef _RSTL_SET
#define _RSTL_SET

#include "types.h"

#include "rstl/pair.hpp"
#include "rstl/red_black_tree.hpp"
#include "rstl/rmemory_allocator.hpp"

namespace rstl {
template < typename T, typename Cmp = less< T >, typename Alloc = rmemory_allocator >
class set {
public:
  typedef T value_type;

private:
  typedef red_black_tree< T, value_type, 0, identity< T >, Cmp, Alloc > rep_type;

public:
  typedef typename rep_type::iterator iterator;
  typedef typename rep_type::const_iterator const_iterator;

  iterator insert(const value_type& item) { return inner.insert(item); }

  const_iterator begin() const { return inner.begin(); }
  const_iterator end() const { return inner.end(); }
  iterator begin() { return inner.begin(); }
  iterator end() { return inner.end(); }

  iterator find(const T& key) { return inner.find(key); }
  const_iterator find(const T& key) const { return inner.find(key); }

  void erase(iterator it) { inner.erase(it); }
  int size() const { return inner.size(); }
  
private:
  rep_type inner;
};

typedef set< char, char > unk_set;
CHECK_SIZEOF(unk_set, 0x14)

}

#endif // _RSTL_SET
