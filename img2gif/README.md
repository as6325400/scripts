# 🖼️ img2gif — Convert a sequence of images to an animated GIF

This script converts a folder of images (e.g. PNG or JPG) into a high-quality animated GIF using `ffmpeg`.

---

## 📦 Dependencies

- [`ffmpeg`](https://ffmpeg.org/) — core tool for converting image sequences to GIF
- (Optional) [`gifsicle`](https://www.lcdf.org/gifsicle/) — further compress and optimize the output GIF

---

## 🛠 Installation

### macOS (via Homebrew)

```bash
brew install ffmpeg gifsicle
```

### Ubuntu / Debian

```bash
sudo apt update
sudo apt install ffmpeg gifsicle
```

### Arch Linux

```bash
sudo pacman -S ffmpeg gifsicle
```

---


## 🚀 Usage

```bash
./gifify.sh path/to/frames/ [output.gif]
```
Example:

```bash
./gifify.sh vedio.mp4 my-animation.gif
```

If you don't specify an output name, it will default to the input folder's name with a `.gif` extension.
For example:

```bash
./gifify.sh vedio.mp4 
```

will produce:

```
vedio.gif
```

---

