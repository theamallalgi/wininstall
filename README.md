![Intro](https://github.com/theamallalgi/wininstall/blob/main/dependencies/header.png?raw=true)
# Wininstall Script
Single-file minimal Windows installation and setup script for fresh installs.

> [!WARNING]
> Run scripts and code snippets from the internet with care. Review them for vulnerabilities or malware before executing. This repository is clean, but checking scripts first is always a healthy habit.

## Installation

1. Open PowerShell.
2. Allow running scripts for this session:

   ```powershell
     Set-ExecutionPolicy -Scope Process Bypass
   ```
4. Run the setup script:

   ```powershell
   iwr https://raw.githubusercontent.com/theamallalgi/wininstall/main/wininstall.ps1 | iex
   ```
6. Follow the terminal and complete the setup.
