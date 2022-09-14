#include "MetroidPrime/ScriptObjects/CScriptMazeNode.hpp"

#include "Kyoto/CResFactory.hpp"
#include "MetroidPrime/CActorParameters.hpp"

uint CScriptMazeNode::sMazeSeeds[300];

CMazeState::CMazeState(int enterCol, int enterRow, int targetCol, int targetRow)
: x0_rand(0)
, x84_enterCol(enterCol)
, x88_enterRow(enterRow)
, x8c_targetCol(targetCol)
, x90_targetRow(targetRow)
, x94_24_initialized(false) {}

void CMazeState::Reset(int seed) {
  int numCells = NUM_MAZE_CELLS - 1;
  int cellIdx = 0;

  x0_rand = CRandom16(seed);
  x94_24_initialized = false;
  for (int i = 0; i < NUM_MAZE_CELLS; i++) {
    x4_cells[i] = SMazeCell();
  }

  ESide sides[4];
  while (numCells != 0) {
    int acc = 0;
    if (cellIdx - skMazeCols > 0 && GetCell(cellIdx - skMazeCols).IsClosed()) {
      sides[acc++] = kS_Top;
    }
    if (cellIdx < NUM_MAZE_CELLS - 2 && (cellIdx + 1) % skMazeCols != 0 && GetCell(cellIdx + 1).IsClosed()) {
      sides[acc++] = kS_Right;
    }
    if (cellIdx + skMazeCols <= NUM_MAZE_CELLS - 1 && GetCell(cellIdx + skMazeCols).IsClosed()) {
      sides[acc++] = kS_Bottom;
    }
    if (cellIdx > 0 && cellIdx % skMazeCols != 0 && GetCell(cellIdx - 1).IsClosed()) {
      sides[acc++] = kS_Left;
    }

    if (acc != 0) {
      numCells--;

      ESide side = sides[x0_rand.Next() % static_cast< uint >(acc)];
      switch (side) {
      case kS_Top:
        GetCell(cellIdx).x0_24_openTop = true;
        GetCell(cellIdx - skMazeCols).x0_26_openBottom = true;
        cellIdx -= skMazeCols;
        break;
      case kS_Right:
        GetCell(cellIdx).x0_25_openRight = true;
        GetCell(cellIdx + 1).x0_27_openLeft = true;
        cellIdx++;
        break;
      case kS_Bottom:
        GetCell(cellIdx).x0_26_openBottom = true;
        GetCell(cellIdx + skMazeCols).x0_24_openTop = true;
        cellIdx += skMazeCols;
        break;
      case kS_Left:
        GetCell(cellIdx).x0_27_openLeft = true;
        GetCell(cellIdx - 1).x0_25_openRight = true;
        cellIdx--;
        break;
      }
      continue;
    }

    do {
      cellIdx++;
      if (cellIdx > NUM_MAZE_CELLS - 1) {
        cellIdx = 0;
      }
    } while (GetCell(cellIdx).IsClosed());
  }
}

SMazeCell& CMazeState::GetCell(uint col, uint row) { return x4_cells[col + row * skMazeCols]; }

// ????
SMazeCell& CMazeState::GetCell2(uint col, uint row) { return x4_cells[col + row * skMazeCols]; }

static inline int GetRandom(CRandom16& rand, int offset) {
  int tmp = rand.Next();
  return tmp - ((tmp / 5) * 5) + offset;
}

// TODO non-matching
void CMazeState::GenerateObstacles() {
  if (!x94_24_initialized) {
    Initialize();
  }

  int gate1Idx = GetRandom(x0_rand, 9);
  int gate2Idx = GetRandom(x0_rand, 21);
  int gate3Idx = GetRandom(x0_rand, 33);
  int puddle1Idx = GetRandom(x0_rand, 13);
  int puddle2Idx = GetRandom(x0_rand, 29);

  int row = x88_enterRow;
  int col = x84_enterCol;
  int prevRow = x88_enterRow;
  int prevCol = x84_enterCol;

  ESide side = kS_Invalid;
  int idx = 0;

  while (col != x8c_targetCol || row != x90_targetRow) {
    if (idx == gate1Idx || idx == gate2Idx || idx == gate3Idx) {
      switch (side) {
      case kS_Top:
        GetCellInline(col, row).x0_30_gateBottom = true;
        GetCellInline(prevCol, prevRow).x0_28_gateTop = true;
        break;
      case kS_Right:
        GetCellInline(col, row).x0_31_gateLeft = true;
        GetCellInline(prevCol, prevRow).x0_29_gateRight = true;
        break;
      case kS_Bottom:
        GetCellInline(col, row).x0_28_gateTop = true;
        GetCellInline(prevCol, prevRow).x0_30_gateBottom = true;
        break;
      case kS_Left:
        GetCellInline(col, row).x0_29_gateRight = true;
        GetCellInline(prevCol, prevRow).x0_31_gateLeft = true;
        break;
      }
    }

    int nextCol = col;
    int nextRow = row;
    if (row > 1 && side != kS_Bottom && GetCellInline(col, row).x0_24_openTop && GetCellInline(col, row - 1).x1_25_onPath) {
      side = kS_Top;
      nextRow--;
    } else if (row < skMazeRows - 1 && side != kS_Top && GetCellInline(col, row).x0_26_openBottom &&
               GetCellInline(col, row + 1).x1_25_onPath) {
      side = kS_Bottom;
      nextRow++;
    } else if (col > 1 && side != kS_Right && GetCellInline(col, row).x0_27_openLeft && GetCellInline(col - 1, row).x1_25_onPath) {
      side = kS_Left;
      nextCol--;
    } else if (col < skMazeRows && side != kS_Left && GetCellInline(col, row).x0_25_openRight && GetCellInline(col + 1, row).x1_25_onPath) {
      side = kS_Right;
      nextCol++;
    } else {
      return;
    }

    if (idx == puddle1Idx || idx == puddle2Idx) {
      if (col == 0 || row == 0 || col == skMazeCols - 1 || row == skMazeRows - 1) {
        if (idx == puddle1Idx) {
          puddle1Idx++;
        } else {
          puddle2Idx++;
        }
      } else {
        SMazeCell& cell = GetCellInline(col, row);
        cell.x1_24_puddle = true;
        switch (side) {
        case kS_Top:
          GetCellInline(nextCol, nextRow).x0_26_openBottom = false;
          cell.x0_24_openTop = false;
          break;
        case kS_Right:
          GetCellInline(nextCol, nextRow).x0_27_openLeft = false;
          cell.x0_25_openRight = false;
          break;
        case kS_Bottom:
          GetCellInline(nextCol, nextRow).x0_24_openTop = false;
          cell.x0_26_openBottom = false;
          break;
        case kS_Left:
          GetCellInline(nextCol, nextRow).x0_25_openRight = false;
          cell.x0_27_openLeft = false;
          break;
        }
      }
    }

    idx++;
    prevCol = col;
    prevRow = row;
    col = nextCol;
    row = nextRow;
  };
}

// TODO non-matching
void CMazeState::Initialize() {
  int path[NUM_MAZE_CELLS];
  int targetRow = x90_targetRow;
  int targetCol = x8c_targetCol;
  int cellIdx = x84_enterCol + x88_enterRow * skMazeCols;
  path[0] = cellIdx;
  x4_cells[cellIdx].x1_26_checked = true;
  int pathLength = 1;
  while (cellIdx != targetCol + targetRow * skMazeCols) {
    if (x4_cells[cellIdx].x0_24_openTop && !x4_cells[cellIdx - skMazeCols].x1_26_checked) {
      path[pathLength] = cellIdx - skMazeCols;
      pathLength++;
    }
    if (x4_cells[cellIdx].x0_25_openRight && !x4_cells[cellIdx + 1].x1_26_checked) {
      path[pathLength] = cellIdx + 1;
      pathLength++;
    }
    if (x4_cells[cellIdx].x0_26_openBottom && !x4_cells[cellIdx + skMazeCols].x1_26_checked) {
      path[pathLength] = cellIdx + skMazeCols;
      pathLength++;
    }
    if (x4_cells[cellIdx].x0_27_openLeft && !x4_cells[cellIdx - 1].x1_26_checked) {
      path[pathLength] = cellIdx - 1;
      pathLength++;
    }
    if (cellIdx == path[pathLength - 1]) {
      pathLength--;
    }
    cellIdx = path[pathLength - 1];
    x4_cells[cellIdx].x1_26_checked = true;
  }
  for (; pathLength != 0; pathLength--) {
    int idx = path[pathLength];
    if (x4_cells[idx].x1_26_checked) {
      x4_cells[idx].x1_25_onPath = true;
    }
  }
  x94_24_initialized = true;
}

CScriptMazeNode::CScriptMazeNode(TUniqueId uid, const rstl::string& name, const CEntityInfo& info, const CTransform4f& xf, bool active,
                                 int col, int row, int side, const CVector3f& actorPos, const CVector3f& triggerPos,
                                 const CVector3f& effectPos)
: CActor(uid, active, name, info, xf, CModelData::CModelDataNull(), CMaterialList(), CActorParameters::None(), kInvalidUniqueId)
, xe8_col(col)
, xec_row(row)
, xf0_side(static_cast< ESide >(side))
, xf4_gateEffectId(kInvalidUniqueId)
, xf8_msgTimer(1.f)
, xfc_actorId(kInvalidUniqueId)
, x100_actorPos(actorPos)
, x10c_triggerId(kInvalidUniqueId)
, x110_triggerPos(triggerPos)
, x11c_effectId(kInvalidUniqueId)
, x120_effectPos(effectPos)
, x13c_24_hasPuddle(false)
, x13c_25_hasGate(false)
, x13c_26_gateActive(true) {}

void CScriptMazeNode::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CScriptMazeNode::GenerateObjects(CStateManager& mgr) {
  // TODO
}

void CScriptMazeNode::Reset(CStateManager& mgr) {
  mgr.FreeScriptObject(x11c_effectId);
  mgr.FreeScriptObject(xfc_actorId);
  mgr.FreeScriptObject(x10c_triggerId);
  mgr.FreeScriptObject(xf4_gateEffectId);
  x11c_effectId = xfc_actorId = x10c_triggerId = xf4_gateEffectId = kInvalidUniqueId;
}

// TODO non-matching
void CScriptMazeNode::SendScriptMsgs(CStateManager& mgr, EScriptObjectMessage msg) {
  mgr.SendScriptMsg(mgr.ObjectById(x11c_effectId), GetUniqueId(), msg);
  mgr.SendScriptMsg(mgr.ObjectById(xfc_actorId), GetUniqueId(), msg);
  mgr.SendScriptMsg(mgr.ObjectById(x10c_triggerId), GetUniqueId(), msg);
  mgr.SendScriptMsg(mgr.ObjectById(xf4_gateEffectId), GetUniqueId(), msg);
}

void CScriptMazeNode::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) {
  // TODO
}

void CScriptMazeNode::Think(float dt, CStateManager& mgr) {
  if (GetActive() && x13c_25_hasGate) {
    xf8_msgTimer -= dt;
    if (xf8_msgTimer <= 0.f) {
      xf8_msgTimer = 1.f;
      if (x13c_26_gateActive) {
        x13c_26_gateActive = false;
        SendScriptMsgs(mgr, kSM_Deactivate);
      } else {
        x13c_26_gateActive = true;
        SendScriptMsgs(mgr, kSM_Activate);
      }
    }
  }
}

void CScriptMazeNode::LoadMazeSeeds() {
  const SObjectTag* tag = gpResourceFactory->GetResourceIdByName("DUMB_MazeSeeds");
  rstl::auto_ptr< CInputStream > stream = gpResourceFactory->GetResLoader().LoadNewResourceSync(*tag, nullptr);
  for (int i = 0; i < 300; i++) {
    sMazeSeeds[i] = stream->ReadLong();
  }
}

CScriptMazeNode::~CScriptMazeNode() {}
