#ifndef _CMOVIEPLAYER
#define _CMOVIEPLAYER

#include "Kyoto/CDvdFile.hpp"
#include "types.h"

class CMoviePlayer {
public:
  static void SetSfxVolume(uchar);

  CMoviePlayer(const char*, float, bool, bool);
  ~CMoviePlayer();

  void Update(float);
  bool DrawVideo() const;

private:
  CDvdFile x0_movieFile;
  uint x84_;
  uint x88_;
  uint x8c_;
  uchar x90_;
  uint x94_;
  uint x98_;
  uint x9c_;
  uint xa0_;
  uint xa4_;
  uint xa8_;
  // char x0_pad[0x100];
};

#endif // _CMOVIEPLAYER
