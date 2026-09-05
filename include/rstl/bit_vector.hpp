#ifndef MP1_BIT_VECTOR_HPP
#define MP1_BIT_VECTOR_HPP

#include "rstl/vector.hpp"
namespace rstl {
template < typename Alloc = rmemory_allocator >
class bit_vector {
public:
  typedef Alloc allocator_type;
  bit_vector() : x0_(0) {}

  int get_bit(int);
  void set_bit(int, bool);

  int get_real_index(int);
  int get_real_bit_mask(int);

  int get_current_bit() const;

  int get_data_size() const;

  void make_room(int a, int b);

  void PutTo(COutputStream& out) const { x4_bitvector.PutTo(out); }

private:
  int x0_;
  vector< uint > x4_bitvector;
};
} // namespace rstl
#endif // MP1_BIT_VECTOR_HPP
