# GitHub Setup Script
# Run this after creating a Personal Access Token at https://github.com/settings/tokens

Write-Host "`n=== GitHub Repository Setup ===" -ForegroundColor Cyan
Write-Host "`nStep 1: Create a GitHub repository first (if you haven't already)"
Write-Host "   Go to: https://github.com/new"
Write-Host "   Create a new repository (don't initialize with README)"
Write-Host "`nStep 2: Add your GitHub username and repository name below`n"

$githubUsername = Read-Host "Enter your GitHub username"
$repoName = Read-Host "Enter your repository name"

# Check if remote already exists
$remoteExists = git remote get-url origin 2>$null
if ($LASTEXITCODE -eq 0) {
    Write-Host "`nRemote 'origin' already exists. Updating..." -ForegroundColor Yellow
    git remote set-url origin "https://github.com/$githubUsername/$repoName.git"
} else {
    Write-Host "`nAdding remote 'origin'..." -ForegroundColor Green
    git remote add origin "https://github.com/$githubUsername/$repoName.git"
}

Write-Host "`n=== Next Steps ===" -ForegroundColor Cyan
Write-Host "1. When you push, Git will prompt for credentials"
Write-Host "2. Username: $githubUsername"
Write-Host "3. Password: [Paste your Personal Access Token here]"
Write-Host "`nTo push your code, run:"
Write-Host "   git add ." -ForegroundColor Yellow
Write-Host "   git commit -m 'Initial commit'" -ForegroundColor Yellow
Write-Host "   git push -u origin main" -ForegroundColor Yellow
Write-Host "`nNote: If your branch is 'master' instead of 'main', use:" -ForegroundColor Gray
Write-Host "   git push -u origin master" -ForegroundColor Gray

