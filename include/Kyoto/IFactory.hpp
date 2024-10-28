#ifndef _IFACTORY
#define _IFACTORY

#include <Kyoto/CFactoryFnReturn.hpp>

class SObjectTag;
class CVParamTransfer;
class IObj;

class IFactory {
public:
  virtual ~IFactory() {}
  virtual CFactoryFnReturn Build(const SObjectTag&, const CVParamTransfer&) = 0;
  virtual void BuildAsync(const SObjectTag&, const CVParamTransfer&, IObj**) = 0;
  virtual void CancelBuild(const SObjectTag&) = 0;
  virtual bool CanBuild(const SObjectTag&) = 0;
  virtual const SObjectTag* GetResourceIdByName(const char* name) const = 0;
  // TODO
};

#endif // _IFACTORY
