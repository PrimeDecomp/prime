#ifndef _CMOVIEPLAYER
#define _CMOVIEPLAYER

#include "types.h"

class CMoviePlayer {
public:
 static void SetSfxVolume(uchar);

 CMoviePlayer(const char*, float, bool, bool);
 ~CMoviePlayer();

 void Update(float);
 bool DrawVideo() const;

 private:
  char x0_pad[0x100];
};

#endif // _CMOVIEPLAYER
