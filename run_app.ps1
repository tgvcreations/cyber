# ==============================================================================
# CyberSentinel AI - Application Launcher Script (Windows PowerShell)
# ==============================================================================
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force
$env:PATH = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

Write-Host ""
Write-Host "========================================================================" -ForegroundColor Cyan
Write-Host "   🛡️  CYBERSENTINEL AI - AUTOMATED CYBER INCIDENT RESPONSE AGENT  🛡️   " -ForegroundColor Yellow
Write-Host "========================================================================" -ForegroundColor Cyan
Write-Host " [1/3] Checking environment & runtimes..." -ForegroundColor Gray

$pythonPath = "backend\venv\Scripts\python.exe"
if (-not (Test-Path $pythonPath)) {
    Write-Host "Virtual environment not detected at $pythonPath! Creating..." -ForegroundColor Yellow
    & "$env:LOCALAPPDATA\Programs\Python\Python311\python.exe" -m venv backend\venv
    & "backend\venv\Scripts\pip.exe" install -r backend\requirements.txt
}

Write-Host " [2/3] Starting FastAPI Backend on http://127.0.0.1:8000..." -ForegroundColor Green
$backendProcess = Start-Process -FilePath $pythonPath -ArgumentList "-m uvicorn backend.app.main:app --host 127.0.0.1 --port 8000" -PassThru -NoNewWindow

Start-Sleep -Seconds 2

Write-Host " [3/3] Starting React + Vite SOC Frontend on http://127.0.0.1:5173..." -ForegroundColor Green
Set-Location -Path "frontend"
npm.cmd run dev -- --host 127.0.0.1 --port 5173

# Clean up backend process on exit
if ($backendProcess -and -not $backendProcess.HasExited) {
    Stop-Process -Id $backendProcess.Id -Force -ErrorAction SilentlyContinue
}

