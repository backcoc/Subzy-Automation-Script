# Subzy Automation Script

## 📌 Overview
This Bash script automates the process of running the `subzy` tool on multiple text files in a directory. It:
- Scans all `.txt` files in the same directory.
- Runs `subzy` on each file to detect subdomain takeovers.
- Saves the output with a `TO` prefix inside a `results/` folder.
- Ensures the `results/` directory exists before processing.

## 🚀 How It Works
1. The script scans all `.txt` files in the current directory.
2. It runs the command:
   ```bash
   subzy run --targets filename.txt --hide_fails > results/TOfilename.txt
   ```
3. The results are stored inside the `results/` folder.

## 📂 Directory Structure
```
.
├── subzyautomate.sh
├── file1.txt
├── file2.txt
├── results/
│   ├── TOfile1.txt
│   ├── TOfile2.txt
```

## 🛠 Installation & Usage
### **1️⃣ Clone the Repository**
```bash
git clone https://github.com/yourusername/yourrepo.git
cd yourrepo
```

### **2️⃣ Make the Script Executable**
```bash
chmod +x subzyautomate.sh
```

### **3️⃣ Run the Script**
```bash
./subzyautomate.sh
```

## ✅ Prerequisites
Make sure you have:
- **Bash** installed (default on Linux & macOS, available on Windows via WSL).
- **Subzy** installed:
  ```bash
  go install github.com/LukaSikic/subzy@latest
  ```
- **Text files** (`.txt`) with subdomains inside the same directory as the script.

## 🔧 Troubleshooting
### **"bad interpreter: /bin/bash^M: no such file or directory"**
If you encounter this error, fix it with:
```bash
dos2unix subzyautomate.sh
```
Or manually convert line endings to UNIX format (`LF`).

## 📜 License
This project is open-source and available under the [MIT License](LICENSE).

## 🙌 Contributions
Feel free to fork this repo and submit pull requests to improve the script!

## 🛡️ Disclaimer
This script is intended for educational and ethical use only. Ensure you have permission before scanning any domains.

---

_Developed by [Yousaf](https://github.com/backcoc)_

