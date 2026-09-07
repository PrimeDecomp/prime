#include "stdio.h"

int __StringRead(void* isc, int ch, int Action) {
  char ret;
  __InStrCtrl* iscp = (__InStrCtrl*)isc;
  switch (Action) {
  case __GetChar:
    ret = *(iscp->NextChar);
    if (ret == '\0') {
      iscp->NullCharDetected = 1;
      return (EOF);
    } else {
      iscp->NextChar++;
      return ((unsigned char)ret);
    }
  case __UngetChar:
    if (!iscp->NullCharDetected)  
      iscp->NextChar--;           
    else                          
      iscp->NullCharDetected = 0; 
    return (ch);
  case __CheckForError:
    return (iscp->NullCharDetected);
  }
  return 0; 
}
