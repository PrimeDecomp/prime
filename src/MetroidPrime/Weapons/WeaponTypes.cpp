#include "MetroidPrime/Weapons/WeaponTypes.hpp"
#include "MetroidPrime/Weapons/WeaponCommon.hpp"

#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CAnimPlaybackParms.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"
#include "MetroidPrime/Player/CGameState.hpp"
#include "MetroidPrime/Weapons/CGunWeapon.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayerGun.hpp"

#include "Kyoto/Animation/CPrimitive.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/CResFactory.hpp"
#include "Kyoto/CToken.hpp"

#include "rstl/set.hpp"

namespace NWeaponTypes {

CAssetId get_asset_id_from_name(const char* name) {
  const SObjectTag* tag = gpResourceFactory->GetResourceIdByName(name);
  if (!tag) {
    return kInvalidAssetId;
  }
  return tag->id;
}

void get_token_vector(CAnimData& animData, int animIdx, rstl::vector< CToken >& tokensOut,
                      bool preLock) {
  rstl::set< CPrimitive > prims;
  CAnimPlaybackParms parms(animIdx, -1, 1.f, true);
  animData.GetAnimationPrimitives(parms, prims);
  primitive_set_to_token_vector(animData, prims, tokensOut, preLock);
}

void get_token_vector(const CAnimData& animData, int begin, int end,
                      rstl::vector< CToken >& tokensOut, bool preLock) {
  rstl::set< CPrimitive > prims;
  for (int i = begin; i < end; ++i) {
    CAnimPlaybackParms parms(i, -1, 1.f, true);
    animData.GetAnimationPrimitives(parms, prims);
  }
  primitive_set_to_token_vector(animData, prims, tokensOut, preLock);
}

bool are_tokens_ready(const rstl::vector< CToken >& anims) {
  for (rstl::vector< CToken >::const_iterator it = anims.begin(); it != anims.end(); ++it)
    if (!it->IsLoaded())
      return false;
  return true;
}

void lock_tokens(rstl::vector< CToken >& anims) {
  for (rstl::vector< CToken >::iterator it = anims.begin(); it != anims.end(); ++it)
    it->Lock();
}

void unlock_tokens(rstl::vector< CToken >& anims) {
  for (rstl::vector< CToken >::iterator it = anims.begin(); it != anims.end(); ++it)
    it->Unlock();
}

void primitive_set_to_token_vector(const CAnimData& animData,
                                   const rstl::set< CPrimitive >& primSet,
                                   rstl::vector< CToken >& tokensOut, bool preLock) {

  int eventCount = 0;

  rstl::set< CPrimitive >::const_iterator it = primSet.begin();
  for (; it != primSet.end(); ++it) {
    if (animData.GetEventResourceIdForAnimResourceId(it->GetAnimResId()) != -1)
      ++eventCount;
  }

  tokensOut = rstl::vector< CToken >();
  tokensOut.reserve(primSet.size() + eventCount);

  for (it = primSet.begin(); it != primSet.end(); ++it) {
    int aId = it->GetAnimResId();
    int eId = animData.GetEventResourceIdForAnimResourceId(aId);

    if (eId != -1) {
      CToken token = gpSimplePool->GetObj(SObjectTag('EVNT', eId));
      if (preLock)
        token.Lock();
      tokensOut.push_back(token);
    }

    CToken token = gpSimplePool->GetObj(SObjectTag('ANIM', aId));
    if (preLock)
      token.Lock();
    tokensOut.push_back(token);
  }
}

void do_sound_event(rstl::pair< u16, CSfxHandle >& sfxHandle, int& pitch, bool doPitchBend,
                    uint soundId, float weight, uint flags, float falloff, float maxDist,
                    uchar minVol, uchar maxVol, const CVector3f& posToCam, const CVector3f& pos,
                    TAreaId aid, CStateManager& mgr) {
  if (posToCam.MagSquared() >= maxDist * maxDist)
    return;

  u16 useSfxId = CSfxManager::TranslateSFXID(u16(soundId));
  uint useFlags = 0x1; // Continuous parameter update
  if ((flags & 0x8) != 0)
    useFlags |= 0x8; // Doppler effect
  bool useAcoustics = (flags & 0x80) == 0;

  CAudioSys::C3DEmitterParmData parms(pos, CVector3f::Up(), maxDist, falloff, useFlags, useSfxId,
                                      maxVol, minVol, false, 0x7f);

  if (mgr.Random()->Float() <= weight) {
    if ((soundId & 0x80000000) != 0) {
      if (!sfxHandle.second) {
        CSfxHandle hnd;
        if ((soundId & 0x40000000) != 0)
          hnd = CSfxManager::SfxStart(useSfxId, 0x7f, 0x40, true, CSfxManager::kMedPriority, true,
                                      aid.Value());
        else
          hnd = CSfxManager::AddEmitter(parms, useAcoustics, CSfxManager::kMedPriority, true,
                                        aid.Value());
        if (hnd) {
          sfxHandle.first = useSfxId;
          sfxHandle.second = hnd;
          if (doPitchBend)
            CSfxManager::PitchBend(hnd, pitch);
        }
      } else {
        if (sfxHandle.first == useSfxId) {
          CSfxManager::UpdateEmitter(sfxHandle.second, parms.x0_pos, parms.xc_dir, maxVol);
        } else if ((flags & 0x4) != 0) // Pausable
        {
          CSfxManager::RemoveEmitter(sfxHandle.second);
          CSfxHandle hnd = CSfxManager::AddEmitter(parms, useAcoustics, 0x7f, true, aid.Value());
          if (hnd) {
            sfxHandle.first = useSfxId;
            sfxHandle.second = hnd;
            if (doPitchBend && hnd)
              CSfxManager::PitchBend(hnd, pitch);
          }
        }
      }
    } else {
      CSfxHandle hnd;
      if ((soundId & 0x40000000) != 0)
        hnd = CSfxManager::SfxStart(useSfxId, 1.f, 0.f, true, 0x7f, false, aid.Value());
      else
        hnd = CSfxManager::AddEmitter(parms, useAcoustics, 0x7f, false, aid.Value());
      if (doPitchBend)
        CSfxManager::PitchBend(hnd, pitch);
    }
  }
}

CSfxHandle play_sfx(u16 sfx, bool underwater, bool looped, short pan) {
  CSfxHandle hnd = CSfxManager::SfxStart(sfx, 0x7f, pan, true, CSfxManager::kMaxPriority, looped);
  CSfxManager::SfxSpan(hnd, 0);
  if (underwater)
    CSfxManager::PitchBend(hnd, 0);
  return hnd;
}

} // namespace NWeaponTypes

CDamageInfo CGunWeapon::GetShotDamageInfo(const SShotParam& shotParam, CStateManager& mgr) const {
  // CWeaponMode mode(shotParam.x0_weaponType, 0);
  // float damage = shotParam.x8_damage;
  // float radiusDamage = shotParam.xc_radiusDamage;
  // float radius = shotParam.x10_radius;
  // float knockback = shotParam.x14_knockback;
  // bool noImmunity = shotParam.x18_24_noImmunity;

  CDamageInfo result(
  CWeaponMode(shotParam.x0_weaponType, 0),
  shotParam.x8_damage,
  shotParam.xc_radiusDamage,
  shotParam.x10_radius,
  shotParam.x14_knockback,
  shotParam.x18_24_noImmunity);

  if (gpGameState->GetHardMode()) {
    result.MultiplyDamage(gpGameState->GetHardModeWeaponMultiplier());
  }
  return result;
}


namespace NWeaponTypes {

int get_current_suit(const CStateManager& mgr) {
  const CPlayerState* state = mgr.GetPlayerState();
  CPlayerState::EPlayerSuit suit = state->GetCurrentSuit();
  if (suit < CPlayerState::kPS_Power || suit > CPlayerState::kPS_FusionGravity)
    suit = CPlayerState::kPS_Power;
  if (suit == CPlayerState::kPS_FusionPower)
    suit = CPlayerState::EPlayerSuit(int(suit) + int(state->GetCurrentSuitRaw()));
  return suit;
}

} // namespace NWeaponTypes
