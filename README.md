# DraftMate AI Legal Drafting Studio

A local prototype for legal drafting workflows, document extraction, citation triage, study outlines, and exports. It is a drafting aid, not legal advice or a verified legal research system.

## Start on Windows (recommended)
1. Extract the ZIP completely.
2. Open the extracted `DraftMate_AI_Complete` folder.
3. Double-click `start_windows.bat`. Or open PowerShell in this exact folder and run:
   ```powershell
   python -m pip install -r requirements.txt
   python run.py
   ```
4. Open https://zw6sfvw0-8000.inc1.devtunnels.ms/
5. Create an account with an email and password of at least 8 characters. Later, use **Sign in** with the same credentials.

## Where data is stored
- `app/data/draftmate.db` — SQLite database for accounts, salted password hashes, sessions, profile details, extracted document text, and generated drafts.
- `app/uploads/` — uploaded source documents. Files are associated with the account that uploaded them in the local database.
- Data persists when you close the browser or restart the app. Keep a backup of `app/data/` and `app/uploads/` if you need to preserve work. Do not delete these folders if you want to keep data.
- This app is designed for local use on your own computer. Do not port-forward it or expose it to the public internet. It does not yet implement production-grade account recovery, rate limiting, CSRF hardening, encryption-at-rest, or multi-device cloud sync.

## Supported uploads
TXT, MD, DOCX, PDF; maximum 10 MB per file.

## Current limitations
- Draft generation and law/citation checks use local rule-based demo logic, not a live legal AI model or authoritative legal database.
- Citations are triaged, not certified. Confirm facts, legal authorities, deadlines, jurisdiction, and remedies with a qualified lawyer before use.
- Voice input depends on browser support and microphone permission.
- Account passwords are hashed using PBKDF2-HMAC-SHA256 and never stored as plain text. Session cookies are HTTP-only, but this prototype is not a substitute for a security-reviewed production service.

## Project structure
```
DraftMate_AI_Complete/
  run.py
  start_windows.bat
  requirements.txt
  README.md
  app/
    main.py
    static/
      login.html
      login.js
      index.html
      app.js
      styles.css
    data/       # created automatically; persistent SQLite database
    uploads/    # uploaded documents
```
