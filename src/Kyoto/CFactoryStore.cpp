#include "Kyoto/CResFactory.hpp"
#include "Kyoto/IObjectStore.hpp"

struct CDummyFactory : public IObjectStore {
public:
  CDummyFactory(IFactory& factory) : mFactory(factory) {};
  CToken GetObj(const SObjectTag& tag, const CVParamTransfer& xfer) override { return CToken(); }
  CToken GetObj(const SObjectTag& tag) override{ return CToken(); };
  CToken GetObj(const char* name) override{ return CToken(); };
  CToken GetObj(const char* name, const CVParamTransfer& xfer) override { return CToken(); };
  bool HasObject(const SObjectTag& tag) const override{ return false; }
  bool ObjectIsLive(const SObjectTag& tag) const override{ return false; }
  IFactory& GetFactory() const override{ return mFactory; }
  void Flush() override{};
  void ObjectUnreferenced(const SObjectTag& tag) override{};

private:
  IFactory& mFactory;
};

TObjOwnerParam< IObjectStore* > DumbTest() {
  CResFactory tmp;
  CDummyFactory pool(tmp);
  return TObjOwnerParam< IObjectStore* >(&pool);
}
