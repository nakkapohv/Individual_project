@echo off
echo ===============================
echo Установка и запуск проекта
echo ===============================

:: Проверка Python
python --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
echo Python не найден. Установи Python и добавь в PATH.
pause
exit /b
)

:: Создание виртуального окружения
IF NOT EXIST venv (
echo Создание виртуального окружения...
python -m venv venv
)

:: Активация
call venv\Scripts\activate

:: Обновление pip
python -m pip install --upgrade pip

:: Установка зависимостей
pip install -r requirements.txt

:: Запуск игры (замени main.py если файл называется иначе)
echo Запуск игры...
python main.py

pause