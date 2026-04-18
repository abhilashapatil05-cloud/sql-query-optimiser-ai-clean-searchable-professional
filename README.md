# 🚀 AI SQL Query Optimiser

A full-stack web application that uses GPT-4 AI to optimize SQL queries, provide performance scores, and generate plain-English explanations. Perfect for developers looking to improve query performance!

**Live Demo:** Paste any SQL query → Get instant optimization tips + performance score + rewritten query + plain-English explanation

## ✨ Features

✅ **Instant Query Optimization** - Powered by OpenAI GPT-4
✅ **Performance Scoring** - 0-100 score with insights
✅ **Query Rewriting** - Get optimized, production-ready queries
✅ **Plain-English Explanations** - Understand what was optimized and why
✅ **Multi-Dialect Support** - PostgreSQL, MySQL, SQLite
✅ **Beautiful UI** - Modern, responsive React interface
✅ **Production-Ready** - FastAPI backend with proper error handling
✅ **LinkedIn Portfolio Ready** - Showcases AI/ML & full-stack skills

## 🛠️ Tech Stack

### Frontend
- **React 18** with TypeScript
- **Vite** for fast build tooling
- **Axios** for API calls
- **CSS3** with responsive design
- **Zustand** for state management (ready to extend)

### Backend
- **Python 3.11+**
- **FastAPI** - Modern, fast web framework
- **OpenAI API** - GPT-4 integration
- **Pydantic** - Data validation
- **Uvicorn** - ASGI server

### Deployment
- **Docker** support
- **CORS** configured for frontend
- Environment-based configuration

## 📋 Prerequisites

- **Node.js 16+** (for frontend)
- **Python 3.11+** (for backend)
- **OpenAI API Key** (free trial available at [openai.com](https://openai.com))
- **Git** (optional, for version control)

## 🚀 Quick Start

### 1️⃣ Clone and Setup

```bash
# Clone the project (or extract the folder)
cd ai-sql-optimiser

# Create environment file for backend
cd backend
cp .env.example .env
# Edit .env and add your OPENAI_API_KEY
```

### 2️⃣ Backend Setup

```bash
cd backend

# Install Python dependencies
pip install -r requirements.txt

# Run the server
python -m uvicorn app.main:app --reload
```

Backend will be available at: `http://localhost:8000`

### 3️⃣ Frontend Setup

```bash
cd frontend

# Install Node dependencies
npm install

# Start development server
npm run dev
```

Frontend will be available at: `http://localhost:5173`

## 📖 Usage

1. Open `http://localhost:5173` in your browser
2. Paste any SQL query into the input field
3. Select the SQL dialect (PostgreSQL, MySQL, SQLite)
4. Click **Optimize Query**
5. Get instant:
   - Performance score (0-100)
   - Optimization tips
   - Rewritten optimized query
   - Plain-English explanation

## 🏗️ Project Structure

```
ai-sql-optimiser/
├── frontend/                 # React TypeScript app
│   ├── src/
│   │   ├── components/      # React components
│   │   ├── services/        # API client
│   │   ├── App.tsx          # Main app
│   │   └── main.tsx         # Entry point
│   ├── package.json
│   ├── tsconfig.json
│   ├── vite.config.ts
│   └── index.html
│
├── backend/                  # FastAPI application
│   ├── app/
│   │   ├── main.py         # FastAPI app & routes
│   │   ├── optimizer.py    # OpenAI integration
│   │   ├── schemas.py      # Request/response models
│   │   └── config.py       # Configuration
│   ├── requirements.txt     # Python dependencies
│   ├── .env.example        # Environment template
│   └── README.md           # Backend docs
│
├── .github/
│   └── copilot-instructions.md
│
└── README.md               # This file
```

## 🔧 Configuration

### Frontend
Default backend URL: `http://localhost:8000`

To change: Edit `frontend/src/services/api.ts`

### Backend
Edit `backend/.env`:

```env
OPENAI_API_KEY=sk-your-key-here
API_PORT=8000
ENVIRONMENT=development
FRONTEND_URL=http://localhost:5173
```

## 🐳 Docker Deployment

```bash
# Build and run with Docker Compose (coming soon)
docker-compose up --build
```

## 📊 API Endpoints

### `POST /api/optimize`

Optimize a SQL query

**Request:**
```json
{
  "query": "SELECT * FROM users WHERE id = 1",
  "dialect": "postgresql"
}
```

**Response:**
```json
{
  "optimization_tips": [
    "Use prepared statements to prevent SQL injection",
    "Add index on the 'id' column for faster lookups"
  ],
  "performance_score": 75,
  "rewritten_query": "SELECT * FROM users WHERE id = $1",
  "explanation": "The rewritten query uses parameterized queries which are more secure...",
  "sql_dialect": "postgresql"
}
```

### `POST /api/explain`

Get plain-English explanation

**Request:**
```json
{
  "query": "SELECT * FROM users WHERE id = 1"
}
```

**Response:**
```json
{
  "explanation": "This query retrieves all columns from the users table for the user with id 1."
}
```

## 🎯 LinkedIn Portfolio Talking Points

This project demonstrates:

✅ **Full-Stack Development** - React frontend + Python backend
✅ **Modern Web Technologies** - TypeScript, Vite, FastAPI
✅ **AI/ML Integration** - OpenAI GPT-4 API integration
✅ **Database Knowledge** - SQL optimization expertise
✅ **API Design** - RESTful endpoints with proper validation
✅ **UI/UX** - Responsive, modern design
✅ **DevOps Skills** - Docker ready, environment-based config
✅ **Best Practices** - Type safety, error handling, CORS

**LinkedIn Post Ideas:**
- "Built an AI-powered SQL optimizer using GPT-4"
- "Exploring how AI can improve database performance"
- "Full-stack project: React + FastAPI + OpenAI"

## 🚨 Troubleshooting

### Backend Connection Error
- Ensure backend is running: `http://localhost:8000`
- Check CORS settings in `backend/app/main.py`
- Verify API key is set correctly

### OpenAI API Errors
- Verify your API key is valid
- Check you have sufficient credits
- Ensure query is not empty
- Check API rate limits

### Frontend Not Loading
- Verify frontend is running: `http://localhost:5173`
- Check browser console for errors
- Ensure all dependencies are installed: `npm install`

## 📝 License

This project is yours to use, modify, and share! Perfect for your portfolio.

## 🤝 Next Steps

- [ ] Add query history/saved queries
- [ ] Implement user authentication
- [ ] Add database execution support
- [ ] Create comparison feature (before/after visualization)
- [ ] Deploy to cloud (Vercel + Heroku)
- [ ] Add query plan analysis

## 📞 Support

For issues or questions:
1. Check the Troubleshooting section
2. Review the backend README: `backend/README.md`
3. Check frontend console errors

---

**Made with ❤️ for your LinkedIn portfolio**

*Showcase your AI and full-stack development skills with this impressive project!*
