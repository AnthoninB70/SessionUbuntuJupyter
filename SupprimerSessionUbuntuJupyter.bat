@echo off
chcp 65001 > nul

echo Appuyez sur une touche pour vous déconnecter et supprimer la session UbuntuJupyter.
pause > nul
wsl --unregister UbuntuJupyter
