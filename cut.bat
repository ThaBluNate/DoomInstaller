@echo off && title Shortcut && powershell -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%~2.lnk'); $S.TargetPath = '%~f1'; $S.Save()"