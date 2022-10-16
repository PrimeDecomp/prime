#ifndef _CGBASUPPORT
#define _CGBASUPPORT

#include "Kyoto/CDvdFile.hpp"
#include "rstl/auto_ptr.hpp"
#include "rstl/single_ptr.hpp"
#include "rstl/rc_ptr.hpp"

class CGBASupport {
public:
  enum EPhase {
    kP_LoadClientPad,
    kP_Standby,
    kP_StartProbeTimeout,
    kP_PollProbe,
    kP_StartJoyBusBoot,
    kP_PollJoyBusBoot,
    kP_DataTransfer,
    kP_Complete,
    kP_Failed
  };

private:
  CDvdFile x0_file;
  uint x28_fileSize;
  rstl::single_ptr<uchar> x2c_buffer;
  rstl::single_ptr<IDvdRequest> x30_dvdReq;
  EPhase x34_phase;
  float x38_timeout;
  uchar x3c_status;
  uint x40_siChan;
  bool x44_fusionLinked;
  bool x45_fusionBeat;

// this is inlined weirdly... this probably should be handled differently
  bool CheckReadyStatus();
public:
  static void Initialize();
  static void GlobalPoll();

  CGBASupport();
  ~CGBASupport();
  bool PollResponse();
  void Update(float dt);
  bool IsReady();
  void InitializeSupport();
  void StartLink();
  EPhase GetPhase() const { return x34_phase; }
  bool IsFusionLinked() const { return x44_fusionLinked; }
  bool IsFusionBeat() const { return x45_fusionBeat; }
};

extern CGBASupport* g_GBA;

#endif // _CGBASUPPORT
