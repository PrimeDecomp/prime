#ifndef _CCHARANIMMEMORYMETRICS
#define _CCHARANIMMEMORYMETRICS

#include <types.h>

class CCharAnimMemoryMetrics {
public:
  enum EAnimSubSystem {
    kASS_Zero,
    kASS_One,
    kASS_Two,
  };

  static void AddToTotalSize(uint size, EAnimSubSystem subSystem);
};

#endif // _CCHARANIMMEMORYMETRICS
