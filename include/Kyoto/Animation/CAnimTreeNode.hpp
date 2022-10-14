#ifndef _CANIMTREENODE
#define _CANIMTREENODE

#include "Kyoto/Animation/IAnimReader.hpp"

class CAnimTreeNode : public IAnimReader {
public:
  virtual CCharAnimTime VGetTimeRemaining() const;

};

#endif // _CANIMTREENODE
