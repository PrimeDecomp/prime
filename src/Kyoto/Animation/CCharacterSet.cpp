#include "Kyoto/Animation/CCharacterSet.hpp"

CCharacterSet::CCharacterSet(CInputStream& in) : mTableCount(in.Get< ushort >()) {
  int count = in.Get< int>();
  mCharacters.reserve(count);
  for (int i = 0; i < count; i++) {
    mCharacters.push_back(in);
  }
}