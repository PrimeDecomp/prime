#include "MetroidPrime/RumbleFxTable.hpp"

const SAdsrData skRumbleFxTable[] = {
    /* attackGain, autoReleaseDur, attackDur, decayDur, sustainGain, releaseDur, hasSustain,
       autoRelease */
    SAdsrData(0.48f, 0.f, 0.3f, 0.125f, 0.1f, 0.5f, false, false),
    SAdsrData(0.66f, 0.f, 0.11f, 0.175f, 0.42f, 0.375f, false, false),
    SAdsrData(0.42f, 0.f, 0.1f, 0.225f, 0.225f, 0.f, false, false),
    SAdsrData(1.5f, 0.f, 0.1f, 0.225f, 1.025f, 0.4f, false, false),
    SAdsrData(0.786f, 0.f, 0.1f, 0.16f, 0.655f, 0.255f, false, false),
    SAdsrData(1.2f, 0.f, 0.4f, 0.1f, 1.f, 0.055f, false, false),
    SAdsrData(1.2f, 0.f, 0.05f, 0.3f, 0.4f, 1.1f, false, false),      // CameraShake
    SAdsrData(1.02f, 0.f, 0.065f, 0.175f, 0.85f, 0.9f, false, false), // EscapeSequenceShake
    SAdsrData(0.48f, 0.f, 0.065f, 0.175f, 0.4f, 0.0f, false, false),
    SAdsrData(0.72f, 0.f, 0.01f, 0.01f, 0.6f, 0.1f, false, false),
    SAdsrData(0.24f, 0.f, 0.01f, 0.525f, 0.2f, 0.2f, false, false),
    SAdsrData(2.4f, 0.f, 0.01f, 0.466f, 0.f, 0.f, false, false),      // PlayerBump
    SAdsrData(0.5532f, 0.f, 0.f, 1.345f, 0.f, 1.756f, false, false),  // PlayerGunCharge
    SAdsrData(2.4f, 0.f, 0.01f, 0.125f, 0.25f, 0.5f, false, false),   // PlayerMissileFire
    SAdsrData(0.84f, 0.f, 0.1f, 0.125f, 0.35f, 1.0f, false, false),   // PlayerGrappleFire
    SAdsrData(2.4f, 0.f, 0.1f, 0.225f, 0.38f, 0.3f, false, false),    // PlayerLand
    SAdsrData(0.48f, 0.f, 0.065f, 0.175f, 0.4f, 0.f, false, false),   // IntroBossProjectile (??)
    SAdsrData(0.3024f, 0.f, 0.1f, 1.345f, 0.f, 1.756f, false, false), // PlayerGrappleSwoosh
    SAdsrData(0.72f, 0.f, 0.01f, 0.01f, 0.6f, 0.1f, false, false),
    SAdsrData(1.1904f, 0.f, 0.f, 0.125f, 0.683f, 0.5f, true, false),
    SAdsrData(1.2f, 0.f, 0.01f, 0.621f, 0.f, 0.f, false, false),
    SAdsrData(0.5268f, 0.f, 0.114f, 1.008f, 0.f, 0.325f, false, false),
    SAdsrData(0.6828f, 0.f, 0.f, 0.821f, 0.f, 0.f, false, false),
    SAdsrData(1.8f, 0.f, 0.5f, 0.425f, 0.35f, 0.5f, false, false),
};
