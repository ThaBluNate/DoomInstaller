#NoEnv
#SingleInstance Force
SendMode Input
SetWorkingDir %A_ScriptDir%
MsgBox,0x124, Are you Sure?, This will install:`n (q)Zandronum`n Doomseeker`n GZDoom`n Odamex `n Chocolate Doom `n UDB
IfMsgBox No
ExitApp
FileCreateDir, Doom
SetWorkingDir Doom
FileCreateDir, Files
SetWorkingDir Files
FileCreateDir, Temp
SetWorkingDir Temp
UrlDownloadToFile, https://github.com/ThaBluNate/Temporary/releases/latest/download/cut.bat, cut.bat
Gui -MinimizeBox -MaximizeBox
Gui, Add, Text,, Downloading Files...
Gui, Show, w200 h300, DoomSetup
Gui, Add, Text,, Downloading 7-zip
UrlDownloadToFile, https://www.7-zip.org/a/7zr.exe , 7zr.exe
UrlDownloadToFile, https://www.7-zip.org/a/7z2102-extra.7z, 7ze.7z
RunWait, 7zr.exe x -y 7ze.7z -o.\, Hide
FileRemoveDir, Far, 1
FileRemoveDir, x64, 1
FileDelete, *.txt
FileDelete, *.dll
FileDelete, *.7z
FileDelete, 7zr.exe
FileMove, 7za.exe, z.exe
Gui, Add, Text,, Downloading Zandronum...
UrlDownloadToFile, http://qzandronum.com/files/Q-Zandronum 1.2.1 Windows.zip, qZan.zip
UrlDownloadToFile, https://zandronum.com/downloads/zandronum3.1-win64-base.zip, Zan.zip
Gui, Add, Text,, Downloading Plugins...
UrlDownloadToFile, https://doomseeker.drdteam.org/download_plugin.php?plugin=zandronumq, %A_ScriptDir%\Doom\Files\libzandronumq.dll
UrlDownloadToFile, https://doomseeker.drdteam.org/download_plugin.php?plugin=zandronum, %A_ScriptDir%\Doom\Files\libzandronum.dll
UrlDownloadToFile, https://doomseeker.drdteam.org/download_plugin.php?plugin=odamex, %A_ScriptDir%\Doom\Files\libodamex.dll
UrlDownloadToFile, https://doomseeker.drdteam.org/download_plugin.php?plugin=chocolatedoom, %A_ScriptDir%\Doom\Files\libchocolatedoom.dll
Gui, Add, Text,, Downloading Doomseeker...
UrlDownloadToFile, https://doomseeker.drdteam.org/files/doomseeker-1.3.2_windows.zip, Seek.zip
Gui, Add, Text,, Downloading GZDoom...
UrlDownloadToFile, https://github.com/coelckers/gzdoom/releases/download/g4.7.1/gzdoom-4-7-1-Windows-64bit.zip, Gz.zip
Gui, Add, Text,, Downloading Odamex...
UrlDownloadToFile, https://downloads.sourceforge.net/odamex/odamex-win64-0.9.5.zip, oda.zip
Gui, Add, Text,, Downloading WADS...
UrlDownloadToFile, https://github.com/ThaBluNate/Temporary/releases/latest/download/wads.7z, w.7z
Gui, Add, Text,, Downloading Chocolate doom...
UrlDownloadToFile, https://www.chocolate-doom.org/downloads/3.0.1/chocolate-doom-3.0.1-win32.zip, Choco.zip
Gui, Add, Text,, Downloading UDB...
UrlDownloadToFile, https://devbuilds.drdteam.org/ultimatedoombuilder/UltimateDoomBuilder-r3863-x64.7z, DB.zip
Gui, destroy
Gui -MinimizeBox -MaximizeBox
Gui, Show, w200 h250, DoomSetup
Gui, Add, Text,, Extratcing Files...
Gui, Add, Text,, Zandronum...
RunWait, z.exe x -y qZan.zip -o%A_ScriptDir%\Doom\Files\, Hide
RunWait, z.exe x -y Zan.zip -o%A_ScriptDir%\Doom\Files\, Hide
FileRemoveDir, %A_ScriptDir%\Doom\Files\Doomseeker\, 1
Gui, Add, Text,, DoomSeeker...
RunWait, z.exe x -y Seek.zip -o%A_ScriptDir%\Doom\Files\, Hide
Gui, Add, Text,, Gzdoom...
RunWait, z.exe x -y Gz.zip -o%A_ScriptDir%\Doom\Files\, Hide
Gui, Add, Text,, Odamex...
RunWait, z.exe x -y oda.zip -o%A_ScriptDir%\Doom\Files\, Hide
Gui, Add, Text,, Game Wads...
RunWait, z.exe x -y w.7z -o%A_ScriptDir%\Doom\Files\, Hide
Gui, Add, Text,, Chocolate Doom...
RunWait, z.exe x -y Choco.zip -o%A_ScriptDir%\Doom\Files\, Hide
Gui, Add, Text,, UDB...
RunWait, z.exe x -y DB.zip -o%A_ScriptDir%\Doom\Files\, Hide
Gui, Destroy
RunWait, Cut.bat %A_ScriptDir%\Doom\Files\doomseeker.exe "%A_ScriptDir%\Doom\Multiplayer"
RunWait, Cut.bat %A_ScriptDir%\Doom\Files\gzdoom.exe "%A_ScriptDir%\Doom\Singleplayer"
RunWait, Cut.bat %A_ScriptDir%\Doom\Files\Builder.exe "%A_ScriptDir%\Doom\Map Maker"
FileCreateDir, %A_ScriptDir%\Doom\Files\DownloadedWads
FileCreateDir, %A_ScriptDir%\Doom\Files\Zandronum Testing
MsgBox,0x20, Completed, Suscessfully downloaded DOOM
ExitApp