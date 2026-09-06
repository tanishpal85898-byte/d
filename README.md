# CivicConnect — Local Problem Reporting Platform

CivicConnect is an intuitive, modern civic engagement platform empowering citizens to report local issues (road damage, garbage accumulation, broken streetlights, water leakage, drainage problems) with AI-assisted categorization, geographic pinpointing, and live resolution tracking.

Municipal authorities get an actionable command center featuring real-time priority dispatch ranking and status lifecycle management.

---

## 🚀 Key Features

- **Civic Issue Reporting**: Citizens can report problems with photo upload, browser geolocation, description, and anonymous reporting option.
- **Single AI API Analysis**: Uses Google Gemini to simultaneously categorize the issue, draft a concise summary, and predict severity (Low, Medium, High).
- **Interactive Community Map**: OpenStreetMap integration via Leaflet with color-coded severity pins (Red: High, Orange: Medium, Green: Resolved).
- **Community Endorsement & Priority Formula**:
  - `Priority Score = Severity Score + Upvote Score`
  - Severity: Low = 20, Medium = 50, High = 80
  - Upvotes: `upvotes * 2` (Max score = 100)
- **Municipal Authority Dashboard**:
  - Triage queue sorted by urgency
  - 1-click status transitions (`Reported` → `In Progress` → `Resolved`)
  - Civic analytics (breakdown by category, status, and most upvoted issues)
- **Hackathon-Ready Instant Demo Mode**: Includes pre-seeded issues and local storage simulation so judges can test all features instantly without requiring prior cloud setup. Live Firebase can be enabled anytime via `.env`.

---

## 🛠️ Tech Stack

- **Frontend**: React 18, Vite, Tailwind CSS, React Router v6, Lucide React icons
- **Map**: Leaflet, OpenStreetMap
- **Backend / DB**: Firebase v10 (Firestore, Storage, Auth) + Intelligent Demo Mode
- **AI**: Google Gemini (1.5/2.5 Flash)

---

## 🏃 Quick Start

### 1. Install Dependencies
```bash
npm install
```

### 2. Configure Environment (Optional)
Copy `.env.example` to `.env`:
```env
VITE_GEMINI_API_KEY=your_gemini_key_here
VITE_FIREBASE_API_KEY=...
```
*(If left empty, CivicConnect automatically operates in Hackathon Demo Mode with smart heuristics and local storage!)*

### 3. Run Development Server
```bash
npm run dev
```

Visit [http://localhost:3000](http://localhost:3000) in your browser.

---

## 🎯 Final Hackathon Demo Flow

1. **Explore Issues**: Open the `/issues` map to inspect active markers across the city.
2. **Report a Problem**: Go to `/report`, enter a problem like *"Huge pothole outside school"*, click *"Use My Location"*, and submit.
3. **AI Categorization**: Observe the instant AI assessment assigning category (*Road Damage*), severity (*High*), and concise summary.
4. **Community Upvoting**: Open the issue details page and click *👍 Upvote*. Watch the priority score adjust.
5. **Switch to Authority**: Click the role switcher in the navbar to toggle to *Authority*.
6. **Triage & Resolve**: Visit `/authority`, locate the issue in the Priority queue, and update its status from *Reported* → *In Progress* → *Resolved*.
7. **Verify**: Check the map to see the pin turn green for Resolved!
