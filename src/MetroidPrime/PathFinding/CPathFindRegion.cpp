#include "MetroidPrime/PathFinding/CPathFindRegion.hpp"

#include "MetroidPrime/PathFinding/CPathFindArea.hpp"

CPFRegionData::CPFRegionData()
: x0_bestPointDistSq(0.f)
, x4_bestPoint(CVector3f::Zero())
, x10_cookie(-1)
, x14_cost(0.f)
, x18_g(0.f)
, x1c_h(0.f)
, x20_parent(nullptr)
, x24_openLess(nullptr)
, x28_openMore(nullptr)
, x2c_parentLink(0) {

};


void CPFRegion::Fixup(CPFArea& area, int& numNodes) {  
}
