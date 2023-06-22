@echo off
chcp 65001 > nul

echo Configuration de la version par défaut de WSL...
wsl --set-default-version 2

echo Importation de la distribution Ubuntu...
wsl --import UbuntuJupyter "C:\ENSMM\Jupyter_Notebook" "C:\ENSMM\Jupyter_Notebook\ubuntu.tar"

echo Ouverture de la session UbuntuJupyter...
wsl -d UbuntuJupyter
