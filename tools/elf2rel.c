#include <assert.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

#ifndef MAX
#define MAX(a, b)	(((a) > (b)) ? (a) : (b))
#endif

#ifndef MIN
#define MIN(a, b)	(((a) < (b)) ? (a) : (b))
#endif

#define ARRAY_COUNT(arr) (sizeof(arr)/sizeof((arr)[0]))

#define IS_LITTLE_ENDIAN  (((char *)((uint32_t[]){1}))[0] == 1)

// Relevant portions of elf.h

typedef uint32_t Elf32_Addr;
typedef uint32_t Elf32_Off;
typedef uint32_t Elf32_Word;
typedef	int32_t  Elf32_Sword;
typedef uint16_t Elf32_Half;
typedef uint16_t Elf32_Section;

#define EI_NIDENT (16)

typedef struct
{
  unsigned char     e_ident[EI_NIDENT];        /* Magic number and other info */
  Elf32_Half        e_type;                        /* Object file type */
  Elf32_Half        e_machine;                /* Architecture */
  Elf32_Word        e_version;                /* Object file version */
  Elf32_Addr        e_entry;                /* Entry point virtual address */
  Elf32_Off         e_phoff;                /* Program header table file offset */
  Elf32_Off         e_shoff;                /* Section header table file offset */
  Elf32_Word        e_flags;                /* Processor-specific flags */
  Elf32_Half        e_ehsize;                /* ELF header size in bytes */
  Elf32_Half        e_phentsize;                /* Program header table entry size */
  Elf32_Half        e_phnum;                /* Program header table entry count */
  Elf32_Half        e_shentsize;                /* Section header table entry size */
  Elf32_Half        e_shnum;                /* Section header table entry count */
  Elf32_Half        e_shstrndx;                /* Section header string table index */
} Elf32_Ehdr;

#define EI_CLASS    4            /* File class byte index */
#define ELFCLASS32  1            /* 32-bit objects */

#define EI_DATA            5            /* Data encoding byte index */
#define ELFDATA2MSB 2            /* 2's complement, big endian */

#define EM_PPC            20        /* PowerPC */

typedef struct
{
  Elf32_Word        sh_name;                /* Section name (string tbl index) */
  Elf32_Word        sh_type;                /* Section type */
  Elf32_Word        sh_flags;                /* Section flags */
  Elf32_Addr        sh_addr;                /* Section virtual addr at execution */
  Elf32_Off        sh_offset;                /* Section file offset */
  Elf32_Word        sh_size;                /* Section size in bytes */
  Elf32_Word        sh_link;                /* Link to another section */
  Elf32_Word        sh_info;                /* Additional section information */
  Elf32_Word        sh_addralign;                /* Section alignment */
  Elf32_Word        sh_entsize;                /* Entry size if section holds table */
} Elf32_Shdr;

#define SHT_PROGBITS	  1		/* Program data */
#define SHT_SYMTAB	  2		/* Symbol table */
#define SHT_STRTAB	  3		/* String table */
#define SHT_RELA	  4		/* Relocation entries with addends */
#define SHT_NOBITS	  8		/* Program space with no data (bss) */

#define SHF_ALLOC	     (1 << 1)	/* Occupies memory during execution */
#define SHF_EXECINSTR             (1 << 2)        /* Executable */

typedef struct
{
  Elf32_Word        st_name;                /* Symbol name (string tbl index) */
  Elf32_Addr        st_value;                /* Symbol value */
  Elf32_Word        st_size;                /* Symbol size */
  unsigned char        st_info;                /* Symbol type and binding */
  unsigned char        st_other;                /* Symbol visibility */
  Elf32_Section        st_shndx;                /* Section index */
} Elf32_Sym;

#define ELF32_ST_TYPE(val)        ((val) & 0xf)

/* Legal values for ST_TYPE subfield of st_info (symbol type).  */

#define STT_NOTYPE	0		/* Symbol type is unspecified */
#define STT_FUNC    2            /* Symbol is a code object */

typedef struct
{
  Elf32_Addr	r_offset;		/* Address */
  Elf32_Word	r_info;			/* Relocation type and symbol index */
  Elf32_Sword	r_addend;		/* Addend */
} Elf32_Rela;

/* How to extract and insert information held in the r_info field.  */

#define ELF32_R_SYM(val)		((val) >> 8)
#define ELF32_R_TYPE(val)		((val) & 0xff)

#define R_PPC_NONE		0
#define R_PPC_ADDR32		1	/* 32bit absolute address */
#define R_PPC_ADDR24		2	/* 26bit address, 2 bits ignored.  */
#define R_PPC_ADDR16		3	/* 16bit absolute address */
#define R_PPC_ADDR16_LO		4	/* lower 16bit of absolute address */
#define R_PPC_ADDR16_HI		5	/* high 16bit of absolute address */
#define R_PPC_ADDR16_HA		6	/* adjusted high 16bit */
#define R_PPC_ADDR14		7	/* 16bit address, 2 bits ignored */
#define R_PPC_ADDR14_BRTAKEN	8
#define R_PPC_ADDR14_BRNTAKEN	9
#define R_PPC_REL24		10	/* PC relative 26 bit */
#define R_PPC_REL14		11	/* PC relative 16 bit */

#define R_DOLPHIN_SECTION 202
#define R_DOLPHIN_END     203

// end elf.h

struct RelHeader
{
    uint32_t moduleId;               // unique module identifier
    uint32_t nextModule;             // always 0; filled in at runtime
    uint32_t prevModule;             // always 0; filled in at runtime
    uint32_t sectionCount;           // number of sections in the section table
    uint32_t sectionTableOffset;     // file position of section table
    uint32_t moduleNameOffset;       // offset of the module name in the string table (not in this file)
    uint32_t moduleNameSize;         // size of the module name in the string table (not in this file)
    uint32_t formatVersion;          // REL format version
    uint32_t bssSize;                // size of the BSS section
    uint32_t relocationTableOffset;  // file position of relocation entries
    uint32_t importTableOffset;      // file position of import table
    uint32_t importTableSize;        // size of import table
    uint8_t  prologSection;          // section in which the _prolog function is in, or 0 if absent
    uint8_t  epilogSection;          // section in which the _epilog function is in, or 0 if absent
    uint8_t  unresolvedSection;      // section in which the _unresolved function is in, or 0 if absent
    uint8_t  pad33;
    uint32_t prologOffset;           // offset of the _prolog function in its section
    uint32_t epilogOffset;           // offset of the _epilog function in its section
    uint32_t unresolvedOffset;       // offset of the _unresolved function in its section
};

struct RelRelocEntry
{
    int      type;           // relocation type
    int      patchSection;   // section which relocation patch applies to
    uint32_t patchOffset;    // offset where this relocation patch applies
    int      symbolSection;  // section of symbol
    uint32_t symbolAddr;     // for dol symbols, absolute address. for rel symbols, section offset
};

struct RelImportEntry
{
    int moduleId;                  // ID of module from which the relocation symbols are imported from
    struct RelRelocEntry *relocs;  // relocation entries
    int relocsCount;               // number of relocation entries
    size_t relocsOffset;           // file offset to relocation entries
};

struct Module
{
    int moduleId;          // unique identifier of the module; the id of the DOL is always 0
    const char *filename;  // name of the module's ELF file
    FILE *file;            // ELF file
    Elf32_Ehdr ehdr;       // ELF header
    Elf32_Sym *symtab;     // ELF symbol table entries
    int symtabCount;       // number of ELF symbol table entries
    char *strtab;          // ELF string table
    size_t strtabSize;     // size of ELF string table
};

static struct Module dolModule;
static struct Module relModule;
static struct RelImportEntry *imports;
static int importsCount = 0;
static int minSectionCount = 0;
static int undefinedSymError = 0;

static void fatal_error(const char *msg, ...)
{
    va_list args;

    va_start(args, msg);
    vfprintf(stderr, msg, args);
    va_end(args);
    exit(1);
}

// Swaps byte order if the system is little endian

static void bswap32(uint32_t *ptr)
{
    if (IS_LITTLE_ENDIAN)
        *ptr = (((*ptr >> 24) & 0xFF) << 0)
             | (((*ptr >> 16) & 0xFF) << 8)
             | (((*ptr >> 8)  & 0xFF) << 16)
             | (((*ptr >> 0)  & 0xFF) << 24);
}

static void bswap16(uint16_t *ptr)
{
    if (IS_LITTLE_ENDIAN)
        *ptr = (((*ptr >> 8) & 0xFF) << 0)
             | (((*ptr >> 0) & 0xFF) << 8);
}

static int read_checked(FILE *f, size_t offset, void *out, size_t size)
{
    return fseek(f, offset, SEEK_SET) == 0
        && fread(out, size, 1, f) == 1;
}

static int write_checked(FILE *f, size_t offset, const void *in, size_t size)
{
    return fseek(f, offset, SEEK_SET) == 0
        && fwrite(in, size, 1, f) == 1;
}

static uint32_t align(uint32_t n, unsigned int alignment)
{
    if (alignment == 0 || n % alignment == 0)
        return n;
    return n + alignment - (n % alignment);
}

static int is_supported_reloc_type(int type)
{
    switch (type)
    {
    case R_PPC_ADDR32:
    case R_PPC_ADDR24:
    case R_PPC_ADDR16_LO:
    case R_PPC_ADDR16_HA:
    case R_PPC_REL24:
    case R_PPC_REL14:
        return 1;
    }
    return 0;
}

static const char *symbol_name(const struct Module *module, const Elf32_Sym *sym)
{
    if (sym->st_name >= module->strtabSize)
        return NULL;
    return module->strtab + sym->st_name;
}

static int get_symtab_entry(const struct Module *module, int index, Elf32_Sym *sym)
{
    if (index >= module->symtabCount)
        return 0;
    *sym = module->symtab[index];
    bswap32(&sym->st_name);
    bswap32(&sym->st_value);
    bswap32(&sym->st_size);
    bswap16(&sym->st_shndx);
    return 1;
}

static int lookup_symbol_by_name(const struct Module *module, const char *name, Elf32_Sym *sym)
{
    int i;

    for (i = 0; i < module->symtabCount; i++)
    {
        get_symtab_entry(module, i, sym);
        const char *n = symbol_name(module, sym);
        if (n != NULL && strcmp(name, n) == 0)
            return 1;
    }
    return 0;
}

static struct RelImportEntry *get_import_for_module_id(int moduleId)
{
    int i;

    for (i = 0; i < importsCount; i++)
    {
        if (imports[i].moduleId == moduleId)
            return &imports[i];
    }
    return NULL;
}

static void add_reloc_entry(const struct Module *module, const Elf32_Rela *reloc, int relocSection)
{
    Elf32_Sym sym;
    int symIdx = ELF32_R_SYM(reloc->r_info);
    int relocType = ELF32_R_TYPE(reloc->r_info);
    struct RelRelocEntry rentry;
    struct RelImportEntry *import;
    int moduleId;  // module containing the symbol

    if (!is_supported_reloc_type(relocType))
        fatal_error("relocation type %i not supported\n", relocType);

    rentry.patchSection = relocSection;
    rentry.patchOffset  = reloc->r_offset;
    rentry.type         = relocType;

    // look for symbol in this module
    if (!get_symtab_entry(module, symIdx, &sym))
        fatal_error("couldn't find symbol index %i\n", symIdx);
    if (sym.st_shndx != 0)  // symbol is in this module
    {
        rentry.symbolSection = sym.st_shndx;
        rentry.symbolAddr    = sym.st_value + reloc->r_addend;
        moduleId = module->moduleId;
    }
    else  // symbol is in another module (the DOL)
    {
        const char *name = symbol_name(&relModule, &sym);
        if (!lookup_symbol_by_name(&dolModule, name, &sym))
        {
            undefinedSymError = 1;
            fprintf(stderr, "could not find symbol '%s' in any module\n", name);
            return;
        }
        if (sym.st_shndx >= dolModule.ehdr.e_shnum)
            fatal_error("bad section index %i\n", sym.st_shndx);

        rentry.symbolSection  = sym.st_shndx;
        rentry.symbolAddr     = sym.st_value + reloc->r_addend;
        moduleId = dolModule.moduleId;
    }

    import = get_import_for_module_id(moduleId);
    // add import entry if it does not exist.
    if (import == NULL)
    {
        imports = realloc(imports, (importsCount + 1) * sizeof(*imports));
        import = &imports[importsCount++];
        import->moduleId = moduleId;
        import->relocs = NULL;
        import->relocsCount = 0;
    }

    // add relocation entry
    import->relocs = realloc(import->relocs, (import->relocsCount + 1) * sizeof(*import->relocs));
    import->relocs[import->relocsCount++] = rentry;
}

static void module_get_section_header(const struct Module *module, int secNum, Elf32_Shdr *shdr)
{
    size_t offset = module->ehdr.e_shoff + secNum * module->ehdr.e_shentsize;

    if (secNum >= module->ehdr.e_shnum)
        fatal_error("no such section index %i\n", secNum);
    if (!read_checked(module->file, offset, shdr, sizeof(*shdr)))
        fatal_error("error reading section header\n");

    // convert from big endian
    bswap32(&shdr->sh_name);
    bswap32(&shdr->sh_type);
    bswap32(&shdr->sh_flags);
    bswap32(&shdr->sh_addr);
    bswap32(&shdr->sh_offset);
    bswap32(&shdr->sh_size);
    bswap32(&shdr->sh_link);
    bswap32(&shdr->sh_info);
    bswap32(&shdr->sh_addralign);
    bswap32(&shdr->sh_entsize);
}

static void module_read_relocs(struct Module *module)
{
    int i;
    int j;

    undefinedSymError = 0;

    for (i = 0; i < (int)module->ehdr.e_shnum; i++)
    {
        Elf32_Shdr shdr;
        Elf32_Shdr forSection;

        module_get_section_header(module, i, &shdr);
        if (shdr.sh_type == SHT_RELA)
        {
            module_get_section_header(module, shdr.sh_info, &forSection);
            if (!(forSection.sh_flags & SHF_ALLOC))
                continue;
            for (j = 0; j < shdr.sh_size / sizeof(Elf32_Rela); j++)
            {
                Elf32_Rela reloc;

                read_checked(module->file, shdr.sh_offset + j * sizeof(Elf32_Rela), &reloc, sizeof(reloc));
                // convert from big endian
                bswap32(&reloc.r_offset);
                bswap32(&reloc.r_info);
                bswap32((uint32_t *)&reloc.r_addend);

                add_reloc_entry(&relModule, &reloc, shdr.sh_info);
            }
        }
    }

    if (undefinedSymError)
        exit(1);
}

static int open_module(struct Module *module)
{
    int i;

    // open file
    module->file = fopen(module->filename, "rb");
    if (module->file == NULL)
        fatal_error("could not open %s for reading: %s\n", module->filename, strerror(errno));

    // read and verify ELF header
    if (!read_checked(module->file, 0, &module->ehdr, sizeof(module->ehdr)))
        fatal_error("error reading ELF header\n");
    if (memcmp(module->ehdr.e_ident, "\x7F""ELF", 4) != 0)
        fatal_error("%s is not a valid ELF file\n", module->filename);

    // convert from big endian
    bswap16(&module->ehdr.e_type);
    bswap16(&module->ehdr.e_machine);
    bswap32(&module->ehdr.e_version);
    bswap32(&module->ehdr.e_entry);
    bswap32(&module->ehdr.e_phoff);
    bswap32(&module->ehdr.e_shoff);
    bswap32(&module->ehdr.e_flags);
    bswap16(&module->ehdr.e_ehsize);
    bswap16(&module->ehdr.e_phentsize);
    bswap16(&module->ehdr.e_phnum);
    bswap16(&module->ehdr.e_shentsize);
    bswap16(&module->ehdr.e_shnum);
    bswap16(&module->ehdr.e_shstrndx);

    if (module->ehdr.e_shentsize < sizeof(Elf32_Shdr))
        fatal_error("invalid section header size");

    // Verify architecture
    if (module->ehdr.e_ident[EI_CLASS] != ELFCLASS32
     || module->ehdr.e_ident[EI_DATA] != ELFDATA2MSB
     || module->ehdr.e_machine != EM_PPC)
        fatal_error("%s: wrong architecture. expected PowerPC 32-bit big endian.\n", module->filename);

    // Read symbol table and string table
    for (i = 0; i < (int)module->ehdr.e_shnum; i++)
    {
        Elf32_Shdr shdr;

        module_get_section_header(module, i, &shdr);
        if (shdr.sh_type == SHT_SYMTAB && module->symtab == NULL)
        {
            module->symtabCount = shdr.sh_size / sizeof(Elf32_Sym);
            module->symtab      = malloc(shdr.sh_size);
            if (!read_checked(module->file, shdr.sh_offset, module->symtab, shdr.sh_size))
                fatal_error("error reading symbol table\n");
        }
        else if (shdr.sh_type == SHT_STRTAB && i != module->ehdr.e_shstrndx && module->strtab == NULL)
        {
            module->strtabSize = shdr.sh_size;
            module->strtab     = malloc(shdr.sh_size);
            if (!read_checked(module->file, shdr.sh_offset, module->strtab, shdr.sh_size))
                fatal_error("error reading string table\n");
        }
    }
    if (module->symtab == NULL)
        fatal_error("%s does not have a symbol table.\n", module->filename);
    if (module->strtab == NULL)
        fatal_error("%s does not have a string table.\n", module->filename);

    return 1;
}

// searches for the special functions "_prolog", "_epliog", and "_unresolved"
static void find_rel_entry_functions(const struct Module *module, struct RelHeader *relHdr)
{
    int i;

    //puts("finding entry points");
    for (i = 0; i < module->symtabCount; i++)
    {
        Elf32_Sym sym;
        Elf32_Shdr shdr;
        const char *name;

        get_symtab_entry(module, i, &sym);
        name = symbol_name(module, &sym);
        if (name == NULL)
            continue;
        if (strcmp(name, "_prolog") == 0)
        {
            module_get_section_header(module, sym.st_shndx, &shdr);
            relHdr->prologSection = sym.st_shndx;
            relHdr->prologOffset = sym.st_value - shdr.sh_addr;
        }
        else if (strcmp(name, "_epilog") == 0)
        {
            module_get_section_header(module, sym.st_shndx, &shdr);
            relHdr->epilogSection = sym.st_shndx;
            relHdr->epilogOffset = sym.st_value - shdr.sh_addr;
        }
        else if (strcmp(name, "_unresolved") == 0)
        {
            module_get_section_header(module, sym.st_shndx, &shdr);
            relHdr->unresolvedSection = sym.st_shndx;
            relHdr->unresolvedOffset = sym.st_value - shdr.sh_addr;
        }
    }
}

// patches the bl instruction at insnp to jump to offset
static void patch_rel24_branch_offset(uint8_t *insnp, int32_t branchOffset)
{
    const uint32_t offsetMask = 0x03FFFFFC;  // bits of instruction that contain the offset
    uint32_t insn = (insnp[0] << 24)  // read instruction
                  | (insnp[1] << 16)
                  | (insnp[2] << 8)
                  | (insnp[3] << 0);

    assert(((insn >> 26) & 0x3F) == 18);  // TODO: do other instructions besides bl use R_PPC_REL24?
    insn = (insn & ~offsetMask) | (branchOffset & offsetMask);  // patch instruction
    // write instruction
    insnp[0] = (insn >> 24) & 0xFF;
    insnp[1] = (insn >> 16) & 0xFF;
    insnp[2] = (insn >> 8)  & 0xFF;
    insnp[3] = (insn >> 0)  & 0xFF;
}

static void patch_code_relocs(struct RelHeader *relHdr, int sectionId, uint8_t *code, size_t size)
{
    struct RelImportEntry *import;
    struct RelRelocEntry *reloc;
    int i;

    // Remove redundant R_PPC_REL24 relocations for calls to functions within
    // the same module
    import = get_import_for_module_id(relModule.moduleId);
    assert(import != NULL);
    for (i = 0, reloc = &import->relocs[0]; i < import->relocsCount; i++, reloc++)
    {
        if (reloc->patchSection == sectionId && reloc->type == R_PPC_REL24)
        {
            assert(reloc->patchOffset < size);
            patch_rel24_branch_offset(
                code + reloc->patchOffset,
                reloc->symbolAddr - reloc->patchOffset);
            // remove the relocation
            reloc->type = R_PPC_NONE;
        }
    }

    // Patch all calls to functions outside this module to jump to _unresolved
    // by default.
    if (relHdr->unresolvedSection == 0)
        return;
    import = get_import_for_module_id(0);
    assert(import != NULL);
    for (i = 0, reloc = &import->relocs[0]; i < import->relocsCount; i++, reloc++)
    {
        if (reloc->patchSection == sectionId && reloc->type == R_PPC_REL24)
        {
            assert(reloc->patchOffset < size);
            patch_rel24_branch_offset(
                code + reloc->patchOffset,
                relHdr->unresolvedOffset - reloc->patchOffset);
        }
    }
}

static int compare_relocs(const void *a, const void *b)
{
    const struct RelRelocEntry *relocA = a;
    const struct RelRelocEntry *relocB = b;

    // Sort by sections to which these relocations apply
    if (relocA->patchSection != relocB->patchSection)
        return relocA->patchSection - relocB->patchSection;
    // Sort by patch offset
    if (relocA->patchOffset != relocB->patchOffset)
        return relocA->patchOffset - relocB->patchOffset;
    // Otherwise, leave the order alone
    return (uintptr_t)a - (uintptr_t)b;
}

static int compare_imports(const void *a, const void *b)
{
    const struct RelImportEntry *impA = a;
    const struct RelImportEntry *impB = b;

    return impA->moduleId - impB->moduleId;
}

static void write_rel_file(struct Module *module, struct RelHeader *relHdr, const char *filename)
{
    int i, j;
    size_t filePos = sizeof(struct RelHeader);  // skip over header for now
    struct RelImportEntry *imp;
    FILE *fout = fopen(filename, "wb");

    if (fout == NULL)
        fatal_error("could not open %s for writing: %s\n", filename, strerror(errno));

    relHdr->moduleId = module->moduleId;
    relHdr->formatVersion = 1;

    find_rel_entry_functions(module, relHdr);

    // 1. Write section table and section contents

    relHdr->sectionTableOffset = filePos;
    relHdr->sectionCount = MAX(module->ehdr.e_shnum, minSectionCount);
    // section contents follow section info table
    filePos = relHdr->sectionTableOffset + relHdr->sectionCount * 8;
    relHdr->bssSize = 0;
    for (i = 0; i < module->ehdr.e_shnum; i++)
    {
        Elf32_Shdr shdr;
        struct { uint32_t offset; uint32_t size; } secEntry = {0};

        module_get_section_header(module, i, &shdr);
        // write section contents
        if (shdr.sh_type == SHT_PROGBITS && (shdr.sh_flags & SHF_ALLOC))
        {
            size_t sizeAligned = align(shdr.sh_size, 4);
            uint32_t execflg = (shdr.sh_flags & SHF_EXECINSTR) ? 1 : 0;

            filePos = align(filePos, shdr.sh_addralign);
            if (shdr.sh_size > 0)
            {
                uint8_t *data = calloc(sizeAligned, 1);

                if (!read_checked(module->file, shdr.sh_offset, data, shdr.sh_size))
                    fatal_error("error reading section\n");
                if (execflg)
                    patch_code_relocs(relHdr, i, data, sizeAligned);
                if (!write_checked(fout, filePos, data, shdr.sh_size))
                    fatal_error("error writing rel section\n");
                free(data);
            }
            secEntry.offset = filePos | execflg;
            filePos += shdr.sh_size;
        }
        if (shdr.sh_flags & SHF_ALLOC)
            secEntry.size = shdr.sh_size;

        // write section table entry
        bswap32(&secEntry.offset);
        bswap32(&secEntry.size);
        write_checked(fout, relHdr->sectionTableOffset + i * 8, &secEntry, sizeof(secEntry));

        // calculate total BSS size
        if ((shdr.sh_flags & SHF_ALLOC) && shdr.sh_type == SHT_NOBITS)
            relHdr->bssSize += shdr.sh_size;
    }

    // 2. Write relocation data

    relHdr->relocationTableOffset = filePos;
    // sort imports by module id
    qsort(imports, importsCount, sizeof(struct RelImportEntry), compare_imports);
    for (i = 0, imp = &imports[0]; i < importsCount; i++, imp++)
    {
        struct RelRelocEntry *reloc;
        int currSection = -1;
        uint32_t prevOffset = 0;
        struct
        {
            uint16_t offset;
            uint8_t  type;
            uint8_t  section;
            uint32_t symaddr;
        } ent;

        imp->relocsOffset = filePos;
        // sort relocation entries by section
        qsort(imp->relocs, imp->relocsCount, sizeof(struct RelRelocEntry), compare_relocs);
        for (j = 0, reloc = &imp->relocs[0]; j < imp->relocsCount; j++, reloc++)
        {
            if (reloc->type == R_PPC_NONE)  // ignore null relocations
                continue;

            if (reloc->patchSection != currSection)  // section changed
            {
                currSection = reloc->patchSection;

                // write section change
                ent.offset  = 0;
                ent.type    = R_DOLPHIN_SECTION;
                ent.section = reloc->patchSection;
                ent.symaddr = 0;
                bswap16(&ent.offset);
                bswap32(&ent.symaddr);
                if (!write_checked(fout, filePos, &ent, sizeof(ent)))
                    fatal_error("error writing relocation entry");

                filePos += sizeof(ent);
                prevOffset = 0;
            }

            // write relocation
            assert(reloc->patchOffset >= prevOffset);
            ent.offset  = reloc->patchOffset - prevOffset;
            ent.type    = reloc->type;
            ent.section = reloc->symbolSection;
            ent.symaddr = reloc->symbolAddr;
            bswap16(&ent.offset);
            bswap32(&ent.symaddr);
            if (!write_checked(fout, filePos, &ent, sizeof(ent)))
                fatal_error("error writing relocation entry");

            filePos += sizeof(ent);
            prevOffset = reloc->patchOffset;
        }

        // write end
        ent.offset  = 0;
        ent.type    = R_DOLPHIN_END;
        ent.section = 0;
        ent.symaddr = 0;
        bswap16(&ent.offset);
        bswap32(&ent.symaddr);
        if (!write_checked(fout, filePos, &ent, sizeof(ent)))
            fatal_error("error writing relocation entry");

        filePos += sizeof(ent);
    }

    // 3. Write module import table

    relHdr->importTableOffset = filePos;
    for (i = 0, imp = &imports[0]; i < importsCount; i++, imp++)
    {
        // write import table entry
        struct { uint32_t moduleId; uint32_t relocsOffset; } ent;
        ent.moduleId     = imp->moduleId;
        ent.relocsOffset = imp->relocsOffset;
        bswap32(&ent.moduleId);
        bswap32(&ent.relocsOffset);
        write_checked(fout, relHdr->importTableOffset + i * 8, &ent, sizeof(ent));
    }
    relHdr->importTableSize = importsCount * 8;

    // 4. Write REL header.

    // convert to big endian
    bswap32(&relHdr->moduleId);
    bswap32(&relHdr->sectionCount);
    bswap32(&relHdr->sectionTableOffset);
    bswap32(&relHdr->moduleNameOffset);
    bswap32(&relHdr->moduleNameSize);
    bswap32(&relHdr->formatVersion);
    bswap32(&relHdr->bssSize);
    bswap32(&relHdr->relocationTableOffset);
    bswap32(&relHdr->importTableOffset);
    bswap32(&relHdr->importTableSize);
    bswap32(&relHdr->prologOffset);
    bswap32(&relHdr->epilogOffset);
    bswap32(&relHdr->unresolvedOffset);
    write_checked(fout, 0, relHdr, sizeof(*relHdr));

    fclose(fout);
}

static int parse_number(const char *str, int *n)
{
    char *end;
    *n = strtol(str, &end, 0);
    return end > str && *end == 0;
}

int main(int argc, char **argv)
{
    int i;
    int moduleId = -1;
    int nameOffset = 0;
    int nameLen = 0;
    const char *relName = NULL;
    struct RelHeader relHdr = {0};

    // Read command-line args
    for (i = 1; i < argc; i++)
    {
        if (strcmp(argv[i], "-c") == 0 || strcmp(argv[i], "--pad-section-count") == 0)
        {
            if (i + 1 < argc && parse_number(argv[i + 1], &minSectionCount))
                i++;
            else
                goto usage;
        }
        else if (strcmp(argv[i], "-i") == 0 || strcmp(argv[i], "--module-id") == 0)
        {
            if (i + 1 < argc && parse_number(argv[i + 1], &moduleId))
                i++;
            else
                goto usage;
        }
        else if (strcmp(argv[i], "-o") == 0 || strcmp(argv[i], "--name-offset") == 0)
        {
            if (i + 1 < argc && parse_number(argv[i + 1], &nameOffset))
                i++;
            else
                goto usage;
        }
        else if (strcmp(argv[i], "-l") == 0 || strcmp(argv[i], "--name-length") == 0)
        {
            if (i + 1 < argc && parse_number(argv[i + 1], &nameLen))
                i++;
            else
                goto usage;
        }
        else
        {
            if (relModule.filename == NULL)
                relModule.filename = argv[i];
            else if (dolModule.filename == NULL)
                dolModule.filename = argv[i];
            else if (relName == NULL)
                relName = argv[i];
            else
                goto usage;
        }
    }
    if (relModule.filename == NULL || dolModule.filename == NULL || relName == NULL)
        goto usage;

    open_module(&relModule);
    open_module(&dolModule);

    dolModule.moduleId = 0;
    relModule.moduleId = moduleId;

    module_read_relocs(&relModule);

    // TODO: Read this information from string table
    relHdr.moduleNameOffset = nameOffset;
    relHdr.moduleNameSize = nameLen;
    write_rel_file(&relModule, &relHdr, relName);

    fclose(relModule.file);
    fclose(dolModule.file);

    free(dolModule.strtab);
    free(dolModule.symtab);
    for (i = 0; i < importsCount; i++)
        free(imports[i].relocs);
    free(imports);
    return 0;

usage:
    fprintf(stderr,
        "usage: %s reloc_elf static_elf rel_file\n"
        "options:\n"
        "  -i, --module-id <n>          sets the module ID in the rel header to <n>\n"
        "  -c, --pad-section-count <n>  ensures that the rel will have at least <n>\n"
        "                               sections\n"
        "  -o, --name-offset <offset>   sets the name offset in the rel header to\n"
        "                               <offset>\n"
        "  -l, --name-length <len>      sets the name length in the rel header to <len>\n",
        argv[0]);
    return 1;
}
