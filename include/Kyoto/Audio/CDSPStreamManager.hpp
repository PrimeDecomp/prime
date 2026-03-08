#ifndef _CDSPSTREAMMANAGER
#define _CDSPSTREAMMANAGER

#include "types.h"

#include "Kyoto/Audio/CDSPStream.hpp"
#include "rstl/string.hpp"

struct SDSPStreamInfo;

class CDSPStreamManager {
  friend struct SDSPStreamInfo;

public:
  enum EState { kCDSPSM_Looping, kCDSPSM_Oneshot, kCDSPSM_Preparing };

  CDSPStreamManager();
  CDSPStreamManager(const rstl::string& fileName, int handle, char volume, char oneshot);

  static void Initialize();
  static void Shutdown();
  static int StartStreaming(const rstl::string& fileName, char volume, bool oneshot);
  static void StopStreaming(int handle);
  static void UpdateVolume(int handle, char volume);
  static bool IsStreamAvailable(int handle);
  static bool CanStop(int handle);
  static EState GetStreamState(int handle);

private:
  static int FindUnclaimedStreamIdx();
  static bool FindUnclaimedStereoPair(int& left, int& right);
  static int GetFreeHandleId();
  static int FindClaimedStreamIdx(int handle);
  static void AllocateStream(int idx);
  static void HeaderReadComplete(s32 result, DVDFileInfo* fileInfo);

  bool StartHeaderRead(DVDCallback callback);
  bool fn_80364870();
  void WaitForReadCompletion();

private:
  dspadpcm_header x0_header;
  rstl::string x60_fileName;
  bool x70_24_unclaimed : 1;
  bool x70_25_headerReadCancelled : 1;
  uchar x70_26_headerReadState : 2;
  char x71_companionRight;
  char x72_companionLeft;
  char x73_volume;
  char x74_oneshot;
  uchar x75_pad[3];
  int x78_handleId;
  int x7c_streamId;
  DVDFileInfo x80_dvdFile;
  uchar xbc_pad[4];
};
CHECK_SIZEOF(CDSPStreamManager, 0xC0);

#endif // _CDSPSTREAMMANAGER
