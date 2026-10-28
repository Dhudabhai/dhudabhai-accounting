@echo off
echo ===================================================
echo     Dhudabhai Accounting - Android APK Builder
echo ===================================================
echo.

where gradlew >nul 2>&1
if %ERRORLEVEL% equ 0 (
    echo [*] Building Android APK using Gradle Wrapper...
    call gradlew assembleRelease
    echo.
    echo [*] Done! Check android/app/build/outputs/apk/release/
    pause
    exit /b 0
)

where gradle >nul 2>&1
if %ERRORLEVEL% equ 0 (
    echo [*] Building Android APK using installed Gradle...
    gradle assembleRelease
    echo.
    echo [*] Done! Check android/app/build/outputs/apk/release/
    pause
    exit /b 0
)

echo [!] Gradle or Android SDK not found in system PATH.
echo [*] You can open the 'android' folder directly in Android Studio
echo     and click: Build - Build Bundle(s) / APK(s) - Build APK(s)
echo.
pause
