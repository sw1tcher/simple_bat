🔍 Local Network IP Scanner (Batch Script)

A barely-legal neighborhood sniffer for Windows LANs 🕵️‍♂️

Need to know who’s lurking on your local network? This tiny .bat script pings all the usual suspects from 192.168.X.0 to 192.168.X.Y, paints the reachable ones green, and lets you act like a hacker from a 90s movie. All without leaving the comfort of cmd.exe.
⚙ Features

    🎛️ Language selection: Russian 🇷🇺 or English 🇬🇧

    🎯 Scan IP range: 192.168.X.0-Y

    🟢 Reachable IPs show up in green, others don’t get the privilege of being mentioned

    💨 Fast and lightweight – uses built-in Windows tools: ping and PowerShell

    🧠 No admin rights, no installs, no drama

🖥️ Demo

Select language / Выберите язык:
1. Русский
2. English

> Enter first octet (x): 1
> Enter upper limit for second octet (y): 10

Output:

🛰 Scanning available addresses...

✅ 192.168.1.2 is available
✅ 192.168.1.7 is available

Boom 💥 Now you know who’s home.
🧰 Requirements

    Windows 7, 10, 11 — or XP if you're feeling retro 👴

    .bat execution not blocked by your paranoid sysadmin

    PowerShell enabled (comes with Windows, relax)

    Terminal that supports UTF-8 (we tried to be modern)

🧪 Installation

Clone it, run it, profit:

git clone https://github.com/yourname/lan-ping-scanner
cd lan-ping-scanner
lan_ping_scanner.bat

Or just double-click the .bat and watch the magic happen ✨
👀 Who’s this for?

    Network admins who don’t like typing nmap

    Curious users looking to find smart toasters on their LAN

    IT support on a budget (or a bootable flash drive)

    Anyone who wants to feel like a hacker without learning Python 🐍

📜 License

MIT — use freely, fork wildly, and if it breaks your toaster, don’t call us.
Use it at work, at home, or in a parallel universe.
Especially in a parallel universe. 🌌

💬 Got feedback? PRs and jokes welcome.
