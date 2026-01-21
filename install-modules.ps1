param($module)

switch ($module) {
 "RetroArch"    { winget install Libretro.RetroArch -e --silent }
 "DuckStation"  { winget install Stenzek.DuckStation -e --silent }
 "PCSX2"        { winget install PCSX2Team.PCSX2 -e --silent }
 "RPCS3"        { winget install RPCS3.RPCS3 -e --silent }
 "PPSSPP"       { winget install PPSSPPTeam.PPSSPP -e --silent }
 "Vita3K"       { winget install Vita3K.Vita3K -e --silent }
 "Dolphin"      { winget install DolphinEmulator.Dolphin -e --silent }
 "Cemu"         { winget install Cemu.Cemu -e --silent }
 "Ryujinx"      { winget install Ryujinx.Ryujinx -e --silent }
 "mGBA"         { winget install mgba.mGBA -e --silent }
 "MAME"         { winget install MAME.MAME -e --silent }
 "DS4Windows"   { winget install Ryochan7.DS4Windows -e --silent }
 "BetterJoy"    { winget install Davidobot.BetterJoy -e --silent }
 "Playnite"     { winget install Playnite.Playnite -e --silent }
}
