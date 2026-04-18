@echo off
setlocal
echo ====================================================
echo Switching to Pygame-ce (Community Edition)...
echo ====================================================

:: Удаляем старый pygame, если он был, чтобы избежать конфликтов
echo Removing old pygame if exists...
pip uninstall pygame -y

:: Установка зависимостей из requirements.txt
echo Installing pygame-ce...
pip install -r requirements.txt

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERROR] Failed to install pygame-ce.
    pause
    exit /b
)

echo.
echo ====================================================
echo Starting the game...
echo ====================================================

:: Запуск игры (убедитесь, что ваш файл называется main.py)
python main.py

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERROR] The game crashed.
    pause
)

endlocal
exit