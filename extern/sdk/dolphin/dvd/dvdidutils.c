#include <dolphin/DVDPriv.h>
#include <dolphin/dvd.h>
#include <dolphin/hw_regs.h>

#include <string.h>

BOOL DVDCompareDiskID(DVDDiskID* id1, DVDDiskID* id2) {

  if (id1->gameName[0] && id2->gameName[0] && strncmp(&id1->gameName[0], &id2->gameName[0], 4)) {
    return FALSE;
  }

  if (!id1->company[0] || !id2->company[0] || strncmp(&id1->company[0], &id2->company[0], 2)) {
    return FALSE;
  }

  if (id1->diskNumber != 0xff && id2->diskNumber != 0xff && id1->diskNumber != id2->diskNumber) {
    return FALSE;
  }

  if (id1->gameVersion != 0xff && id2->gameVersion != 0xff &&
      id1->gameVersion != id2->gameVersion) {
    return FALSE;
  }

  return TRUE;
}
