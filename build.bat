@echo off
echo Installing PyInstaller...
pip install pyinstaller --quiet

echo Building DeepDrive.exe...
pyinstaller --onefile --console ^
    --name DeepDrive ^
    --add-data "static;static" ^
    --add-data "index.html;." ^
    --hidden-import uvicorn.logging ^
    --hidden-import uvicorn.loops ^
    --hidden-import uvicorn.loops.auto ^
    --hidden-import uvicorn.lifespan ^
    --hidden-import uvicorn.lifespan.on ^
    --hidden-import uvicorn.protocols ^
    --hidden-import uvicorn.protocols.http ^
    --hidden-import uvicorn.protocols.http.auto ^
    --hidden-import uvicorn.protocols.websockets ^
    --hidden-import uvicorn.protocols.websockets.auto ^
    server.py

echo.
echo Build complete! Your exe is at: dist\DeepDrive.exe
pause
