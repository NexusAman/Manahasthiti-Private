@echo off
echo ==========================================
echo Starting ManahSthiti Project for Interview
echo ==========================================

REM Install backend dependencies if node_modules doesn't exist
if not exist "backend\node_modules" (
    echo Installing backend dependencies...
    cd backend
    npm install
    if errorlevel 1 (
        echo Error: Backend npm install failed
        pause
        exit /b 1
    )
    cd ..
)

REM Install frontend dependencies if node_modules doesn't exist
if not exist "frontend\node_modules" (
    echo Installing frontend dependencies...
    cd frontend
    npm install
    if errorlevel 1 (
        echo Error: Frontend npm install failed
        pause
        exit /b 1
    )
    cd ..
)

echo Starting backend server on port 5000...
start /B cmd /c "cd backend && npm start"

timeout /t 3 /nobreak >nul

echo Starting frontend development server on port 5173...
start /B cmd /c "cd frontend && npm start"

echo ==========================================
echo Project is starting up!
echo • Frontend: http://localhost:5173
echo • Backend API: http://localhost:5000
echo ==========================================
echo Press any key to stop servers...
pause >nul

taskkill /f /im node.exe >nul 2>&1
echo Servers stopped. Good luck with your interview! 🚀
pause