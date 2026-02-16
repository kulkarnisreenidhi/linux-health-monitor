# Linux Health Monitor

A Bash-based system monitoring tool built as part of DevOps foundation training.

---

## 📌 Features

- Displays system date & hostname
- Shows uptime
- Memory usage monitoring
- Disk usage (root partition)
- Top 5 CPU-consuming processes
- Automatic disk usage alert (>80%)
- Full logging to file
- Scheduled automation using cron

---

## 📂 Project Structure

# Linux Health Monitor

A Bash-based system monitoring tool built as part of DevOps foundation training.

---

## 📌 Features

- Displays system date & hostname
- Shows uptime
- Memory usage monitoring
- Disk usage (root partition)
- Top 5 CPU-consuming processes
- Automatic disk usage alert (>80%)
- Full logging to file
- Scheduled automation using cron

---

## 📂 Project Structure

linux-health-monitor/
├── scripts/
│ └── health-monitor.sh
├── logs/ # Ignored in Git
├── README.md
└── .gitignore

---

## 🚀 How To Run

Make script executable:

```bash
chmod +x scripts/health-monitor.sh

---

## 🚀 How To Run

Make script executable:

```bash
chmod +x scripts/health-monitor.sh
Run manually:

./scripts/health-monitor.sh⏰ Cron Automation

The script runs automatically every 5 minutes using cron:

*/5 * * * * /home/sreenidhi/linux-projects/linux-health-monitor/scripts/health-monitor.sh >> /home/sreenidhi/linux-projects/linux-health-monitor/logs/cron.log 2>&1


Verify cron:

crontab -l


Check logs:

cat logs/cron.log
