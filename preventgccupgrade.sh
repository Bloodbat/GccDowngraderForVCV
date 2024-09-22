#!/bin/sh

echo "GCC downgrader for MSYS2"
echo "Copyright 2024 Bloodbat / La Serpiente y la Rosa Producciones."
echo
echo "This program comes with ABSOLUTELY NO WARRANTY."
echo "This is free software, and you are welcome to redistribute it"
echo "under certain conditions."
echo

echo
echo "WARNING! This will prevent ming-w64 GCC from updating!!!"
echo

read -p "Press any key to continue or Ctrl-C to abort!" -n1 -s

echo
echo "Adding ignores to pacman.conf..."

echo "Adding [options] section..."

echo "[options]" >> /etc/pacman.conf

echo "Adding IgnorePkg = mingw-w64-x86_64-gcc..."

echo "IgnorePkg = mingw-w64-x86_64-gcc" >> /etc/pacman.conf

echo "Adding IgnorePkg = mingw-w64-x86_64-gcc-libs"

echo "IgnorePkg = mingw-w64-x86_64-gcc-libs" >> /etc/pacman.conf

echo "Done."