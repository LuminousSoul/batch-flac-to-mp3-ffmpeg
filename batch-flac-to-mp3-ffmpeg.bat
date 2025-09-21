@echo off
REM Batch script to convert all FLAC files in the folder to MP3 with original metadata

REM Loop through all FLAC files
for %%f in (*.flac) do (
    echo Converting "%%f" to MP3...
    ffmpeg -i "%%f" -q:a 0 -map_metadata 0 "%%~nf.mp3"
)

echo.
echo All conversions complete!
pause
