#ifndef _CSTATICAUDIOPLAYER
#define _CSTATICAUDIOPLAYER

#include "dolphin/hw_regs.h"

#include <Kyoto/Audio/g721.h>
#include <rstl/auto_ptr.hpp>
#include <rstl/string.hpp>
#include <rstl/vector.hpp>

class CDvdRequest;
typedef void (*FAudioCallback)();

class CStaticAudioPlayer {
public:
  CStaticAudioPlayer(const rstl::string& filepath, const int w1, const int w2);
  ~CStaticAudioPlayer();

  const bool IsReady() const;
  void StartMixOut();
  void StopMixOut();

  static void MixCallback();
  void DoMix();
  static void RunDMACallback(FAudioCallback);
  static void CancelDMACallback(FAudioCallback);
  void Decode(const ushort* bufIn, ushort* bufOut, int numSamples);
  void DecodeMonoAndMix(const ushort* bufIn, ushort* bufOut, const int curSample,
                        const int sampleEnd, const int sampleStart, ushort vol, g72x_state& state);
  void SetVolume(uchar vol);

private:
  rstl::string x0_filepath;
  int x10_rsfRem;
  int x14_rsfLength;
  int x18_curSamp;
  int x1c_loopStartSamp;
  int x20_loopEndSamp;
  int x24_curBuf;
  rstl::auto_ptr< uchar > x28_dmaLeft;
  rstl::auto_ptr< uchar > x30_dmaRight;
  rstl::vector< rstl::auto_ptr< CDvdRequest > > x38_dvdRequests;
  rstl::vector< rstl::auto_ptr< uchar > > x48_buffers;
  g72x_state x58_leftState;
  g72x_state x8c_rightState;
  ushort xc0_volume;
};

#endif // _CSTATICAUDIOPLAYER
