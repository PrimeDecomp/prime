#ifndef _CANIMTREENODE
#define _CANIMTREENODE

#include "Kyoto/Animation/IAnimReader.hpp"

class CAnimTreeNode : public IAnimReader {
public:
  virtual CAnimTreeEffectiveContribution VGetContributionOfHighestInfluence() const = 0;
  CAnimTreeEffectiveContribution GetContributionOfHighestInfluence() const {
    return VGetContributionOfHighestInfluence();
  }
};

#endif // _CANIMTREENODE
