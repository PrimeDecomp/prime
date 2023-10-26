#ifndef _CMIDIMANAGER
#define _CMIDIMANAGER

#include "Kyoto/Audio/CSfxHandle.hpp"

#include <rstl/auto_ptr.hpp>
#include <rstl/reserved_vector.hpp>

class CInputStream;
class CMidiManager {
public:
  class CMidiWrapper {
  public:
    CMidiWrapper();
    const CSfxHandle& GetManagerHandle() const;
    const u32 GetAudioSysHandle() const;
    const bool IsAvailable() const;

    void SetAvailable(const bool v);
    void SetAudioSysHandle(const u32 handle);
    const short GetSongId() const;
    void SetMidiHandle(const CSfxHandle& handle);
    void SetSongId(const short id);

  private:
    u32 x0_sysHandle;
    CSfxHandle x4_midiHandle;
    short x8_songId;
    bool xa_available;
  };
  class CMidiData {
  public:
    CMidiData(CInputStream& in);

    const short GetSongId() const { return x0_songId; }
    const short GetGroupId() const { return x2_groupId; }
    const int GetSetupId() const { return x4_setupId; }
    uchar* GetData() const { return x8_data.get(); }
  private:
    short x0_songId;
    short x2_groupId;
    int x4_setupId;
    rstl::auto_ptr< uchar > x8_data;
  };

  static CSfxHandle Play(const CMidiData&, unsigned short fadeTime, bool stopExisting,
                         short volume);
  static void Stop(const CSfxHandle&, unsigned short);
  static void StopAll();

  static CSfxHandle LocateHandle();

  static rstl::reserved_vector< CMidiWrapper, 3 > mMidiWrappers;
};

#endif // _CMIDIMANAGER
