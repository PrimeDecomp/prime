#ifndef _CSKINRULES
#define _CSKINRULES

#include "Kyoto/Animation/CVirtualBone.hpp"
#include "Kyoto/CFactoryFnReturn.hpp"

class CCharLayoutInfo;
class CInputStream;
class CModel;
class CPoseAsTransforms;

class CSkinRules {
public:
  CSkinRules(CInputStream& in);
  ~CSkinRules();

  void InitLockedCacheState(const CModel& model);
  static void StartNextTransaction();

  void BuildAccumulatedTransforms(const CPoseAsTransforms& pose,
                                  const CCharLayoutInfo& layoutInfo) const;
  void BuildPoints(volatile void* pipe) const;
  void BuildNormals(volatile void* pipe) const;
  void BuildNormalsFrom(const CVector3f* averageNormals, CVector3f* out) const;
  uint GetNumPoints() const { return x10_vertexCount; }
  uint GetNumNormals() const { return x14_normalCount; }
  int GetNumVirtualBones() const { return x0_virtualBones.size(); }
  const rstl::vector< CVirtualBone >& GetVirtualBones() const { return x0_virtualBones; }

  
  static void ProcessingPoints(int count, ushort** buf);
  static void ProcessingNormals(int count, ushort** buf);
private:
  rstl::vector< CVirtualBone > x0_virtualBones;
  uint x10_vertexCount;
  uint x14_normalCount;
};

CFactoryFnReturn FSkinRulesFactory(const SObjectTag& tag, CInputStream& in, const CVParamTransfer&);
#endif // _CSKINRULES
