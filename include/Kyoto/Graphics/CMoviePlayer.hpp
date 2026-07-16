#ifndef _CMOVIEPLAYER
#define _CMOVIEPLAYER

#include "Kyoto/CDvdFile.hpp"
#include "Kyoto/CDvdRequest.hpp"

#include "dolphin/thp/THPInfo.h"
#include "rstl/vector.hpp"
#include "types.h"

#include <dolphin/thp.h>
#include <dolphin/thp/THPFile.h>

class CMoviePlayer {
public:
  enum EPlayMode {
    kPM_Stopped,
    kPM_Playing,
  };

  class CTHPTextureSet {
  public:
    CTHPTextureSet(void* y, void* u, void* v, void* audio);
    void* Y();
    void* U();
    void* V();
    void* Audio();

    uint GetAudioSamples() const;
    void SetAudioSamples(uint);
    uint GetAudioSamplesConsumed() const;
    void SetAudioSamplesConsumed(uint);

  private:
    uchar* x0_;
    uchar* x4_;
    uchar* x8_;
  };
  static void SetSfxVolume(uchar);

  CMoviePlayer(const char* path, float fps, bool loop, bool deinterlace);
  ~CMoviePlayer();

  void Update(float dt);
  void DecodeFromRead(const void* ptr);

  bool DrawVideo() const;
  bool DrawFrame(const CVector3f&, const CVector3f&, const CVector3f&, const CVector3f&);

  EPlayMode GetPlayMode() const { return xe0_playMode; };
  void SetPlayMode(EPlayMode mode);
  float GetTotalSeconds() const;
  float GetPlayedSeconds() const;

private:
  static void VerifyCallbackStatus();
  CDvdFile x0_dvdFile;
  THPHeader x28_header;
  THPFrameCompInfo x58_thpComponents;
  THPVideoInfoOld x6c_videoInfo;
  THPAudioInfoOld x74_audioInfo;
  rstl::vector< CTHPTextureSet > x80_textures;
  rstl::vector< rstl::auto_ptr< uchar > > x90_requestQueue;
  CDvdRequest* xa0_request;
  rstl::auto_ptr< uchar > xa4_requestBuffer;
  uint xb0_nextReadSize;
  uint xb4_nextReadOff;
  uint xb8_readSizeWrapped;
  uint xbc_readOffWrapped;
  uint xc0_curLoadFrame;
  uint xc4_requestFrameWrapped;
  uint xc8_curFrame;
  uint xcc_decdoedTexSlot;
  uint xd0_drawTexSlot;
  uint xd4_audioSlot;
  int xd8_decodedTexCount;
  float xdc_;
  EPlayMode xe0_playMode;
  float xe4_totalSeconds;
  float xe8_;
  float xec_fps;
};

#endif // _CMOVIEPLAYER
