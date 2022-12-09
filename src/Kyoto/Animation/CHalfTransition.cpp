#include "Kyoto/Animation/CHalfTransition.hpp"

#include "Kyoto/Animation/CMetaTransFactory.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

CHalfTransition::CHalfTransition(CInputStream& in)
: x0_id(in.Get< uint >()), x4_trans(CMetaTransFactory::CreateMetaTrans(in)) {}
