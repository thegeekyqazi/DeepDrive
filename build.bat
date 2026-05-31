@echo off
echo Installing PyInstaller...
pip install pyinstaller --quiet

echo Building DeepDrive.exe...
pyinstaller --onefile --windowed ^
    --name DeepDrive ^
    --add-data "static;static" ^
    --add-data "index.html;." ^
    server.py

echo.
echo Build complete! Your exe is at: dist\DeepDrive.exe
pause
