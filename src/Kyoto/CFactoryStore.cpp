#include "Kyoto/CResFactory.hpp"
#include "Kyoto/IObjectStore.hpp"

struct CDummyFactory : public IObjectStore {
public:
  CDummyFactory(IFactory& factory) : mFactory(factory){};
  CToken GetObj(const SObjectTag& tag, CVParamTransfer xfer) { return CToken(); }
  CToken GetObj(const SObjectTag& tag) { return CToken(); };
  CToken GetObj(const char* name){};
  CToken GetObj(const char* name, CVParamTransfer xfer){};
  bool HasObject(const SObjectTag& tag) { return false; }
  bool ObjectIsLive(const SObjectTag& tag) { return false; }
  IFactory& GetFactory() { return mFactory; }
  void Flush(){};
  void ObjectUnreferenced(const SObjectTag& tag){};

private:
  IFactory& mFactory;
};

TObjOwnerParam< IObjectStore* > DumbTest() {
  CResFactory tmp;
  CDummyFactory pool(tmp);
  return TObjOwnerParam< IObjectStore* >(&pool);
}
