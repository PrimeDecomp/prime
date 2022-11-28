Metroid Prime [![Build Status]][actions] ![Code Progress] ![Data Progress]
=============

[Build Status]: https://github.com/PrimeDecomp/prime/actions/workflows/build.yml/badge.svg
[actions]: https://github.com/PrimeDecomp/prime/actions/workflows/build.yml
[Code Progress]: https://img.shields.io/endpoint?label=Code&url=https%3A%2F%2Fprogress.deco.mp%2Fdata%2Fprime%2F0%2Fdol%2F%3Fmode%3Dshield%26measure%3Dcode
[Data Progress]: https://img.shields.io/endpoint?label=Data&url=https%3A%2F%2Fprogress.deco.mp%2Fdata%2Fprime%2F0%2Fdol%2F%3Fmode%3Dshield%26measure%3Ddata

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
- Install [ninja](https://github.com/ninja-build/ninja/releases) and add it to `%PATH%`.
- Install [devkitPro](https://github.com/devkitPro/installer/releases/latest) with GameCube development package.
- Open `C:\devkitPro\msys2\msys2.exe`
- Install GameCube development packages:
  ```
  pacman -Sy --noconfirm --needed msys2-keyring
  pacman -Su --noconfirm --needed gcc git gamecube-dev
  ````

macOS:
------
- Install [ninja](https://github.com/ninja-build/ninja/wiki/Pre-built-Ninja-packages):
  ```
  brew install ninja
  ```
- Install [wine-crossover](https://github.com/Gcenx/homebrew-wine):
  ```
  brew install --cask --no-quarantine gcenx/wine/wine-crossover
  ```
- Install [devkitPro](https://github.com/devkitPro/pacman/releases/latest).
- Install GameCube development packages:
  ```
  sudo dkp-pacman -Syu --noconfirm --needed gamecube-dev
  ```

Linux:
------
- Install [ninja](https://github.com/ninja-build/ninja/wiki/Pre-built-Ninja-packages).
- Install wine from your package manager.
  - Faster alternative: [WiBo](https://github.com/decompals/WiBo), a minimal 32-bit Windows binary wrapper.  
    Ensure the binary is in `PATH`.
- Install [devkitPro](https://devkitpro.org/wiki/devkitPro_pacman).
- Install GameCube development packages:
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
- Extract the _contents_ of the `GC` directory to `tools/mwcc_compiler`.
  - Resulting structure should be (for example) `tools/mwcc_compiler/1.3.2/mwcceppc.exe`
- Configure:
  ```
  python configure.py
  ```
- Build:
  ```
  ninja
  ```
