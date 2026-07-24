#ifndef MP1_TSEGIDMAP_HPP
#define MP1_TSEGIDMAP_HPP

#include <rstl/reserved_vector.hpp>

template < typename T >
class TSegIdMap {
public:
  TSegIdMap(CInputStream& in)
  : x0_boneCount(0)
  , x1_capacity(in.Get< uint >())
  , x8_indirectionMap(100, rstl::pair< char, char >(-1, -1))
  , xd0_nodes(reinterpret_cast< T* >(rs_new char[x1_capacity * sizeof(T)]))
  , xd4_curPrevBone(0) {
    for (int i = 0; i < x1_capacity; i++) {
      CSegId seg(in);
      T node(in);
      insert(seg, node);
    }
  }

  T& operator[](const CSegId& id) { return xd0_nodes[x8_indirectionMap[id.val()].second]; }
  const T& operator[](const CSegId& id) const {
    return xd0_nodes[x8_indirectionMap[id.val()].second];
  }

  void insert(const CSegId& id, const T& value) {
    T* node = &xd0_nodes[x0_boneCount];
    uchar rawId = id.val();
    new (node) T(value);
    x8_indirectionMap[rawId] = rstl::pair< char, char >(xd4_curPrevBone, x0_boneCount);
    xd4_curPrevBone = rawId;
    ++x0_boneCount;
  }

private:
  char x0_boneCount;
  char x1_capacity;
  rstl::reserved_vector< rstl::pair< char, char >, 100 > x8_indirectionMap;
  T* xd0_nodes;
  char xd4_curPrevBone;
};
typedef TSegIdMap< uchar > unk_TSegIdMap;
CHECK_SIZEOF(unk_TSegIdMap, 0xd8)

#endif // MP1_TSEGIDMAP_HPP
