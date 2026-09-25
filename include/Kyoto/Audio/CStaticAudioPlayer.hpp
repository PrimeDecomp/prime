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
  static void InstallAICallback();
  static void AICallback();

  void Decode(const ushort* bufIn, ushort* bufOut, int numSamples);
  void DecodeMonoAndMix(ushort* bufIn, ushort* bufOut, int numSamples,
                        int curSample, int sampleEnd, int sampleStart,
                        int vol, g72x_state& state);
  void SetVolume(uchar vol);

private:
  rstl::string mFilepath;
  int mRsfRem;
  int mRsfLength;
  int mCurSamp;
  int mLoopStartSamp;
  int mLoopEndSamp;
  int mCurBuf;
  rstl::auto_ptr< uchar > mDmaLeft;
  rstl::auto_ptr< uchar > mDmaRight;
  rstl::vector< rstl::auto_ptr< CDvdRequest > > mDvdRequests;
  rstl::vector< rstl::auto_ptr< uchar > > mBuffers;
  g72x_state mLeftState;
  g72x_state mRightState;
  ushort mVolume;
};

#endif // _CSTATICAUDIOPLAYER
