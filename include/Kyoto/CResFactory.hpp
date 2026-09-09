#ifndef _CRESFACTORY
#define _CRESFACTORY

#include "types.h"

#include "Kyoto/CFactoryMgr.hpp"
#include "Kyoto/CResLoader.hpp"
#include "Kyoto/CVParamTransfer.hpp"
#include "Kyoto/IFactory.hpp"
#include "rstl/auto_ptr.hpp"
#include "rstl/list.hpp"
#include "rstl/map.hpp"

class CDvdRequest;
struct z_stream_s;

class CResFactory : public IFactory {
public:
  ~CResFactory() override;
  rstl::auto_ptr< IObj > Build(const SObjectTag&, const CVParamTransfer&) override;
  void BuildAsync(const SObjectTag&, const CVParamTransfer&, IObj**) override;
  void CancelBuild(const SObjectTag&) override;

  bool CanBuild(const SObjectTag& tag) override { return x4_resLoader.ResourceExists(tag); }

  const SObjectTag* GetResourceIdByName(const char* name) const override {
    return x4_resLoader.GetResourceIdByName(name);
  }

  struct SLoadingData {
    SObjectTag x0_tag;
    rstl::auto_ptr< CDvdRequest > x8_dvdReq;
    IObj** x10_target;
    rstl::auto_ptr< uchar > x14_buffer;
    rstl::auto_ptr< uchar > x1c_decompBuffer;
    rstl::auto_ptr< z_stream_s > x24_zip;
    int x2c_size;
    CResLoader::ECompressionType x30_compression;
    CVParamTransfer x34_params;

    SLoadingData(const SObjectTag& tag, CDvdRequest* request, IObj** target, void* buffer, int size,
                 CResLoader::ECompressionType compression, const CVParamTransfer& params);
    ~SLoadingData();
    bool PumpDecompression(uint time);
  };

  CResFactory();

  FourCC GetResourceTypeById(CAssetId id) { return GetResLoader().GetResourceTypeById(id); }

  rstl::vector< rstl::pair< rstl::string, SObjectTag > > GetResourceIdToNameList() const {
    return x4_resLoader.GetResourceIdToNameList();
  }

  uint ResourceSize(const SObjectTag& tag) { return x4_resLoader.ResourceSize(tag); }

  CDvdRequest* LoadResourceAsync(const SObjectTag& tag, void* buffer) {
    return x4_resLoader.LoadResourceAsync(tag, static_cast< char* >(buffer));
  }

  void AsyncIdle(uint time);

  CResLoader& GetResLoader() { return x4_resLoader; }

  const rstl::vector< CAssetId >* GetTagListForFile(const rstl::string& pak) const {
    return x4_resLoader.GetTagListForFile(pak);
  }

  CInputStream* LoadResourceFromMemorySync(const SObjectTag& tag, const void* extBuf) {
    return x4_resLoader.LoadResourceFromMemorySync(tag, extBuf);
  }

private:
  typedef rstl::list< SLoadingData > LoadList;

  void AddToLoadList(const SLoadingData& data);
  void EraseFromLoadList(const LoadList::iterator& it);
  LoadList::iterator FindInLoadList(const SObjectTag& tag);
  rstl::auto_ptr< IObj > BuildSync(const SObjectTag& tag, const CVParamTransfer& params);
  bool PumpResource(const LoadList::iterator& it, uint time);

  CResLoader x4_resLoader;
  CFactoryMgr x5c_factoryMgr;
  LoadList x84_loadList;
  rstl::map< SObjectTag, LoadList::iterator > x9c_loadMap;
  LoadList xb0_cancelledList;
};
NESTED_CHECK_SIZEOF(CResFactory, SLoadingData, 0x38)
CHECK_SIZEOF(CResFactory, 0xc8)

extern CResFactory* gpResourceFactory;

#endif // _CRESFACTORY
