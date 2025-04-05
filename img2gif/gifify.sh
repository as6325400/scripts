#!/bin/bash

input="$1"
output="${2:-${input%.*}.gif}"

palette="/tmp/palette.png"
fps=10
scale=600

# Generate color palette from video
ffmpeg -v warning -i "$input" -vf "fps=$fps,scale=$scale:-1:flags=lanczos,palettegen" -y "$palette"

# Create GIF using the palette
ffmpeg -v warning -i "$input" -i "$palette" -filter_complex "fps=$fps,scale=$scale:-1:flags=lanczos[x];[x][1:v]paletteuse" -y "$output"

# Optimize GIF (optional)
if command -v gifsicle &> /dev/null; then
  gifsicle -O3 --colors 128 "$output" -o "$output"
fi

echo "✅ Export completed: $output"
