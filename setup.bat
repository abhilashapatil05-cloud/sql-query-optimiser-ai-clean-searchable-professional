@echo off
REM AI SQL Query Optimiser - Setup Script for Windows

echo.
echo 🚀 AI SQL Query Optimiser - Setup
echo ==================================
echo.

REM Check if Node.js is installed
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ Node.js is not installed
    echo    Please install from https://nodejs.org/
    pause
    exit /b 1
)

REM Check if Python is installed
where python >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ Python 3 is not installed
    echo    Please install from https://www.python.org/
    pause
    exit /b 1
)

echo ✅ Node.js and Python 3 found
echo.

REM Setup Backend
echo 📦 Setting up Backend...
cd backend

if not exist ".env" (
    copy .env.example .env
    echo    ✓ Created .env file
    echo    ⚠️  Please edit backend\.env and add your OPENAI_API_KEY
) else (
    echo    ✓ .env file already exists
)

echo    Installing Python dependencies...
pip install -r requirements.txt > nul 2>&1
echo    ✓ Python dependencies installed

cd ..

REM Setup Frontend
echo.
echo 🎨 Setting up Frontend...
cd frontend

echo    Installing Node dependencies...
call npm install > nul 2>&1
echo    ✓ Node dependencies installed

cd ..

echo.
echo ✅ Setup complete!
echo.
echo 📋 Next steps:
echo 1. Edit backend\.env and add your OPENAI_API_KEY
echo 2. Start backend: cd backend ^&^& python -m uvicorn app.main:app --reload
echo 3. Start frontend: cd frontend ^&^& npm run dev
echo 4. Open http://localhost:5173 in your browser
echo.
pause
