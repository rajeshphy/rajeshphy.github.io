---
title: "Frequently Used Terminal Commands"
summary: "A practical reference list of commonly used macOS terminal commands for daily development and system management."
date: 2026-02-15 11:30:00 +0530
categories:
  - doc-code
tags:
  - macos
  - terminal
  - cli
  - unix
  - development
permalink: /Feq-Mac-Cmd/
hidden: true
---
macOS is built on Unix, which means powerful terminal commands are available for file management, networking, system monitoring, and development tasks.

Below is a structured list of frequently used macOS commands.

## To Stop Terminal Process
- `Ctrl + C` → Stop current process
- `Ctrl + Z` → Suspend process 
- `Cmd + .` → Interrupt process (alternative to Ctrl + C)
- ⌘ + Shift + . → Force quit terminal app by modifying the .zshrc to some another name (use with caution)


## File & Directory Management

- `pwd` – Print current directory  
- `ls` – List files  
- `ls -la` – List all files (including hidden)  
- `cd <directory>` – Change directory  
- `cd ..` – Move up one directory  
- `mkdir <name>` – Create directory  
- `rmdir <name>` – Remove empty directory  
- `rm <file>` – Remove file  
- `rm -rf <directory>` – Force remove directory  
- `cp <src> <dest>` – Copy file  
- `mv <src> <dest>` – Move or rename file  
- `touch <file>` – Create empty file  
- `open .` – Open current folder in Finder  



## File Viewing & Editing

- `cat <file>` – Display file content  
- `less <file>` – View file page by page  
- `head <file>` – Show first 10 lines  
- `tail <file>` – Show last 10 lines  
- `tail -f <file>` – Live file monitoring  
- `nano <file>` – Open file in Nano editor  
- `vim <file>` – Open file in Vim  
- `code <file>` – Open file in VS Code (if installed)



## System Information

- `whoami` – Current user  
- `hostname` – System hostname  
- `uname -a` – System information  
- `sw_vers` – macOS version  
- `date` – Current date & time  
- `uptime` – System running time  



## Disk & Storage

- `df -h` – Disk free space  
- `df -h /` – Main drive space  
- `du -sh .` – Current folder size  
- `du -sh <folder>` – Specific folder size  



## Process Management

- `top` – Live system monitor  
- `ps aux` – List running processes  
- `kill <pid>` – Kill process  
- `kill -9 <pid>` – Force kill process  



## Network Commands

- `ping <host>` – Check connectivity  
- `ifconfig` – Network configuration  
- `netstat -an` – Network statistics  
- `curl <url>` – Fetch URL content  
- `wget <url>` – Download file (if installed)  



## Package Management (Homebrew)

- `brew update` – Update formulae  
- `brew upgrade` – Upgrade packages  
- `brew install <pkg>` – Install package  
- `brew uninstall <pkg>` – Remove package  
- `brew list` – List installed packages  



## Git Commands (Development)

- `git clone <repo>` – Clone repository  
- `git status` – Check status  
- `git add .` – Stage changes  
- `git commit -m "message"` – Commit changes  
- `git push` – Push to remote  
- `git pull` – Pull updates  



## Permission & Ownership

- `chmod +x <file>` – Make file executable  
- `chmod 755 <file>` – Set permission  
- `chown user:group <file>` – Change ownership  



## Environment & Shell

- `echo $PATH` – Show PATH variable  
- `export VAR=value` – Set environment variable  
- `source ~/.zshrc` – Reload shell config  
- `clear` – Clear terminal  (Shortcut: \`Cmd + K\`)

---

To find files larger than a specific size in macOS, use the **find** command with the **-size** option.

## Find Files Larger Than 2GB (Entire System)

`sudo find / -type f -size +2G 2>/dev/null`

- **sudo** → Required to access all directories  
- **/** → Search from root  
- **-type f** → Only files (For directories, use -type d)
- **-size +2G** → Greater than 2GB  
- **2>/dev/null** → Hide permission errors  

## Find Files Larger Than 3GB

`sudo find / -type f -size +3G 2>/dev/null`


## Search Only Inside Home Directory (Safer & Faster)

`find ~ -type f -size +2G`

## Show File Size Along With Name (Sorted by Size)

`find ~ -type f -size +2G -exec ls -lh {} ; | sort -k5 -h`


## Find Top 20 Largest Files (Alternative Method)

`sudo du -ah / 2>/dev/null | sort -rh | head -20`

## Size Units in **find**

- **k** → Kilobytes  
- **M** → Megabytes  
- **G** → Gigabytes  

Examples:

-size +500M
-size +1G
-size +5G
