@echo off
title Push to GitHub - NANCHARLA-PRUDHVI-TREASURY
echo ========================================================
echo TS Pensioners DA Arrears Calculator - GitHub Upload Helper
echo (40.04%% DA Arrears Calculator by PPO ID / Basic Pension)
echo ========================================================
echo.
echo Repo: https://github.com/PrudhviNancharla/NANCHARLA-PRUDHVI-TREASURY
echo.
set /p TOKEN="Enter your GitHub Personal Access Token (PAT): "
if "%TOKEN%"=="" (
    echo No token entered. Exiting...
    pause
    exit /b
)
cd /d "C:\Users\Admin\.gemini\antigravity\scratch\NANCHARLA-PRUDHVI-TREASURY"
"C:\Users\Admin\.gemini\antigravity\scratch\mingit\cmd\git.exe" add .
"C:\Users\Admin\.gemini\antigravity\scratch\mingit\cmd\git.exe" commit -m "Add TS Pensioners 40.04% DA Arrears Calculator"
"C:\Users\Admin\.gemini\antigravity\scratch\mingit\cmd\git.exe" branch -M main
"C:\Users\Admin\.gemini\antigravity\scratch\mingit\cmd\git.exe" push https://%TOKEN%@github.com/PrudhviNancharla/NANCHARLA-PRUDHVI-TREASURY.git main --force
echo.
echo ========================================================
echo Completed! Website repo updated successfully!
echo ========================================================
pause
