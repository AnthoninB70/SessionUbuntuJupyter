@echo off
chcp 65001 > nul

echo Installation du package de mise à jour du noyau Linux...
msiexec /i wsl_update_x64.msi /quiet /norestart

echo Vérification du dossier de destination...
set "destination=C:\ENSMM\Jupyter_Notebook"
IF NOT EXIST "%destination%" (
    echo Le dossier de destination n'existe pas. Création du dossier...
    mkdir "%destination%"
)

echo Copie des fichiers vers le dossier de destination...
copy /Y ".\ubuntu.tar" "%destination%"
copy /Y ".\OuvrirSessionUbuntuJupyter.ico" "%destination%"
copy /Y ".\SupprimerSessionUbuntuJupyter.ico" "%destination%"
copy /Y ".\OuvrirSessionUbuntuJupyter.bat" "%destination%"
copy /Y ".\SupprimerSessionUbuntuJupyter.bat" "%destination%"

echo Copie des raccourcis vers le dossier de destination...
copy /Y ".\Ouvrir Session Ubuntu Jupyter.lnk" "%destination%"
copy /Y ".\Supprimer Session Ubuntu Jupyter.lnk" "%destination%"

echo Changer de lecteur pour passer en lecteur C:
C:

echo Déplacement des raccourcis vers le bureau public...
move /Y "%destination%\Ouvrir Session Ubuntu Jupyter.lnk" "C:\Users\Public\Desktop"
move /Y "%destination%\Supprimer Session Ubuntu Jupyter.lnk" "C:\Users\Public\Desktop"
