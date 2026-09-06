@echo off
title CivicConnect - Local Problem Reporting Platform
set "PATH=C:\Users\Dell\.gemini\antigravity\bin;C:\Users\Dell\nodejs;%PATH%"
echo ========================================================
echo   CivicConnect - Local Problem Reporting Platform
echo ========================================================
echo Opening browser at http://localhost:3000/ ...
start http://localhost:3000/
echo Starting Vite Dev Server...
call npm run dev -- --host 0.0.0.0 --port 3000
pause
