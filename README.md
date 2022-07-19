Metroid Prime
=============

A decompilation of Metroid Prime (USA v0-00).

This repository builds the following DOL:

```
949c5ed7368aef547e0b0db1c3678f466e2afbff  build/mp1.0/main.dol
```

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