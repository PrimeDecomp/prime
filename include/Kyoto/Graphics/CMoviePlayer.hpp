#ifndef _CMOVIEPLAYER
#define _CMOVIEPLAYER

#include "Kyoto/CDvdFile.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "types.h"

class CMoviePlayer {
public:
  class CTHPTextureSet {
    CTHPTextureSet(void* y, void* u, void* v, void* audio);
    void* Y();
    void* U();
    void* V();
    void* Audio();

    uint GetAudioSamples() const;
    void SetAudioSamples(uint);
    uint GetAudioSamplesConsumed() const;
    void SetAudioSamplesConsumed(uint);
  };
  enum EPlayMode {
    kPM_Stopped = 0,
    kPM_Playing = 1
  };

  static void SetSfxVolume(uchar);

  CMoviePlayer(const char*, float, bool, bool);
  ~CMoviePlayer();

  void Update(float);
  bool DrawVideo() const;
  void DrawFrame(const CVector3f& v1, const CVector3f& v2, const CVector3f& v3, const CVector3f& v4);
  int GetWidth() const;
  int GetHeight() const;
  bool CanDrawVideo() const { return xac_drawState == 0; }
  bool PumpIndexLoad();
  void Rewind();
  void SetPlayMode(EPlayMode mode);
  float GetTotalSeconds() const;
  bool GetIsFullyCached() const;
  bool GetIsMovieFinishedPlaying() const;
  bool IsLooping() const { return (xf4_flags & 0x80) != 0; }
  float GetPlayedSeconds() const;

private:
  CDvdFile x0_movieFile;
  char x28_pad1[0x6c - sizeof(CDvdFile)];
  int x6c_width;
  int x70_height;
  char x74_pad2[0xac - 0x74];
  uint xac_drawState;
  char xb0_pad3[0xf4 - 0xb0];
  uchar xf4_flags;
  char xf5_pad4[0x100 - 0xf5];
};

#endif // _CMOVIEPLAYER
