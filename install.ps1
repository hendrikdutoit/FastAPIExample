Write-Host "Running D:\Dropbox\Projects\HdT\fastapiexample\install.ps1..." -ForegroundColor Yellow
if (Test-Path -Path $_project_dir\pyproject.toml) {pip install --no-cache-dir -e .[dev]}
