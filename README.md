# Dotfiles Mini
 smallest condensed dotfiles

# WM
phyOS dwm window manager is used here. You can install it by firstly installing dependencies - 

Here are the installation instructions for the necessary development packages across **Fedora**, **Debian**, **Arch Linux**, and **Void Linux**. This includes all the packages discussed earlier, such as `git`, `make`, `gcc`, `g++`, `libx11-dev`, `libxft-dev`, `libxinerama-dev`, `ncurses`, `dbus-x11`, `imlib2-dev`, and `libconfig-dev`.
### Fedora
1. **Update your system**:
   ```bash
   sudo dnf update
   ```

2. **Install Development Tools and Libraries**:
   ```bash
   sudo dnf install @development-tools git libX11-devel libXft-devel libXinerama-devel ncurses-devel dbus-x11-devel imlib2-devel libconfig-devel
   ```

### Debian (and Ubuntu)
1. **Update your package index**:
   ```bash
   sudo apt update
   ```

2. **Install Build Essentials and Required Libraries**:
   ```bash
   sudo apt install build-essential git libx11-dev libxft-dev libxinerama-dev libncurses5-dev libdbus-1-dev libimlib2-dev libconfig-dev
   ```

### Arch Linux
1. **Update your system**:
   ```bash
   sudo pacman -Syu
   ```

2. **Install Base Development Packages and Required Libraries**:
   ```bash
   sudo pacman -S base-devel git libx11 libxft libxinerama ncurses dbus imlib2 libconfig
   ```

### Void Linux
1. **Update your package repository**:
   ```bash
   sudo xbps-install -S
   ```

2. **Install Development Tools and Libraries**:
   ```bash
   sudo xbps-install -y base-devel git libX11-devel libXft-devel libXinerama-devel ncurses-devel dbus-x11-devel imlib2-devel libconfig-devel
   ```

### Summary of Installed Packages

| Package Name      | Description                                                                                     |
|-------------------|-------------------------------------------------------------------------------------------------|
| `git`             | Version control system for managing source code.                                               |
| `make`            | Build automation tool that helps in compiling and managing dependencies in projects.           |
| `gcc`             | GNU Compiler Collection, a compiler system for C programming.                                  |
| `g++`             | GNU C++ Compiler, a compiler for C++ programming.                                             |
| `libx11-dev`     | Development files for the X11 client-side library, essential for X Window System applications. |
| `libxft-dev`     | Development files for the X font library, used for rendering fonts in X applications.         |
| `libxinerama-dev`| Development files for the Xinerama extension, which provides multi-monitor support.            |
| `ncurses`         | Library for creating text-based user interfaces in a terminal environment.                     |
| `dbus-x11`       | D-Bus message bus system for inter-process communication in X11 applications.                  |
| `imlib2-dev`     | Development files for the Imlib2 image manipulation library, used for handling images.        |
| `libconfig-dev`  | Development files for the libconfig library, which is used for manipulating structured configuration files. |

These commands will set up a comprehensive development environment on each of these Linux distributions, allowing you to compile and build software efficiently.
