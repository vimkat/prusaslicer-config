# PrusaSlicer Configuration

This repository contains all my configuration presets for PrusaSlicer.
There are presets for the printer itself as well as filaments I use.

## Installation

Installation is managed by [stow](https://www.gnu.org/software/stow/).
Installing this configuration bundle is therefore only required once.
Updating this repository (e.g. using `git pull`) automatically updates all configuration in PrusaSlicer.

To install all presets (print and filament), run the included Makefile with the `install` target.

```sh
make install
```

To uninstall all configuration provided through this repository, use the `uninstall` target.

```sh
make uninstall
```
