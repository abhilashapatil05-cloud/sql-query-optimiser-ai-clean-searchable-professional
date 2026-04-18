# 🚀 Quick Start Guide - AI SQL Query Optimiser

## 5-Minute Setup

### System Requirements
- ✅ Node.js 16+ (frontend)
- ✅ Python 3.11+ (backend)  
- ✅ OpenAI API Key (free trial available)

### Step 1: Get Your OpenAI API Key (2 min)
1. Go to https://platform.openai.com/account/api-keys
2. Sign up or log in
3. Create new API key
4. Copy your key (you won't see it again!)

### Step 2: Setup Backend (1 min)
```bash
# From project root
cd backend
cp .env.example .env

# Edit .env with your favorite editor
# Add: OPENAI_API_KEY=sk-your-api-key-here

# Install & run
pip install -r requirements.txt
python -m uvicorn app.main:app --reload
```

Backend ready at: http://localhost:8000

### Step 3: Setup Frontend (1 min)
```bash
# From project root (in new terminal)
cd frontend
npm install
npm run dev
```

Frontend ready at: http://localhost:5173

### Step 4: Try It! (1 min)
1. Open http://localhost:5173
2. Paste a SQL query like:
   ```sql
   SELECT u.id, u.name, COUNT(o.id) as order_count
   FROM users u
   LEFT JOIN orders o ON u.id = o.user_id
   GROUP BY u.id, u.name
   ```
3. Click "✨ Optimize Query"
4. See instant results!

## Common Issues & Fixes

### "npx: command not found"
→ Install Node.js from https://nodejs.org/

### "python: command not found"  
→ Install Python from https://www.python.org/

### "OPENAI_API_KEY not found"
→ Make sure .env file exists in backend/ folder with your key

### Backend/Frontend connection error
→ Check both are running and on correct ports
→ Frontend should be on port 5173, Backend on 8000

## Automated Setup (Optional)

### On Windows:
```bash
setup.bat
```

### On Mac/Linux:
```bash
chmod +x setup.sh
./setup.sh
```

## What's Working

✅ Query input interface
✅ OpenAI integration
✅ Performance scoring
✅ Query rewriting  
✅ Detailed explanations
✅ Multiple SQL dialects
✅ Beautiful responsive UI
✅ Proper error handling

## File Structure Quick Reference

```
├── frontend/         # React/TypeScript app
│   └── src/components/QueryOptimizer.tsx
│   └── src/services/api.ts
│
├── backend/          # FastAPI server
│   └── app/main.py
│   └── app/optimizer.py
│   └── .env.example
│
├── README.md         # Full documentation
└── LINKEDIN_GUIDE.md # How to share on LinkedIn
```

## Next Steps

1. **Test thoroughly** - Try different queries
2. **Share on GitHub** - Push code to GitHub
3. **Post on LinkedIn** - Use LINKEDIN_GUIDE.md for tips
4. **Customize** - Add features like query history
5. **Deploy** - Use Docker for cloud deployment

## API Quick Reference

### Optimize Query
```bash
curl -X POST http://localhost:8000/api/optimize \
  -H "Content-Type: application/json" \
  -d '{
    "query": "SELECT * FROM users WHERE id = 1",
    "dialect": "postgresql"
  }'
```

### Explain Query
```bash
curl -X POST http://localhost:8000/api/explain \
  -H "Content-Type: application/json" \
  -d '{
    "query": "SELECT * FROM users WHERE id = 1"
  }'
```

## LinkedIn Post Template

```
🚀 Just built an AI SQL Query Optimiser!

Using GPT-4, you can now:
✅ Drop any SQL query  
✅ Get optimization suggestions
✅ See performance score
✅ Get plain-English explanations

Tech: React + FastAPI + OpenAI

GitHub: [your-link]

#FullStack #AI #WebDevelopment #SQL #OpenAI
```

## Need Help?

1. Check main README.md for detailed docs
2. See backend/README.md for API details
3. Check frontend code in src/components/
4. Review OpenAI docs: https://platform.openai.com/docs

---

**You're all set! 🎉 Start building your portfolio today!**

Questions? Everything is documented in the README files.
