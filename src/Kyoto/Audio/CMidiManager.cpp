#include "Kyoto/Audio/CSfxHandle.hpp"
#include <Kyoto/Audio/CMidiManager.hpp>

#include "Kyoto/Audio/CAudioSys.hpp"

#include <Kyoto/CFactoryMgr.hpp>
#include <Kyoto/Streams/CInputStream.hpp>

rstl::reserved_vector< CMidiManager::CMidiWrapper, 3 > CMidiManager::mMidiWrappers;

CMidiManager::CMidiWrapper::CMidiWrapper() : x0_sysHandle(0), xa_available(true) {}

const CSfxHandle& CMidiManager::CMidiWrapper::GetManagerHandle() const { return x4_midiHandle; }

const u32 CMidiManager::CMidiWrapper::GetAudioSysHandle() const { return x0_sysHandle; }

const bool CMidiManager::CMidiWrapper::IsAvailable() const { return xa_available; }

const short CMidiManager::CMidiWrapper::GetSongId() const { return x8_songId; }

void CMidiManager::CMidiWrapper::SetAvailable(const bool v) { xa_available = v; }

void CMidiManager::CMidiWrapper::SetAudioSysHandle(const u32 handle) { x0_sysHandle = handle; }

void CMidiManager::CMidiWrapper::SetMidiHandle(const CSfxHandle& handle) { x4_midiHandle = handle; }

void CMidiManager::CMidiWrapper::SetSongId(const short id) { x8_songId = id; }

CSfxHandle CMidiManager::Play(const CMidiData& data, unsigned short fadeTime, bool stopExisting,
                              short volume) {
  bool foundExisting = false;
  u32 sysHandle = 0;
  CSfxHandle handle = LocateHandle();
  if (!handle) {
    return CSfxHandle();
  }
  CMidiWrapper& wrapper = mMidiWrappers[handle.GetIndex()];
  wrapper.SetAvailable(false);
  wrapper.SetMidiHandle(handle);
  if (stopExisting) {
    for (int i = 0; i < mMidiWrappers.size(); ++i) {
      if (mMidiWrappers[i].IsAvailable()) {
        continue;
      }

      if (data.GetSongId() == mMidiWrappers[i].GetSongId()) {
        foundExisting = true;
        sysHandle = mMidiWrappers[i].GetAudioSysHandle();
        mMidiWrappers[i].SetAvailable(true);
      } else {
        Stop(mMidiWrappers[i].GetManagerHandle(), fadeTime);
      }
    }
  }

  if (foundExisting) {
    wrapper.SetAudioSysHandle(sysHandle);
    wrapper.SetSongId(data.GetSongId());
  } else {
    u32 sysHandle = CAudioSys::SeqPlayEx(data.GetGroupId(), data.GetSongId(), data.GetData(), nullptr, 0);
    if (fadeTime != 0) {
      CAudioSys::SeqVolume(0, 0, sysHandle, 0);
    }
    CAudioSys::SeqVolume(volume, fadeTime, sysHandle, 0);
    wrapper.SetAudioSysHandle(sysHandle);
    wrapper.SetSongId(data.GetSongId());
  }

  return handle;
}

void CMidiManager::Stop(const CSfxHandle& handle, ushort fadeTime) {
  if (!handle) {
    return;
  }

  if (handle != mMidiWrappers[handle.GetIndex()].GetManagerHandle()) {
    return;
  }

  u32 sysHandle = mMidiWrappers[handle.GetIndex()].GetAudioSysHandle();
  if (fadeTime == 0) {
    CAudioSys::SeqStop(sysHandle);
  } else {
    CAudioSys::SeqVolume(0, fadeTime, sysHandle, 1);
  }

  mMidiWrappers[handle.GetIndex()].SetAvailable(true);
}

void CMidiManager::StopAll() {
  for (int i = 0; i < mMidiWrappers.size(); ++i) {
    if (!mMidiWrappers[i].IsAvailable()) {
      Stop(mMidiWrappers[i].GetManagerHandle(), 0);
    }
  }
}

CSfxHandle CMidiManager::LocateHandle() {
  for (int i = 0; i < mMidiWrappers.size(); ++i) {
    if (mMidiWrappers[i].IsAvailable()) {
      return CSfxHandle(i);
    }
  }

  if (mMidiWrappers.size() == mMidiWrappers.capacity()) {
    return CSfxHandle();
  }

  mMidiWrappers.push_back(CMidiWrapper());
  return CSfxHandle(mMidiWrappers.size() - 1);
}

CMidiManager::CMidiData::CMidiData(CInputStream& in)
: x0_songId(-1), x2_groupId(-1), x4_setupId(-1) {
  in.ReadLong();
  x0_songId = in.ReadLong();
  x2_groupId = in.ReadLong();
  x4_setupId = in.ReadLong();
  int len = in.ReadInt32();
  x8_data = rs_new uchar[len];
  in.Get(x8_data.get(), len);
}

#pragma inline_max_size(250)
CFactoryFnReturn FMidiDataFactory(const SObjectTag& tag, CInputStream& in, const CVParamTransfer&) {
  return rs_new CMidiManager::CMidiData(in);
}
