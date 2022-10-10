#include "MetroidPrime/TGameTypes.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

const TEditorId kInvalidEditorId = TEditorId(-1);
const TUniqueId kInvalidUniqueId = TUniqueId(-1, -1);
const TAreaId kInvalidAreaId = TAreaId(-1);
const TEditorId kUnkId = TEditorId(-1);



TEditorId::TEditorId(CInputStream& in)
: value(in.Get<uint>()) {}
