#include "Kyoto/Alloc/CCallStack.hpp"

CCallStack::CCallStack(uint lineNum, const char* fileAndLine, const char* type)
: x0_line(fileAndLine), x4_type(type) {}

const char* CCallStack::GetFileAndLineText() const { return x0_line; }

const char* CCallStack::GetTypeText() const { return x4_type; }
