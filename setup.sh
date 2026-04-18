#!/bin/bash

# AI SQL Query Optimiser - Setup Script
# This script helps set up the project quickly

echo "🚀 AI SQL Query Optimiser - Setup"
echo "=================================="

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed"
    echo "   Please install from https://nodejs.org/"
    exit 1
fi

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed"
    echo "   Please install from https://www.python.org/"
    exit 1
fi

echo "✅ Node.js and Python 3 found"
echo ""

# Setup Backend
echo "📦 Setting up Backend..."
cd backend

if [ ! -f ".env" ]; then
    cp .env.example .env
    echo "   ✓ Created .env file"
    echo "   ⚠️  Please edit backend/.env and add your OPENAI_API_KEY"
else
    echo "   ✓ .env file already exists"
fi

echo "   Installing Python dependencies..."
pip install -r requirements.txt > /dev/null 2>&1
echo "   ✓ Python dependencies installed"

cd ..

# Setup Frontend
echo ""
echo "🎨 Setting up Frontend..."
cd frontend

echo "   Installing Node dependencies..."
npm install > /dev/null 2>&1
echo "   ✓ Node dependencies installed"

cd ..

echo ""
echo "✅ Setup complete!"
echo ""
echo "📋 Next steps:"
echo "1. Edit backend/.env and add your OPENAI_API_KEY"
echo "2. Start backend: cd backend && python -m uvicorn app.main:app --reload"
echo "3. Start frontend: cd frontend && npm run dev"
echo "4. Open http://localhost:5173 in your browser"
echo ""
