# Quick script to remove old GitHub credentials and set up new authentication

Write-Host "`n=== Removing old GitHub credentials ===" -ForegroundColor Yellow

# Remove old GitHub credentials
cmdkey /delete:"LegacyGeneric:target=git:https://github.com" 2>$null
cmdkey /delete:"LegacyGeneric:target=gh:github.com" 2>$null

Write-Host "Old credentials removed!" -ForegroundColor Green

Write-Host "`n=== Next Steps ===" -ForegroundColor Cyan
Write-Host "1. Create a Personal Access Token at: https://github.com/settings/tokens"
Write-Host "2. When you push, use your token as the password"
Write-Host "`nTo test, run:" -ForegroundColor Yellow
Write-Host "   git push -u origin main" -ForegroundColor Yellow
Write-Host "`nWhen prompted:" -ForegroundColor Gray
Write-Host "   Username: [your GitHub username]"
Write-Host "   Password: [paste your Personal Access Token]"

