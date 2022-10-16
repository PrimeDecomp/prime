#ifndef _CGBASUPPORT
#define _CGBASUPPORT

#include "Kyoto/CDvdFile.hpp"
#include "rstl/auto_ptr.hpp"
#include "rstl/single_ptr.hpp"
#include "rstl/rc_ptr.hpp"

class CGBASupport : public CDvdFile {
public:
  static CGBASupport *g_GBA;

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
  uint x28_fileSize;
  uchar* x2c_buffer;
  IDvdRequest* x30_dvdReq;
  EPhase x34_phase;
  float x38_timeout;
  uchar x3c_status;
  uint x40_siChan;
  bool x44_fusionLinked;
  bool x45_fusionBeat;

// this is inlined weirdly... this probably should be handled differently
  bool CheckReadyStatus();

  uchar *getBuffer() { return x2c_buffer; }

  static u8 CalculateFusionJBusChecksum(const u8* data, size_t len);

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

#endif // _CGBASUPPORT
