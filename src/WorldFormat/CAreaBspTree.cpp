#include <WorldFormat/CAreaBspTree.hpp>

#include <Kyoto/Math/CTransform4f.hpp>
#include <Kyoto/Streams/CInputStream.hpp>

CAreaBspTree::CAreaBspTree(CInputStream& in, const CTransform4f& xf) {
  in.ReadLong();
  in.ReadShort();
  in.ReadShort();
}
