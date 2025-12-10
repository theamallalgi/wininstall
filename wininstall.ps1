# Scoop-based Windows setup script
# Run with: powershell -ExecutionPolicy Bypass -File setup.ps1

Write-Host "[i] initializing installation setup..."

# Install Scoop
if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
    Invoke-RestMethod get.scoop.sh | Invoke-Expression
}

# Buckets
Write-Host "`n[*] adding essential buckets and repositories..."
scoop bucket add main
scoop bucket add extras
scoop bucket add nerd-fonts

# Core packages
Write-Host "`n[*] installing core packages and apps..."
scoop install git-with-openssh
scoop install main/curl
scoop install extras/brave
scoop install extras/winrar
scoop install extras/alacritty
scoop install extras/mpv
scoop install extras/sublime-text

# VSCode prompt
$v = Read-Host "[?] install VSCode (s)table or (i)nsiders version?"
switch -Regex ($v.Trim()) {
    '^(i|I|insiders|Insiders)$' { scoop install vscode-insiders }
    default { scoop install vscode }
}

# Productivity packages
Write-Host "`n[*] installing other essential apps..."
scoop install libreoffice
scoop install telegram
scoop install localsend
scoop install powertoys

# Fonts
$fonts = Read-Host "`n[?] Install Nerd Fonts? (yes/no)"
switch -Regex ($fonts.Trim()) {
    '^(y|Y|yes|Yes)$' {
        scoop install JetBrainsMono-NF
        scoop install GeistMono-NF
    }
}

Write-Host "`n[→] setup complete."
