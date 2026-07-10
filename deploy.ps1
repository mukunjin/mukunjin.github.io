$ErrorActionPreference = 'Stop'

Write-Host 'Building site...' -ForegroundColor Cyan
hugo
if ($LASTEXITCODE -ne 0) { Write-Host 'Build failed.' -ForegroundColor Red; exit 1 }

Write-Host 'Deploying to gh-pages...' -ForegroundColor Cyan
git subtree push --prefix public origin gh-pages
Write-Host 'Deployed.' -ForegroundColor Green
