# 🛠️ Script Collection

A collection of useful CLI scripts for daily development and productivity.  
This repo will grow over time as more handy tools are added.

---

## 📂 Scripts

| Name        | Description                                |
|-------------|--------------------------------------------|
| `gifify.sh` | Convert a video to a high-quality, optimized GIF using ffmpeg |
| *(more coming)* | Shell tools, automation, and custom utilities |

---

## 🚀 Usage

Clone this repo:

```bash
git clone https://github.com/your-username/scripts.git
cd scripts
```

Make the scripts executable:

```bash
chmod +x *.sh
```

Then you can run any script:

```bash
./gifify.sh input.mp4
```

---

## ⚡ Alias Setup (Optional)

You can set up aliases to call these scripts from anywhere.

### 🔹 Temporary Alias (current terminal only)

```bash
alias gifify="bash ~/path/to/scripts/gifify.sh"
```

Use it right away:

```bash
gifify demo.mp4
```

> This alias will be gone when you close the terminal.

---

### 🔸 Permanent Alias (global)

To use the alias every time you open a terminal:

#### If you use Zsh:
```bash
echo 'alias gifify="bash ~/path/to/scripts/gifify.sh"' >> ~/.zshrc
source ~/.zshrc
```

#### If you use Bash:
```bash
echo 'alias gifify="bash ~/path/to/scripts/gifify.sh"' >> ~/.bashrc
source ~/.bashrc
```

Replace the path with the correct one on your machine (e.g. `~/projects/scripts`).

