@echo off
setlocal
cd /d "%~dp0"
echo ==============================================
echo IPTV Player - Windows Release Builder
echo ==============================================
where node >nul 2>nul || (echo Node.js LTS is required. Install from https://nodejs.org/ & pause & exit /b 1)
where npm >nul 2>nul || (echo npm is required. & pause & exit /b 1)
echo Installing dependencies...
npm install
if errorlevel 1 (echo npm install failed. & pause & exit /b 1)
echo Building Windows installer...
npm run dist
if errorlevel 1 (echo Build failed. & pause & exit /b 1)
echo DONE. The Setup EXE is in the release folder.
explorer "%~dp0release"
pause
