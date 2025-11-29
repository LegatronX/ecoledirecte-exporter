@echo off
echo 🚀 Démarrage d'EcoleDirecte Exporter...
echo.

REM Vérifier si Node.js est installé
where node >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Node.js n'est pas installé ou introuvable
    echo 📥 Téléchargez Node.js depuis: https://nodejs.org/
    pause
    exit /b 1
)

echo ✅ Node.js détecté
node --version

echo.
echo 🌐 Démarrage du serveur...
node server.js

pause