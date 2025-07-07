@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

:: Выбор языка
:lang
echo Select language / Выберите язык:
echo 1. Русский
echo 2. English
set /p lang_choice=Ваш выбор (1/2): 

if "%lang_choice%"=="1" goto ru
if "%lang_choice%"=="2" goto en
echo ❌ Неверный выбор / Invalid choice
goto lang

:ru
set msg_ip_input=Введите первый октет (x) от 0 до 254: 
set msg_y_input=Введите предел второго октета (y) от 0 до 254: 
set msg_scanning=Сканирую доступные адреса...
set msg_available=доступен
set msg_done=Готово. Нажмите любую клавишу для выхода...
goto start

:en
set msg_ip_input=Enter first octet (x) from 0 to 254: 
set msg_y_input=Enter upper limit of second octet (y) from 0 to 254: 
set msg_scanning=Scanning available addresses...
set msg_available=is available
set msg_done=Done. Press any key to exit...
goto start

:start
:: Ввод x
:input1
set /p x=!msg_ip_input!
set /a test1=%x% + 0 >nul 2>&1
if errorlevel 1 goto input1
if %x% LSS 0 goto input1
if %x% GTR 254 goto input1

:: Ввод ymax
:input2
set /p ymax=!msg_y_input!
set /a test2=%ymax% + 0 >nul 2>&1
if errorlevel 1 goto input2
if %ymax% LSS 0 goto input2
if %ymax% GTR 254 goto input2

echo.
echo 🛰 !msg_scanning!
echo.

:: Скан
for /L %%y in (0,1,%ymax%) do (
    set ip=192.168.%x%.%%y
    ping -n 1 -w 400 !ip! >nul
    if !errorlevel! EQU 0 (
        call :color_echo "!ip! !msg_available!" Green
    )
)

echo.
echo !msg_done!
pause >nul
exit /b

:: ===== Подпрограмма цветного вывода =====
:color_echo
:: %1 — текст, %2 — цвет
powershell -Command "Write-Host %~1 -ForegroundColor %~2"
exit /b
