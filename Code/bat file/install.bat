@echo off
echo ====================================================
echo Installing dependencies for Hangman Game...
echo ====================================================

:: Проверка и установка библиотек
pip install -r requirements.txt

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERROR] Failed to install dependencies. Check if Python and Pip are installed.
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
    echo [ERROR] The game crashed. See the error message above.
    pause
)

exit