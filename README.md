Metroid Prime
=============
[![Build](https://github.com/PrimeDecomp/prime/actions/workflows/build.yml/badge.svg)](https://github.com/PrimeDecomp/prime/actions/workflows/build.yml)

A decompilation of Metroid Prime.

This repository builds the following DOLs:

```
949c5ed7368aef547e0b0db1c3678f466e2afbff  build/mp1.0/main.dol (USA 0-00)
860141f9671fc141ce8f55448643f713bc64b349  build/mp1.1/main.dol (USA 0-01)
52316d2a71c0d18c84f054fd6f1e58bdd7bf0ded  build/mp1.kor/main.dol (KOR)
```

If you'd like to contribute, see [CONTRIBUTING.md](CONTRIBUTING.md).

Dependencies
============

Windows:
--------
- Install [devkitPro](https://github.com/devkitPro/installer/releases/latest) with GameCube development package.
- Open `C:\devkitPro\msys2\msys2.exe`
- Run the following:
  ```
  pacman -Sy --noconfirm --needed msys2-keyring
  pacman -Su --noconfirm --needed gcc git gamecube-dev
  ````

macOS:
------
- Install wine:
  ```
  brew tap gcenx/wine
  brew install wine-crossover
  sudo xattr -r -d com.apple.quarantine "/Applications/Wine Crossover.app"
  ```
- Install [devkitPro](https://github.com/devkitPro/pacman/releases/latest).
- Run the following:
  ```
  sudo dkp-pacman -Syu --noconfirm --needed gamecube-dev
  ```

Linux:
------
- Install wine from your package manager.
  - Faster alternative: [WiBo](https://github.com/decompals/WiBo), a minimal 32-bit Windows binary wrapper.  
    Ensure the binary is in `PATH`.
- Install [devkitPro](https://devkitpro.org/wiki/devkitPro_pacman).
- Run the following:
  ```
  sudo dkp-pacman -Syu --noconfirm --needed gamecube-dev
  ```

Building
========

- Checkout the repository:
  ```
  git clone https://github.com/PrimeDecomp/prime.git
  ```
- Download [GC_WII_COMPILERS.zip](https://cdn.discordapp.com/attachments/727918646525165659/917185027656286218/GC_WII_COMPILERS.zip)
- Extract the contents of the `GC` directory to `tools/mwcc_compiler`
- Build:
  ```
  make -j
  ```
