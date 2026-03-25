# log-analyzer
This Bash script automates log analysis by extracting errors and warnings, counting key events, highlighting the most frequent issues, generating a clean, readable report.

#  Log Analyzer Script

##  Authored by Jo Alvarez

---

## Overview (Case Study)

System administrators and DevOps engineers often deal with massive log files that are difficult to read and analyze manually.

### Problem

* Logs are large and unstructured
* Hard to identify critical issues quickly
* Time-consuming manual filtering

### Solution

This Bash script automates log analysis by:

* Extracting errors and warnings
* Counting key events
* Highlighting the most frequent issues
* Generating a clean, readable report

---

## Features

* Counts total log entries
* Detects errors
* Detects warnings
* Tracks failed login attempts
* Displays top 5 recurring errors

---

## How to Use

### 1. Clone the repo

```bash
git clone https://github.com/seattlecloud/log-analyzer.git
cd log-analyzer-script
```

### 2. Make script executable

```bash
chmod +x log_analyzer.sh
```

### 3. Run the script

```bash
./log_analyzer.sh sample.log
```

---

## 💻 Run in GitHub Codespaces

1. Open repo in GitHub
2. Click **Code → Codespaces → Create Codespace**
3. Run:

```bash
chmod +x log_analyzer.sh
./log_analyzer.sh sample.log
```

---

## Output Example

```
===== LOG ANALYSIS REPORT =====
Total Lines: 8
Error Count: 3
Warning Count: 2
Failed Login Attempts: 1
```

---

## License

This project is licensed under the MIT License.

---

## Attribution

* Inspired by Linux text-processing tools (grep, awk, sed)


