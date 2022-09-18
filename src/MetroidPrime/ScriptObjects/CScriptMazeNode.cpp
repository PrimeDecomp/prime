#include "MetroidPrime/ScriptObjects/CScriptMazeNode.hpp"

#include "Kyoto/CResFactory.hpp"
#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/CObjectList.hpp"

#include "rstl/algorithm.hpp"

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

const SMazeCell& CMazeState::GetCell(uint col, uint row) const { return x4_cells[col + row * skMazeCols]; }

static inline int GetRandom(CRandom16& rand, int offset) {
  int tmp = rand.Next();
  return tmp - ((tmp / 5) * 5) + offset;
}

void CMazeState::GenerateObstacles() {
  if (!x94_24_initialized) {
    Initialize();
  }

  int gate1Idx = GetRandom(x0_rand, 9);
  int gate2Idx = GetRandom(x0_rand, 21);
  int gate3Idx = GetRandom(x0_rand, 33);
  int puddle1Idx = GetRandom(x0_rand, 13);
  int puddle2Idx = GetRandom(x0_rand, 29);

  int prevCol = x84_enterCol;
  int prevRow = x88_enterRow;
  ESide side = kS_Invalid;
  int idx = 0;
  int col = prevCol;
  int row = prevRow;

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

    int curCol = col;
    int curRow = row;
    if (row > 0 && side != kS_Bottom && GetCellInline(col, row).x0_24_openTop && GetCellInline(col, row - 1).x1_25_onPath) {
      side = kS_Top;
      row--;
    } else if (row < skMazeRows - 1 && side != kS_Top && GetCellInline(col, row).x0_26_openBottom &&
               GetCellInline(col, row + 1).x1_25_onPath) {
      side = kS_Bottom;
      row++;
    } else if (col > 0 && side != kS_Right && GetCellInline(col, row).x0_27_openLeft && GetCellInline(col - 1, row).x1_25_onPath) {
      side = kS_Left;
      col--;
    } else if (col < skMazeCols - 1 && side != kS_Left && GetCellInline(col, row).x0_25_openRight &&
               GetCellInline(col + 1, row).x1_25_onPath) {
      side = kS_Right;
      col++;
    } else {
      return;
    }

#define GetCellInline(c, r) x4_cells[c + r * skMazeCols]
    if (idx == puddle1Idx || idx == puddle2Idx) {
      if (curCol == 0 || curRow == 0 || curCol == skMazeCols - 1 || curRow == skMazeRows - 1) {
        if (idx == puddle1Idx) {
          puddle1Idx++;
        } else {
          puddle2Idx++;
        }
      } else {
        GetCellInline(curCol, curRow).x1_24_puddle = true;
        switch (side) {
        case kS_Top:
          GetCellInline(col, row).x0_26_openBottom = false;
          GetCellInline(curCol, curRow).x0_24_openTop = false;
          break;
        case kS_Right:
          GetCellInline(col, row).x0_27_openLeft = false;
          GetCellInline(curCol, curRow).x0_25_openRight = false;
          break;
        case kS_Bottom:
          GetCellInline(col, row).x0_24_openTop = false;
          GetCellInline(curCol, curRow).x0_26_openBottom = false;
          break;
        case kS_Left:
          GetCellInline(col, row).x0_25_openRight = false;
          GetCellInline(curCol, curRow).x0_27_openLeft = false;
          break;
        }
      }
    }
#undef GetCellInline

    idx++;
    prevCol = curCol;
    prevRow = curRow;
  }
}

void CMazeState::Initialize() {
  int path[NUM_MAZE_CELLS];
  int pathIdx = 0;
  int targetRow = x90_targetRow;
  int targetCol = x8c_targetCol;
  int cellIdx = x84_enterCol + x88_enterRow * skMazeCols;
  int max = targetCol + targetRow * skMazeCols;

  path[pathIdx++] = cellIdx;
  x4_cells[cellIdx].x1_26_checked = true;

  while (cellIdx != max) {
    if (x4_cells[cellIdx].x0_24_openTop && !x4_cells[cellIdx - skMazeCols].x1_26_checked) {
      path[pathIdx++] = cellIdx - skMazeCols;
    }
    if (x4_cells[cellIdx].x0_25_openRight && !x4_cells[cellIdx + 1].x1_26_checked) {
      path[pathIdx++] = cellIdx + 1;
    }
    if (x4_cells[cellIdx].x0_26_openBottom && !x4_cells[cellIdx + skMazeCols].x1_26_checked) {
      path[pathIdx++] = cellIdx + skMazeCols;
    }
    if (x4_cells[cellIdx].x0_27_openLeft && !x4_cells[cellIdx - 1].x1_26_checked) {
      path[pathIdx++] = cellIdx - 1;
    }
    if (cellIdx == path[pathIdx - 1]) {
      pathIdx--;
    }
    cellIdx = path[pathIdx - 1];
    x4_cells[cellIdx].x1_26_checked = true;
  }

  while (pathIdx--) {
    cellIdx = path[pathIdx];
    if (x4_cells[cellIdx].x1_26_checked) {
      x4_cells[cellIdx].x1_25_onPath = true;
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

static inline TUniqueId GenerateObject(CStateManager& mgr, const TEditorId& eid) {
  bool wasGeneratingObject = mgr.IsGeneratingObject();
  mgr.SetIsGeneratingObject(true);
  TUniqueId objUid = mgr.GenerateObject(eid).second;
  mgr.SetIsGeneratingObject(wasGeneratingObject);
  return objUid;
}

// TODO non-matching
// https://decomp.me/scratch/IvHBz
void CScriptMazeNode::GenerateObjects(CStateManager& mgr) {
  rstl::vector< SConnection >::const_iterator conn = GetConnectionList().begin();
  for (; conn != GetConnectionList().end(); ++conn) {
    if (conn->x0_state != kSS_MaxReached || conn->x4_msg != kSM_Activate) {
      continue;
    }
    CEntity* ent = mgr.ObjectById(mgr.GetIdForScript(conn->x8_objId));
    CScriptEffect* scriptEffect = TCastToPtr< CScriptEffect >(ent);
    CScriptActor* scriptActor = TCastToPtr< CScriptActor >(ent);
    CScriptTrigger* scriptTrigger = TCastToPtr< CScriptTrigger >(ent);
    if (!scriptEffect && !scriptActor && !scriptTrigger) {
      continue;
    }
    if (scriptEffect && x13c_25_hasGate) {
      continue;
    }
    // TUniqueId objUid = GenerateObject(mgr, conn->x8_objId);
    TUniqueId objUid = GenerateObject(mgr, conn->x8_objId);
    // bool wasGeneratingObject = mgr.IsGeneratingObject();
    // mgr.SetIsGeneratingObject(true);
    // TUniqueId objUid = mgr.GenerateObject(conn->x8_objId).second;
    // mgr.SetIsGeneratingObject(wasGeneratingObject);
    if (CActor* actor = static_cast< CActor* >(mgr.ObjectById(objUid))) {
      mgr.SendScriptMsg(actor, GetUniqueId(), kSM_Activate);
      if (scriptEffect) {
        actor->SetTranslation(GetTranslation() + x120_effectPos);
        x11c_effectId = objUid;
      }
      if (scriptActor) {
        actor->SetTranslation(GetTranslation() + x100_actorPos);
        xfc_actorId = objUid;
      }
      if (scriptTrigger) {
        actor->SetTranslation(GetTranslation() + x110_triggerPos);
        x10c_triggerId = objUid;
      }
    }
  }
}

void CScriptMazeNode::Reset(CStateManager& mgr) {
  mgr.FreeScriptObject(x11c_effectId);
  mgr.FreeScriptObject(xfc_actorId);
  mgr.FreeScriptObject(x10c_triggerId);
  mgr.FreeScriptObject(xf4_gateEffectId);
  x11c_effectId = xfc_actorId = x10c_triggerId = xf4_gateEffectId = kInvalidUniqueId;
}

void CScriptMazeNode::SendScriptMsgs(CStateManager& mgr, EScriptObjectMessage msg) {
  SendScriptMsg(mgr, mgr.ObjectById(x11c_effectId), GetUniqueId(), msg);
  SendScriptMsg(mgr, mgr.ObjectById(xfc_actorId), GetUniqueId(), msg);
  SendScriptMsg(mgr, mgr.ObjectById(x10c_triggerId), GetUniqueId(), msg);
  SendScriptMsg(mgr, mgr.ObjectById(xf4_gateEffectId), GetUniqueId(), msg);
}

template < typename Iter, typename T >
static inline Iter contains(Iter it, Iter end, const T& value) {
  for (; it != end && *it != value; ++it) {
  }
  return it;
}

template < typename T >
static inline bool contains(const rstl::vector< T >& vec, typename rstl::vector< T >::const_iterator end, const T& value) {
  return rstl::find< rstl::vector< T >::const_iterator, T >(vec.begin(), end, value) != end;
}

void CScriptMazeNode::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) {
  if (GetActive()) {
    switch (msg) {
    case kSM_InitializedInArea: {
      if (mgr.CurrentMaze() == nullptr) {
        rstl::single_ptr< CMazeState > maze = new CMazeState(skEnterCol, skEnterRow, skTargetCol, skTargetRow);
        maze->Reset(sMazeSeeds[mgr.GetActiveRandom()->Next() % 300]);
        maze->Initialize();
        maze->GenerateObstacles();
        mgr.SetCurrentMaze(maze.release());
      }
      break;
    }
    case kSM_Action: {
      bool shouldGenObjs = false;
      if (const CMazeState* maze = mgr.CurrentMaze()) {
        const SMazeCell& cell = maze->GetCell(xe8_col, xec_row);
        if (xf0_side == CMazeState::kS_Top && cell.x0_24_openTop) {
          if (cell.x0_28_gateTop) {
            shouldGenObjs = true;
            x13c_25_hasGate = true;
          }
        } else if (xf0_side == CMazeState::kS_Right && cell.x0_25_openRight) {
          if (cell.x0_29_gateRight) {
            shouldGenObjs = true;
            x13c_25_hasGate = true;
          }
        } else {
          shouldGenObjs = true;
        }
        if (shouldGenObjs) {
          GenerateObjects(mgr);
        }
        if (xf0_side == CMazeState::kS_Right && cell.x1_24_puddle) {
          x13c_24_hasPuddle = true;
        }
        if (x13c_25_hasGate) {
#ifndef NON_MATCHING
          // Unused
          CTransform4f xf = GetTransform();
#endif
          rstl::vector< SConnection >::const_iterator conn = GetConnectionList().begin();
          for (; conn != GetConnectionList().end(); ++conn) {
            if (conn->x0_state != kSS_Modify || conn->x4_msg != kSM_Activate) {
              continue;
            }

            // TUniqueId genObj = GenerateObject(mgr, conn->x8_objId);
            bool wasGeneratingObject = mgr.IsGeneratingObject();
            mgr.SetIsGeneratingObject(true);
            TUniqueId genObj = mgr.GenerateObject(conn->x8_objId).second;
            mgr.SetIsGeneratingObject(wasGeneratingObject);

            xf4_gateEffectId = genObj;
            if (CActor* actor = TCastToPtr< CActor >(mgr.ObjectById(genObj))) {
              actor->SetTranslation(GetTranslation() + x120_effectPos);
              mgr.SendScriptMsg(actor, GetUniqueId(), kSM_Activate);
            }
            break;
          }
        }
        if (x13c_24_hasPuddle) {
          int count = 0;
          rstl::vector< SConnection >::const_iterator conn = GetConnectionList().begin();
          for (; conn != GetConnectionList().end(); ++conn) {
            if ((conn->x0_state == kSS_Closed || conn->x0_state == kSS_DeactivateState) && conn->x4_msg == kSM_Activate) {
              count++;
            }
          }
          x12c_puddleObjectIds.reserve(count);
          conn = GetConnectionList().begin();
          for (; conn != GetConnectionList().end(); ++conn) {
            if ((conn->x0_state == kSS_Closed || conn->x0_state == kSS_DeactivateState) && conn->x4_msg == kSM_Activate) {
              // TUniqueId genObj = GenerateObject(mgr, conn->x8_objId);
              bool wasGeneratingObject = mgr.IsGeneratingObject();
              mgr.SetIsGeneratingObject(true);
              TUniqueId genObj = mgr.GenerateObject(conn->x8_objId).second;
              mgr.SetIsGeneratingObject(wasGeneratingObject);

              x12c_puddleObjectIds.push_back(genObj);
              if (CActor* actor = TCastToPtr< CActor >(mgr.ObjectById(genObj))) {
                actor->SetTransform(GetTransform());
                if (conn->x0_state == kSS_Closed) {
                  mgr.SendScriptMsg(actor, GetUniqueId(), kSM_Activate);
                }
              }
            }
          }
        }
      }
      break;
    }
    case kSM_SetToZero: {
      CMazeState* maze = mgr.CurrentMaze();
      if (x13c_24_hasPuddle && maze != nullptr) {
        rstl::vector< TUniqueId >::const_iterator pend = x12c_puddleObjectIds.end();
        rstl::vector< TUniqueId >::const_iterator pit =
            rstl::find< rstl::vector< TUniqueId >::const_iterator, TUniqueId >(x12c_puddleObjectIds.begin(), pend, uid);
        if (pit != pend) {
        // if (contains(x12c_puddleObjectIds, x12c_puddleObjectIds.end(), uid)) {
          rstl::vector< TUniqueId >::const_iterator it = x12c_puddleObjectIds.begin();
          for (; it != x12c_puddleObjectIds.end(); ++it) {
            if (CEntity* ent = mgr.ObjectById(*it)) {
              if (!ent->GetActive()) {
                mgr.SendScriptMsg(ent, GetUniqueId(), kSM_Activate);
              } else {
                mgr.FreeScriptObject(ent->GetUniqueId());
              }
            }
          }
          CObjectList& list = mgr.GetObjectListById(kOL_All);
          int objIdx = list.GetFirstObjectIndex();
          while (objIdx != -1) {
            if (CScriptMazeNode* node = TCastToPtr< CScriptMazeNode >(list[objIdx])) {
              if (node->xe8_col == xe8_col - 1 && node->xec_row == xec_row && node->xf0_side == CMazeState::kS_Right) {
                SMazeCell& cell = maze->GetCell(xe8_col - 1, xec_row);
                if (!cell.x0_25_openRight) {
                  cell.x0_25_openRight = true;
                  node->Reset(mgr);
                  node->x13c_25_hasGate = false;
                }
              }
              if (node->xe8_col == xe8_col && node->xec_row == xec_row && node->xf0_side == CMazeState::kS_Right) {
                SMazeCell& cell = maze->GetCell(xe8_col, xec_row);
                if (!cell.x0_25_openRight) {
                  cell.x0_25_openRight = true;
                  node->Reset(mgr);
                  node->x13c_25_hasGate = false;
                }
              }
              if (node->xe8_col == xe8_col && node->xec_row == xec_row && node->xf0_side == CMazeState::kS_Top) {
                SMazeCell& cell = maze->GetCell(xe8_col, xec_row);
                if (!cell.x0_24_openTop) {
                  cell.x0_24_openTop = true;
                  node->Reset(mgr);
                  node->x13c_25_hasGate = false;
                }
              }
              if (node->xe8_col == xe8_col && node->xec_row == xec_row + 1 && node->xf0_side == CMazeState::kS_Top) {
                SMazeCell& cell = maze->GetCell(xe8_col, xec_row + 1);
                if (!cell.x0_24_openTop) {
                  cell.x0_24_openTop = true;
                  node->Reset(mgr);
                  node->x13c_25_hasGate = false;
                }
              }
            }
            objIdx = list.GetNextObjectIndex(objIdx);
          }
        }
      }
      break;
    }
    case kSM_Deleted: {
      if (mgr.GetCurrentMaze()) {
        mgr.SetCurrentMaze(nullptr);
      }
      Reset(mgr);
      break;
    }
    case kSM_Deactivate: {
      Reset(mgr);
      break;
    }
    }
  }
  CEntity::AcceptScriptMsg(msg, uid, mgr);
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
