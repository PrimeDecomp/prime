def apply(config, args):
    config["arch"] = "ppc"
    config["objdump_executable"] = "/opt/devkitpro/devkitPPC/bin/powerpc-eabi-objdump"
    config["objdump_flags"] = ["-M", "gekko"]
    config["source_directories"] = ["."]
    config["make_flags"] = [
        "VERBOSE=1",
        args.objfile.replace("src/", "asm/") # also build asm obj
    ]
