#ifndef _CANIMTREENODE
#define _CANIMTREENODE

#include "Kyoto/Animation/IAnimReader.hpp"
#include "rstl/pair.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/string.hpp"

class CAnimTreeNode : public IAnimReader {
  rstl::string x4_name;

public:
  CAnimTreeNode(const rstl::string&);

  virtual CAnimTreeEffectiveContribution VGetContributionOfHighestInfluence() const = 0;

  virtual uint VGetNumChildren() const = 0;
  virtual rstl::rc_ptr< IAnimReader > VGetBestUnblendedChild() const = 0;
  virtual void VGetWeightedReaders(
      float w, rstl::reserved_vector< rstl::pair< float, IAnimReader* >, 16 >& out) const = 0;

  CAnimTreeEffectiveContribution GetContributionOfHighestInfluence() const {
    return VGetContributionOfHighestInfluence();
  }

  bool IsCAnimTreeNode() const override { return true; }
};

#endif // _CANIMTREENODE
