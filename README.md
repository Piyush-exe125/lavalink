# 🎵 Lavalink v4 — Free Hosting Setup
### Discord Music Bot ke liye | Railway & Render pe Deploy Karo

---

## 📁 File Structure
```
lavalink-host/
├── Dockerfile
├── application.yml
├── .gitignore
└── README.md
```

---

## 🚂 Railway pe Deploy Karna (Recommended - Fast & Easy)

### Step 1 — GitHub pe Upload Karo
1. GitHub pe nayi **public/private repository** banao (naam: `lavalink-host`)
2. Ye saari files us repo mein upload karo

### Step 2 — Railway Account Banao
1. [railway.app](https://railway.app) pe jao
2. **GitHub se login** karo (free plan pe $5 credit milta hai)

### Step 3 — New Project Deploy Karo
1. Dashboard pe **"New Project"** click karo
2. **"Deploy from GitHub repo"** select karo
3. Apni `lavalink-host` repo select karo
4. Railway automatically Dockerfile detect karega ✅

### Step 4 — Environment Variables Set Karo
Railway dashboard mein **Variables** tab pe jao aur ye add karo:

| Variable | Value | Description |
|----------|-------|-------------|
| `LAVALINK_PASSWORD` | `apna_strong_password` | Bot se connect karne ka password |
| `SPOTIFY_CLIENT_ID` | `your_spotify_id` | Spotify support ke liye (optional) |
| `SPOTIFY_CLIENT_SECRET` | `your_spotify_secret` | Spotify support ke liye (optional) |

> ⚠️ **PORT** Railway automatic set karta hai, manually mat dalo!

### Step 5 — Public URL Lo
1. **Settings** → **Networking** pe jao
2. **"Generate Domain"** click karo
3. Tumhara URL milega: `https://lavalink-xxx.railway.app`

### Step 6 — Bot mein Configure Karo
```js
// Bot config mein ye dalo:
const nodes = [{
  host: "lavalink-xxx.railway.app",  // Railway URL (https:// hatao)
  port: 443,                          // Railway HTTPS port
  password: "apna_strong_password",
  secure: true                        // HTTPS ke liye true
}];
```

---

## 🎨 Render pe Deploy Karna

### Step 1 — GitHub pe Upload Karo
Same as Railway — files GitHub repo mein daalo

### Step 2 — Render Account Banao
1. [render.com](https://render.com) pe jao
2. GitHub se signup karo

### Step 3 — New Web Service Banao
1. **"New +"** → **"Web Service"** click karo
2. GitHub repo connect karo
3. Settings:
   - **Environment:** `Docker`
   - **Plan:** `Free`
   - **Port:** `2333`

### Step 4 — Environment Variables
Same variables add karo jaise Railway mein

### Step 5 — Bot Config
```js
const nodes = [{
  host: "your-app.onrender.com",
  port: 443,
  password: "apna_strong_password",
  secure: true
}];
```

> ⚠️ **Render Free Plan:** 15 min inactivity pe sleep ho jaata hai. 
> Keep-alive service use karo ya paid plan lo.

---

## 🎵 Supported Sources

| Source | Status |
|--------|--------|
| YouTube | ✅ (Plugin via) |
| YouTube Music | ✅ |
| SoundCloud | ✅ |
| Spotify | ✅ (Client ID chahiye) |
| Bandcamp | ✅ |
| Twitch | ✅ |
| Vimeo | ✅ |
| HTTP Streams | ✅ |

---

## 🔑 Spotify Client ID Kaise Milega?

1. [developer.spotify.com](https://developer.spotify.com/dashboard) pe jao
2. **"Create App"** click karo
3. `Client ID` aur `Client Secret` copy karo
4. Railway/Render ke environment variables mein paste karo

---

## 🤖 Popular Music Bot Libraries

| Library | Language | Link |
|---------|----------|------|
| Lavalink.py | Python | [github](https://github.com/Devoxin/Lavalink.py) |
| wavelink | Python | [github](https://github.com/PythonFZ/wavelink) |
| Erela.js | Node.js | [github](https://github.com/MenuDocs/erela.js) |
| Shoukaku | Node.js | [github](https://github.com/shipgirlproject/Shoukaku) |
| LavaPlayer | Java | [github](https://github.com/sedmelluq/lavaplayer) |

---

## ❓ Common Errors

**Connection Refused:**
- Password check karo bot config mein
- `secure: true` set kiya hai?

**YouTube not working:**
- YouTube plugin automatically download hoga first run mein
- Pehli baar thoda time lagta hai

**Render pe sleep:**
- UptimeRobot.com se free ping setup karo har 14 min pe

---

## 📞 Help chahiye?

- Lavalink Discord: [discord.gg/lavalink](https://discord.gg/lavalink)
- Issues: GitHub Issues pe dalo
