# GitHub Authentication Setup

Your GitHub credentials have expired. Here are the steps to fix it:

## Option 1: Personal Access Token (Recommended)

### Step 1: Create a Personal Access Token

1. Go to: https://github.com/settings/tokens
2. Click **"Generate new token"** → **"Generate new token (classic)"**
3. Give it a name (e.g., "Cloudflare Pages Deploy")
4. Select expiration:
   - **90 days** (recommended for security)
   - Or **No expiration** (for long-term use)
5. Check the **"repo"** scope (gives full control of private repositories)
6. Click **"Generate token"**
7. **COPY THE TOKEN IMMEDIATELY** - you won't see it again!

### Step 2: Update Windows Credential Manager

1. Press `Win + R`, type `control /name Microsoft.CredentialManager`
2. Go to **"Windows Credentials"**
3. Find entries for `git:https://github.com`
4. Click **"Remove"** to delete old credentials
5. When you push next time, Git will prompt for new credentials:
   - **Username**: Your GitHub username
   - **Password**: Paste your Personal Access Token (not your GitHub password!)

### Step 3: Set up the remote and push

Run the PowerShell script:
```powershell
.\setup-github.ps1
```

Or manually:
```powershell
# Add remote (replace USERNAME and REPO_NAME)
git remote add origin https://github.com/USERNAME/REPO_NAME.git

# Or if remote exists, update it:
git remote set-url origin https://github.com/USERNAME/REPO_NAME.git

# Push your code
git add .
git commit -m "Initial commit"
git push -u origin main
```

When prompted:
- **Username**: Your GitHub username
- **Password**: Your Personal Access Token

---

## Option 2: SSH Keys (Alternative)

If you prefer SSH:

1. Generate SSH key:
   ```powershell
   ssh-keygen -t ed25519 -C "paul.haigh@iaggbs.com"
   ```

2. Add to SSH agent:
   ```powershell
   Start-Service ssh-agent
   ssh-add ~/.ssh/id_ed25519
   ```

3. Copy public key:
   ```powershell
   Get-Content ~/.ssh/id_ed25519.pub | Set-Clipboard
   ```

4. Add to GitHub:
   - Go to: https://github.com/settings/keys
   - Click "New SSH key"
   - Paste your public key

5. Update remote to use SSH:
   ```powershell
   git remote set-url origin git@github.com:USERNAME/REPO_NAME.git
   ```

---

## Quick Test

After setting up, test with:
```powershell
git push -u origin main
```

If it works, you're all set! 🎉

