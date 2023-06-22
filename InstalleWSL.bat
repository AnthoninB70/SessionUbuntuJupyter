@echo off
chcp 65001 > nul

echo Installation de Windows Subsystem for Linux (WSL)...
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart > nul
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart > nul

echo Installation terminée.
pause

echo Redémarrage du système...
shutdown /r /t 0
