#!/bin/sh

unalias rm
rm -rf ~/.wine-altium9_backup
mv ~/.wine-altium9 ~/.wine-altium9_backup
env WINEARCH=win32 WINEPREFIX=/home/joaoantoniocardoso/.wine-altium9 winetricks tahoma corefonts mdac28 mdac27 mfc42 dotnet20 fontsmooth-rgb

