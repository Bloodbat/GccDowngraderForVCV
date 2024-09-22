#!/bin/sh

echo "GCC downgrader for MSYS2"
echo "Copyright 2024 Bloodbat / La Serpiente y la Rosa Producciones."
echo
echo "This program comes with ABSOLUTELY NO WARRANTY."
echo "This is free software, and you are welcome to redistribute it"
echo "under certain conditions."
echo

echo "WARNING! This will downgrade GCC to version 13.2.0-6!"
echo
read -p "Press any key to continue or Ctrl-C to abort!" -n1 -s
echo

echo "Downgrading GCC to 13.2.0-6"
echo "Please wait..."
echo

echo "Getting files..."
echo

wget https://repo.msys2.org/mingw/mingw64/mingw-w64-x86_64-gcc-13.2.0-6-any.pkg.tar.zst
wget https://repo.msys2.org/mingw/mingw64/mingw-w64-x86_64-gcc-libs-13.2.0-6-any.pkg.tar.zst

echo "Applying downgrade..."
echo

pacman -U -d --noconfirm mingw-w64-x86_64-gcc-libs-13.2.0-6-any.pkg.tar.zst
pacman -U -d --noconfirm mingw-w64-x86_64-gcc-13.2.0-6-any.pkg.tar.zst

echo
echo "Cleaning up..."

rm mingw-w64-x86_64-gcc-13.2.0-6-any.pkg.tar.zst
rm mingw-w64-x86_64-gcc-libs-13.2.0-6-any.pkg.tar.zst

echo
echo "Done."

echo
echo "IMPORTANT! If you want to prevent pacman from updating GCC, remember to run preventgccupgrade.sh"
echo "           This will allow upgrades to other packages and keep GCC old."