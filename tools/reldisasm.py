#!/usr/bin/env python3

from capstone import *
from capstone.ppc import *
from elftools.elf.elffile import *
from elftools.elf.sections import *
import sys

# addr -> name
labels = {}

# fileOffset -> {addr, type}
relocations = {}

# index -> {offset, flags, length, is_bss, name}
sectionInfo = []

R_PPC_NONE        = 0
R_PPC_ADDR32      = 1
R_PPC_ADDR24      = 2
R_PPC_ADDR16_LO   = 4
R_PPC_ADDR16_HA   = 6
R_PPC_REL24       = 10
R_DOLPHIN_SECTION = 202
R_DOLPHIN_END     = 203

relocationTypeNames = {
    R_PPC_NONE:        'R_PPC_NONE',
    R_PPC_ADDR32:      'R_PPC_ADDR32',
    R_PPC_ADDR24:      'R_PPC_ADDR24',
    R_PPC_ADDR16_LO:   'R_PPC_ADDR16_LO',
    R_PPC_ADDR16_HA:   'R_PPC_ADDR16_HA',
    R_PPC_REL24:       'R_PPC_REL24',
    R_DOLPHIN_SECTION: 'R_DOLPHIN_SECTION',
    R_DOLPHIN_END:     'R_DOLPHIN_END'
}

def read_u8(offset):
    return filecontent[offset]

def read_u16(offset):
    return (filecontent[offset + 0] << 8) | filecontent[offset + 1]

def read_u32(offset):
    return (filecontent[offset + 0] << 24) | (filecontent[offset + 1] << 16) | (filecontent[offset + 2] << 8) | filecontent[offset + 3]

def add_label(addr, name=None):
    if addr in labels:
        return labels[addr]
    if name == None:
        name = 'lbl_%08X' % addr
    labels[addr] = name
    return name

with open(sys.argv[1], 'rb') as file:
    filecontent = bytearray(file.read())

if len(sys.argv) >= 3:
    # Why is this so slow?
    with open(sys.argv[2], 'rb') as f:
        elf = ELFFile(f)
        elfsymtab = elf.get_section_by_name('.symtab')
        for i in range(0, elfsymtab.num_symbols()):
            sym = elfsymtab.get_symbol(i)
            if len(sym.name) > 0 and not sym.name[0] in {'.', '@'}:
                add_label(sym['st_value'], sym.name)

id = read_u32(0)
numSections = read_u32(0x0C)
sectionInfoOffset = read_u32(0x10)
nameOffset = read_u32(0x14)
nameSize = read_u32(0x18)
version = read_u32(0x1C)
bssSize = read_u32(0x20)
relOffset = read_u32(0x24)
impOffset = read_u32(0x28)
impSize = read_u32(0x2C)
prologSection = read_u8(0x30)
epilogSection = read_u8(0x31)
unresolvedSection = read_u8(0x32)
prolog = read_u32(0x34)
epilog = read_u32(0x38)
unresolved = read_u32(0x3C)

print("# id: %i" % id)
print("# version: %i" % version)
print("# nameoffset: 0x%X, size: 0x%X" % (nameOffset, nameSize))
print("# section table: 0x%X, size: 0x%X" % (sectionInfoOffset, numSections*8))
print("# imp table: 0x%X" % impOffset)
print("# relocs offset: 0x%X" % relOffset)
print("# _prolog:     %i:0x%X" % (prologSection, prolog))
print("# _epilog:     %i:0x%X" % (epilogSection, epilog))
print("# _unresolved: %i:0x%X" % (unresolvedSection, unresolved))
print("# num sections: %i" % numSections)
print('.include "macros.inc"')

#print("%i sections:" % numSections)
# Read sections
for i in range(0, numSections):
    o = sectionInfoOffset + i * 8
    section = {
        'offset': read_u32(o + 0) & ~3,
        'flags': read_u32(o + 0) & 3,
        'length': read_u32(o + 4)
    }
    if section['offset'] == 0 and section['length'] > 0:
        section['is_bss'] = True
    else:
        section['is_bss'] = False
    # Hack: if bss, then set file offset to something unique as to not
    # clash with other symbols
    if section['is_bss']:
        section['offset'] = 0x10000000
    # Determine name
    if section['is_bss']:
        section['name'] = '.bss%i' % i
    elif section['flags'] & 1:
        section['name'] = '.text%i' % i
    else:
        section['name'] = '.data%i' % i
    sectionInfo.append(section)
    print("# offset: 0x%08X\tlength: 0x%08X\tflags: %i" %
        (section['offset'], section['length'], section['flags']))


sectionInfo[1]['name'] = '.text'
sectionInfo[2]['name'] = '.ctors'
sectionInfo[3]['name'] = '.dtors'
sectionInfo[4]['name'] = '.rodata'
sectionInfo[5]['name'] = '.data'
sectionInfo[6]['name'] = '.bss'

# Add labels for prologue and epilogue
if prologSection != 0:
    labels[sectionInfo[prologSection]['offset'] + prolog] = '_prolog'
if epilogSection != 0:
    labels[sectionInfo[epilogSection]['offset'] + epilog] = '_epilog'
if unresolvedSection != 0:
    labels[sectionInfo[unresolvedSection]['offset'] + unresolved] = '_unresolved'

def read_relocation_info(module, o):
    currSection = None
    missingSymbols = False
    while True:
        offset = read_u16(o + 0)
        type = read_u8(o + 2)
        section = read_u8(o + 3)
        addend = read_u32(o + 4)

        # Get address of symbol and add label
        symAddr = 0
        if type == R_DOLPHIN_SECTION:  # R_DOLPHIN_SECTION
            currSection = sectionInfo[section]
            relocOffset = currSection['offset']
        if type < 200:
            if module == 0:  # dol
                symAddr = addend
                if symAddr not in labels:
                    print('error: symbol for 0x%08X not found' % symAddr)
                    missingSymbols = True
            else:  # rel
                symAddr = sectionInfo[section]['offset'] + addend
                labels[symAddr] = 'lbl_%08X' % symAddr

        # Get file offset for relocation
        relocOffset += offset

        if type < 200:
            reloc = {
                'addr': symAddr,
                'type': type,
            }
            relocations[relocOffset] = reloc

        #print(" offset: 0x%04X(+0x%X)\ttype: %s\tsection: %i\tsym_addr: 0x%08X" % (relocOffset, offset, relocationTypeNames[type], section, symAddr))
        #print(" offset: 0x%04X(+0x%X)\ttype: %s\tsection: %i\tsym_addr: ?" % (relocOffset, offset, relocationTypeNames[type], section))
        if type == R_DOLPHIN_END:
            break
        o += 8
    if missingSymbols:
        exit(1)

numImpEntries = impSize / 8
#print("%i imports" % numImpEntries)
for i in range(0, int(numImpEntries)):
    o = impOffset + i * 8
    module = read_u32(o + 0)
    relocation = read_u32(o + 4)
    #print("module: %i, offset: 0x%08X" % (module, relocation))
    read_relocation_info(module, relocation)


cs = Cs(CS_ARCH_PPC, CS_MODE_32 | CS_MODE_BIG_ENDIAN)
cs.detail = True
cs.imm_unsigned = False

def get_relocation_for_offset(o):
    for i in range(o, o + 4):
        if i in relocations:
            return relocations[i]
    return None


def get_label(addr):
    if addr in labels:
        return labels[addr]
    return '0x%08X' % addr

def print_label(label):
    if label in ['_prolog', '_epilog', '_unresolved']:
        label = '.global %s\n%s' % (label, label)
    print('%s:' % label)

def sign_extend_16(value):
    if value > 0 and (value & 0x8000):
        value -= 0x10000
    return value

def disasm_fcmp(inst):
    crd = (inst & 0x03800000) >> 23
    a = (inst & 0x001f0000) >> 16
    b = (inst & 0x0000f800) >> 11
    return 'fcmpo cr%i, f%i, f%i' % (crd, a, b)

def disasm_mspr(inst, mode):
    if (inst & 1):
        return None
    d = (inst & 0x03e00000) >> 21
    a = (inst & 0x001f0000) >> 16
    b = (inst & 0x0000f800) >>11
    spr = (b << 5) + a
    if mode:
        return 'mtspr 0x%X, r%i' % (spr, d)
    else:
        return 'mfspr r%i, 0x%X' % (d, spr)

def disasm_mcrxr(inst):
    if (inst & 0x007ff801):
        return None
    crd = (inst & 0x03800000) >> 23
    return 'mcrxr cr%i' % crd

def disassemble_insn_that_capstone_cant_handle(o, reloc):
    if reloc:
        relocComment = '\t;# %s:%s' % (get_label(reloc['addr']), relocationTypeNames[reloc['type']])
    else:
        relocComment = ''
    raw = read_u32(o)
    asm = None
    idx = (raw & 0xfc000000) >> 26
    idx2 = (raw & 0x000007fe) >> 1
    # mtspr
    if idx == 31 and idx2 == 467:
        asm = disasm_mspr(raw, 1)
    # mfspr
    elif idx == 31 and idx2 == 339:
        asm = disasm_mspr(raw, 0)
    # mcrxr
    elif idx == 31 and idx2 == 512:
        asm = disasm_mcrxr(raw)
    # fcmpo
    elif idx == 63 and idx2 == 32:
        asm = disasm_fcmp(raw)
    # Paired singles
    #elif idx == 4:
    #    asm = disasm_ps(raw)
    #elif idx in {56, 57, 60, 61}:
    #    asm = disasm_ps_mem(raw, idx)
    if asm:
        return asm
    return '.4byte 0x%08X  ;# (error: unknown instruction) %s' % (read_u32(o), relocComment)

def disassemble_insn(o, reloc):
    if reloc:
        relocComment = '\t;# %s:%s' % (get_label(reloc['addr']), relocationTypeNames[reloc['type']])
    else:
        relocComment = ''
    try:
        insn = next(cs.disasm(filecontent[o : o+4], o))
    except StopIteration:
        return disassemble_insn_that_capstone_cant_handle(o, reloc)
    if reloc:
        relocType = reloc['type']
    else:
        relocType = -1

    # handle relocs label
    if insn.id in {PPC_INS_BL, PPC_INS_BC} and relocType == R_PPC_REL24:
        return '%s %s' % (insn.mnemonic, get_label(reloc['addr']))
    if insn.id == PPC_INS_LIS and relocType == R_PPC_ADDR16_HA:
        return '%s %s, %s@ha' % (insn.mnemonic, insn.reg_name(insn.operands[0].reg), get_label(reloc['addr']))
    if insn.id == PPC_INS_ADDI and relocType == R_PPC_ADDR16_LO:
        return '%s %s, %s, %s@l' % (insn.mnemonic, insn.reg_name(insn.operands[0].reg), insn.reg_name(insn.operands[1].reg), get_label(reloc['addr']))
    if insn.id in {
        PPC_INS_LWZ,  PPC_INS_LHZ,  PPC_INS_LHA,  PPC_INS_LBZ,
        PPC_INS_LWZU, PPC_INS_LHZU, PPC_INS_LHAU, PPC_INS_LBZU,
        PPC_INS_LFS,  PPC_INS_LFD,
        PPC_INS_LFSU, PPC_INS_LFDU,
        PPC_INS_STW,  PPC_INS_STH,  PPC_INS_STB,
        PPC_INS_STWU, PPC_INS_STHU, PPC_INS_STBU,
        PPC_INS_STFS, PPC_INS_STFD,
        PPC_INS_STFSU, PPC_INS_STFDU} \
        and relocType == R_PPC_ADDR16_LO:
        return '%s %s, %s@l(%s)' % (insn.mnemonic, insn.reg_name(insn.operands[0].reg), get_label(reloc['addr']), insn.reg_name(insn.operands[1].mem.base))

    # branch target labels
    if insn.id in {PPC_INS_B, PPC_INS_BL, PPC_INS_BDZ, PPC_INS_BDNZ, PPC_INS_BC}:
        if reloc:
            return '%s %s' % (insn.mnemonic, get_label(reloc['addr']))
        #add_label(insn.operands[0].imm)
        #label = labels[insn.operands[0].imm]
        #if label:
        # WTF, capstone?
        if o == 0xAD8C:
            return '%s lbl_0000ADB0' % insn.mnemonic
        return '%s %s' % (insn.mnemonic, get_label(insn.operands[0].imm))

    # misc. fixes

    # Sign-extend immediate values because Capstone is an idiot and thinks all immediates are unsigned
    if insn.id in {PPC_INS_ADDI, PPC_INS_ADDIC, PPC_INS_SUBFIC, PPC_INS_MULLI} and (insn.operands[2].imm & 0x8000):
        return "%s %s, %s, %i  ;# fixed addi" % (insn.mnemonic, insn.reg_name(insn.operands[0].reg), insn.reg_name(insn.operands[1].value.reg), insn.operands[2].imm - 0x10000)
    if (insn.id == PPC_INS_LI or insn.id == PPC_INS_CMPWI) and (insn.operands[1].imm & 0x8000):
        return "%s %s, %i" % (insn.mnemonic, insn.reg_name(insn.operands[0].reg), insn.operands[1].imm - 0x10000)
    # cntlz -> cntlzw
    if insn.id == PPC_INS_CNTLZW:
        return "cntlzw %s" % insn.op_str

    return '%s %s%s' % (insn.mnemonic, insn.op_str, relocComment)

def scan_local_labels(o, size):
    end = o + size
    while o < end:
        reloc = get_relocation_for_offset(o)
        if reloc:
            pass
        else:
            try:
                insn = next(cs.disasm(filecontent[o:o+4], o))
                if insn.id in {PPC_INS_B, PPC_INS_BL, PPC_INS_BC, PPC_INS_BDZ, PPC_INS_BDNZ}:
                    for op in insn.operands:
                        if op.type == PPC_OP_IMM:
                            l = add_label(op.imm)
                            #print('adding local label %s(0x%X) from offset 0x%X' % (l, op.imm, o))
            except StopIteration:
                pass
        o += 4
    #for insn in cs.disasm(filecontent[o:o+size], o):
    #    # branch labels
    #    if insn.id in {PPC_INS_B, PPC_INS_BL, PPC_INS_BC, PPC_INS_BDZ, PPC_INS_BDNZ}:
    #        for op in insn.operands:
    #            if op.type == PPC_OP_IMM:
    #                l = add_label(op.imm)
    #                print('adding local label %s(0x%X) from offset 0x%X' % (l, op.imm, o))

def dump_code(o, size):
    scan_local_labels(o, size)
    end = o + size
    code = filecontent[o : end]
    while o < end:
        if o in labels:
            print_label(labels[o])
        asm = disassemble_insn(o, get_relocation_for_offset(o))
        print('/* %08X %08X */ %s' % (o, read_u32(o), asm))
        #print('/* %08X */ %s' % (read_u32(o), asm))
        o += 4
    if o < end:
        print('incomplete')

# returns True if value is 4-byte aligned
def is_aligned(num):
    return num % 4 == 0

def align(num):
    return (num + 3) & ~3

def is_ascii(code):
    if code >= 0x20 and code <= 0x7E:  # normal characters
        return True
    if code in [0x09, 0x0A]:  # tab, newline
        return True
    return False

# returns True if all elements are zero
def is_all_zero(arr):
    for val in arr:
        if val != 0:
            return False
    return True

# returns string of comma-separated hex bytes
def hex_bytes(data):
    return ', '.join('0x%02X' % n for n in data)

# reads a string starting at pos
def read_string(data, pos):
    text = ''
    while pos < len(data) and is_ascii(data[pos]):
        text += chr(data[pos])
        pos += 1
    if pos < len(data) and data[pos] == 0:
        return text
    return ''

# escapes special characters in the string for use in a C string literal
def escape_string(text):
    return text.replace('\\','\\\\').replace('"','\\"').replace('\n','\\n').replace('\t','\\t')

def output_data_range(secNum, o, end):
    print('    # 0x%X' % o)
    if not is_aligned(o):
        print('    .byte ' + hex_bytes(filecontent[o:align(o)]))
        o = align(o)
    while o < (end & ~3):
        # Try to see if this is a string.
        string = read_string(filecontent, o)
        if len(string) >= 4 and secNum == 5:  # strings are only in .data
            strEnd = o + len(string)+1
            if is_aligned(strEnd) or is_all_zero(filecontent[strEnd : align(strEnd)-strEnd]):
                print('    .asciz \"%s"' % escape_string(string))
                if not is_aligned(strEnd):
                    print('    .balign 4')
                o = align(strEnd)
                continue
        # Not a string
        reloc = get_relocation_for_offset(o)
        if reloc:
            type = reloc['type']
            if type == R_PPC_ADDR32:
                value = labels[reloc['addr']]
            else:
                print('dunno what to do about %s here' % relocationTypeNames[type])
        else:
            value = '0x%08X' % read_u32(o)
        print('    .4byte %s' % value)
        o += 4
    if o < end:
        print('    .byte ' + hex_bytes(filecontent[o:end]))
    return


def dump_data(secNum, o, size):
    end = o + size
    lastPos = o
    while o < end:
        if o in labels:
            if o - lastPos > 0:
                output_data_range(secNum, lastPos, o)
            print_label(labels[o])
            lastPos = o
        o += 1
    if o - lastPos > 0:
        output_data_range(secNum, lastPos, o)
    return


def output_bss_range(start, end):
    print('    .skip 0x%X' % (end - start))

def dump_bss(o, size):
    end = o + size
    lastPos = o
    while o < end:
        if o in labels:
            if o - lastPos > 0:
                output_bss_range(lastPos, o)
            print_label(labels[o])
            lastPos = o
        o += 1
    if o - lastPos > 0:
        output_bss_range(lastPos, o)
    return


for i in range(0, numSections):
    section = sectionInfo[i]
    if section['offset'] == 0 and section['length'] == 0:
        continue
    print('# %i' % i)
    print('.section %s' % section['name'])
    if section['is_bss']:
        # bss section
        dump_bss(section['offset'], section['length'])
    elif section['flags'] & 1:
        # code section
        dump_code(section['offset'], section['length'])
    elif section['offset'] != 0:
        # data section
        dump_data(i, section['offset'], section['length'])
    print('')
