#ifndef _CANIMSOURCEREADER
#define _CANIMSOURCEREADER

#include "Kyoto/Animation/IAnimReader.hpp"

class CAnimSourceInfo : public IAnimReader {
public:
  CCharAnimTime GetAnimationDuration() const;

private:
};

#endif // _CANIMSOURCEREADER
