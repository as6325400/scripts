#!/bin/bash

input="$1"
output="${2:-${input%.*}.gif}"

palette="/tmp/palette.png"
fps=10
scale=600

# 產生 palette
ffmpeg -v warning -i "$input" -vf "fps=$fps,scale=$scale:-1:flags=lanczos,palettegen" -y "$palette"

# 轉 gif
ffmpeg -v warning -i "$input" -i "$palette" -filter_complex "fps=$fps,scale=$scale:-1:flags=lanczos[x];[x][1:v]paletteuse" -y "$output"

# 壓縮 gif（可選）
if command -v gifsicle &> /dev/null; then
  gifsicle -O3 --colors 128 "$output" -o "$output"
fi

echo "✅ 輸出完成：$output"

