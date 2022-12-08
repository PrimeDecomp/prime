#include "Kyoto/Animation/CTransition.hpp"

#include "Kyoto/Animation/CMetaTransFactory.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

CTransition::CTransition(CInputStream& in)
: x0_id(in.Get<uint>())
, x4_animA(in.Get<uint>())
, x8_animB(in.Get<uint>())
, xc_trans(CMetaTransFactory::CreateMetaTrans(in)) {}
