
Debian
====================
This directory contains files used to package abcoind/abcoin-qt
for Debian-based Linux systems. If you compile abcoind/abcoin-qt yourself, there are some useful files here.

## abcoin: URI support ##


abcoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install abcoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your abcoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/abcoin128.png` to `/usr/share/pixmaps`

abcoin-qt.protocol (KDE)

