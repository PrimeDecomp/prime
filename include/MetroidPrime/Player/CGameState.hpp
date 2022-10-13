#ifndef _CGAMESTATE
#define _CGAMESTATE

#include "types.h"

#include "MetroidPrime/Player/CGameOptions.hpp"
#include "MetroidPrime/Player/CHintOptions.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"
#include "MetroidPrime/Player/CSystemOptions.hpp"
#include "MetroidPrime/Player/CWorldState.hpp"
#include "MetroidPrime/Player/CWorldTransManager.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/rc_ptr.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

class CGameState {
public:
  CGameState();
  CGameState(CInputStream& in, int saveIdx);

  void ReadSystemOptions(CInputStream& in);
  void PutTo(COutputStream& out) const;
  void WriteSystemOptions(COutputStream& out);

  rstl::rc_ptr< CPlayerState >& PlayerState();
  CAssetId CurrentWorldAssetId();
  void WriteBackupBuf();

  void ImportPersistentOptions(const CSystemOptions&);
  void ExportPersistentOptions(CSystemOptions&);

  CSystemOptions& SystemOptions() { return xa8_systemOptions; }
  CGameOptions& GameOptions() { return x17c_gameOptions; }
  CHintOptions& HintOptions() { return x1f8_hintOptions; }
  uint& SaveIdx() { return x20c_saveIdx; }
  u64& CardSerial() { return x210_cardSerial; }
  rstl::vector< uchar >& BackupBuf() { return x218_backupBuf; }
  u32 GetFileIdx() const { return x20c_saveIdx; }
  void SetFileIdx(u32 idx) { x20c_saveIdx = idx; }
  void SetCardSerial(u64 serial) { x210_cardSerial = serial; }
  u64 GetCardSerial() const { return x210_cardSerial; }
  rstl::rc_ptr< CWorldTransManager >& WorldTransitionManager(); // { return x9c_transManager.GetPtr(); }

  struct GameFileStateInfo {
    double x0_playTime;
    CAssetId x8_mlvlId;
    float xc_health;
    uint x10_energyTanks;
    uint x14_timestamp;
    uint x18_itemPercent;
    float x1c_scanPercent;
    bool x20_hardMode;
  };
  static GameFileStateInfo LoadGameFileState(const void* data);

private:
  rstl::reserved_vector< bool, 128 > x0_;
  CAssetId x84_mlvlId;
  rstl::vector< CWorldState > x88_worldStates;
  rstl::rc_ptr< CPlayerState > x98_playerState;
  rstl::rc_ptr< CWorldTransManager > x9c_transManager;
  double xa0_playTime;
  CSystemOptions xa8_systemOptions;
  CGameOptions x17c_gameOptions;
  CHintOptions x1f8_hintOptions;
  uint x20c_saveIdx;
  u64 x210_cardSerial;
  rstl::vector< uchar > x218_backupBuf;
  bool x228_24_hardMode : 1;
  bool x228_25_initPowerupsAtFirstSpawn : 1;
};

extern CGameState* gpGameState;

#endif // _CGAMESTATE
