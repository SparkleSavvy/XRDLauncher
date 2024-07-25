@echo off
color 0A
cls

:menu
echo ====================================
echo             XRDLAUNCHER
echo ====================================
echo.
echo   1. Launch Rust
echo   2. Launch without EAC
echo   3. Launch Injector
echo   4. Exit
echo.
echo ====================================

set /p choice=Enter your choice (1-4): 

if "%choice%"=="1" goto launch_rust
if "%choice%"=="2" goto launch_without_eac
if "%choice%"=="3" goto launch_injector
if "%choice%"=="4" goto exit

echo Invalid choice. Please try again.
timeout /t 2 >nul
cls
goto menu

:launch_rust
cd ..
start "" Rust.exe
cd XRDLauncher
goto end

:launch_without_eac
cd ..
start "" Rust.exe
start "" RustClient.exe
cd XRDLauncher
goto end

:launch_injector
start "" eiv3.exe
goto end

:exit
exit

:end
echo Operation completed.
timeout /t 2 >nul
cls
goto menu