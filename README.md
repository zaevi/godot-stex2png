# godot-stex2png

Simple powershell script to convert Godot StreamTexture(.stex) to .png file.

Usage:

```powershell
# Convert single .stex file
./stex2png.ps1 streamtexture.stex
    # will generate streamtexture.png

# Convert using pipeline
ls *.stex | ./stex2png.ps1
```