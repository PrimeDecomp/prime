#include "musyx/musyx_priv.h"


void vsInit() {
  u32 i;
  vs._0 = 0;
  for (i = 0; i < 64; i++) {
    vs._908[i] = 0xFF;
  }

  vs._948 = 0;
  vs._94c = 0;
}

void vsSampleStartNotify() {
  
}

void vsSampleEndNotify() {
  
}
