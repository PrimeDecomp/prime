#include "Kyoto/Particles/CParticleDataFactory.hpp"

#include "Kyoto/Particles/CIntElement.hpp"
#include "Kyoto/Particles/CModVectorElement.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

#define SBIG(v) v

FourCC CParticleDataFactory::GetClassID(CInputStream& in) { return in.ReadLong(); }

bool CParticleDataFactory::GetBool(CInputStream& in) {
  GetClassID(in);
  return in.ReadBool();
}

int CParticleDataFactory::GetInt(CInputStream& in) { return in.ReadInt32(); }

float CParticleDataFactory::GetReal(CInputStream& in) { return in.ReadFloat(); }

CIntElement* CParticleDataFactory::GetIntElement(CInputStream& in) {
  FourCC clsId = GetClassID(in);
  switch (clsId) {
  case SBIG('CNST'): {
    return new CIEConstant(GetInt(in));
  }
  case SBIG('KEYE'):
  case SBIG('KEYP'): {
    return new CIEKeyframeEmitter(in);
  }
  case SBIG('TSCL'): {
    return new CIETimescale(GetRealElement(in));
  }
  case SBIG('DETH'): {
    CIntElement* a = GetIntElement(in);
    CIntElement* b = GetIntElement(in);
    return new CIEDeath(a, b);
  }
  case SBIG('CHAN'): {
    CIntElement* a = GetIntElement(in);
    CIntElement* b = GetIntElement(in);
    CIntElement* c = GetIntElement(in);
    return new CIETimeChain(a, b, c);
  }
  case SBIG('ADD_'): {
    CIntElement* a = GetIntElement(in);
    CIntElement* b = GetIntElement(in);
    return new CIEAdd(a, b);
  }
  case SBIG('MULT'): {
    CIntElement* a = GetIntElement(in);
    CIntElement* b = GetIntElement(in);
    return new CIEMultiply(a, b);
  }
  case SBIG('MODU'): {
    CIntElement* a = GetIntElement(in);
    CIntElement* b = GetIntElement(in);
    return new CIEModulo(a, b);
  }
  case SBIG('RAND'): {
    CIntElement* a = GetIntElement(in);
    CIntElement* b = GetIntElement(in);
    return new CIERandom(a, b);
  }
  case SBIG('IMPL'): {
    return new CIEImpulse(GetIntElement(in));
  }
  case SBIG('ILPT'): {
    return new CIELifetimePercent(GetIntElement(in));
  }
  case SBIG('SPAH'): {
    CIntElement* a = GetIntElement(in);
    CIntElement* b = GetIntElement(in);
    CIntElement* c = GetIntElement(in);
    return new CIESampleAndHold(c, a, b);
  }
  case SBIG('IRND'): {
    CIntElement* a = GetIntElement(in);
    CIntElement* b = GetIntElement(in);
    return new CIEInitialRandom(a, b);
  }
  case SBIG('CLMP'): {
    CIntElement* a = GetIntElement(in);
    CIntElement* b = GetIntElement(in);
    CIntElement* c = GetIntElement(in);
    return new CIEClamp(a, b, c);
  }
  case SBIG('PULS'): {
    CIntElement* a = GetIntElement(in);
    CIntElement* b = GetIntElement(in);
    CIntElement* c = GetIntElement(in);
    CIntElement* d = GetIntElement(in);
    return new CIEPulse(a, b, c, d);
  }
  case SBIG('NONE'): {
    return nullptr;
  }
  case SBIG('RTOI'): {
    CRealElement* a = GetRealElement(in);
    CRealElement* b = GetRealElement(in);
    return new CIERealToInt(a, b);
  }
  case SBIG('SUB_'): {
    CIntElement* a = GetIntElement(in);
    CIntElement* b = GetIntElement(in);
    return new CIESubtract(a, b);
  }
  case SBIG('GTCP'): {
    return new CIEGetCumulativeParticleCount();
  }
  case SBIG('GAPC'): {
    return new CIEGetActiveParticleCount();
  }
  case SBIG('GEMT'): {
    return new CIEGetEmitterTime();
  }
  }
  return nullptr;
}

CModVectorElement* CParticleDataFactory::GetModVectorElement(CInputStream& in) {
  FourCC clsId = GetClassID(in);
  switch (clsId) {
  case SBIG('NONE'): {
    return nullptr;
  }
  case SBIG('CNST'): {
    CRealElement* a = GetRealElement(in);
    CRealElement* b = GetRealElement(in);
    CRealElement* c = GetRealElement(in);
    if (a && b && c && a->IsConstant() && b->IsConstant() && c->IsConstant()) {
      float af, bf, cf;
#if NONMATCHING
      a->GetValue(0, af);
      b->GetValue(0, bf);
      c->GetValue(0, cf);
#else
      // BUG: Fetching from the same element for each
      a->GetValue(0, af);
      a->GetValue(0, bf);
      a->GetValue(0, cf);
#endif
      CModVectorElement* result = new CMVEFastConstant(af, bf, cf);
      delete a;
      delete b;
      delete c;
      return result;
    } else {
      return new CMVEConstant(a, b, c);
    }
  }
  case SBIG('GRAV'): {
    return new CMVEGravity(GetVectorElement(in));
  }
  case SBIG('WIND'): {
    CVectorElement* a = GetVectorElement(in);
    CRealElement* b = GetRealElement(in);
    return new CMVEWind(a, b);
  }
  case SBIG('EXPL'): {
    CRealElement* a = GetRealElement(in);
    CRealElement* b = GetRealElement(in);
    return new CMVEExplode(a, b);
  }
  case SBIG('CHAN'): {
    CModVectorElement* a = GetModVectorElement(in);
    CModVectorElement* b = GetModVectorElement(in);
    CIntElement* c = GetIntElement(in);
    return new CMVETimeChain(a, b, c);
  }
  case SBIG('PULS'): {
    CIntElement* a = GetIntElement(in);
    CIntElement* b = GetIntElement(in);
    CModVectorElement* c = GetModVectorElement(in);
    CModVectorElement* d = GetModVectorElement(in);
    return new CMVEPulse(a, b, c, d);
  }
  case SBIG('IMPL'): {
    CVectorElement* a = GetVectorElement(in);
    CRealElement* b = GetRealElement(in);
    CRealElement* c = GetRealElement(in);
    CRealElement* d = GetRealElement(in);
    bool e = GetBool(in);
    return new CMVEImplosion(a, b, c, d, e);
  }
  case SBIG('LMPL'): {
    CVectorElement* a = GetVectorElement(in);
    CRealElement* b = GetRealElement(in);
    CRealElement* c = GetRealElement(in);
    CRealElement* d = GetRealElement(in);
    bool e = GetBool(in);
    return new CMVELinearImplosion(a, b, c, d, e);
  }
  case SBIG('EMPL'): {
    CVectorElement* a = GetVectorElement(in);
    CRealElement* b = GetRealElement(in);
    CRealElement* c = GetRealElement(in);
    CRealElement* d = GetRealElement(in);
    bool e = GetBool(in);
    return new CMVEExponentialImplosion(a, b, c, d, e);
  }
  case SBIG('SWRL'): {
    CVectorElement* a = GetVectorElement(in);
    CVectorElement* b = GetVectorElement(in);
    CRealElement* c = GetRealElement(in);
    CRealElement* d = GetRealElement(in);
    return new CMVESwirl(a, b, c, d);
  }
  case SBIG('BNCE'): {
    CVectorElement* a = GetVectorElement(in);
    CVectorElement* b = GetVectorElement(in);
    CRealElement* c = GetRealElement(in);
    CRealElement* d = GetRealElement(in);
    bool e = GetBool(in);
    return new CMVEBounce(a, b, c, d, e);
  }
  case SBIG('SPOS'): {
    return new CMVESetPosition(GetVectorElement(in));
  }
  }
  return nullptr;
}
