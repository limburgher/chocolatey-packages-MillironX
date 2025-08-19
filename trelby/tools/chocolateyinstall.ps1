Start-ChocolateyProcessAsAdmin "pip3 install trelby"
Install-ChocolateyShortcut -ShortcutFilePath "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\trelby.lnk" -TargetPath "C:\Python313\Scripts\trelby.exe" -IconLocation "C:\Python313\DLLs\py.ico"
