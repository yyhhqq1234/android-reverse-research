@echo off
REM Build SUBR ESP mod: native lib -> smali already patched -> rebuild -> sign
set ROOT=D:\APK-Reverse\projects\SUBR
set NDK=%ROOT%\tools\ndk\android-ndk-r25c

if not exist "%NDK%\ndk-build.cmd" (
  echo [ERR] NDK not ready at %NDK%
  exit /b 1
)

echo [1/4] ndk-build libSUBRESP...
call "%NDK%\ndk-build.cmd" NDK_PROJECT_PATH="%ROOT%\esp_mod" NDK_APPLICATION_MK="%ROOT%\esp_mod\jni\Application.mk" -j8
if errorlevel 1 exit /b 1

echo [2/4] copy .so into apktool_out...
copy /Y "%ROOT%\esp_mod\libs\arm64-v8a\libSUBRESP.so" "%ROOT%\apktool_out\lib\arm64-v8a\libSUBRESP.so"
if errorlevel 1 exit /b 1

echo [3/4] apktool rebuild...
call C:\Users\Administrator\Tools\apktool\apktool.bat b "%ROOT%\apktool_out" -o "%ROOT%\SUBR_esp_unsigned.apk"
if errorlevel 1 exit /b 1

echo [4/4] sign with debug keystore (jarsigner, v1)...
REM local keystore pass comes from the environment; never hardcode it in the repo
if not defined SUBR_KEYSTORE_PASS (
  echo [ERR] set SUBR_KEYSTORE_PASS before signing
  exit /b 1
)
if not exist "%ROOT%\tools\debug.keystore" (
  keytool -genkeypair -keystore "%ROOT%\tools\debug.keystore" -storepass "%SUBR_KEYSTORE_PASS%" -keypass "%SUBR_KEYSTORE_PASS%" ^
    -alias androiddebugkey -keyalg RSA -keysize 2048 -validity 10950 ^
    -dname "CN=Android Debug,O=Android,C=US"
)
copy /Y "%ROOT%\SUBR_esp_unsigned.apk" "%ROOT%\SUBR_esp.apk"
jarsigner -keystore "%ROOT%\tools\debug.keystore" -storepass "%SUBR_KEYSTORE_PASS%" -keypass "%SUBR_KEYSTORE_PASS%" ^
  "%ROOT%\SUBR_esp.apk" androiddebugkey
if errorlevel 1 exit /b 1

echo.
echo [DONE] %ROOT%\SUBR_esp.apk
echo NOTE: zipalign/apksigner not installed; v1-signed only. For Play: run zipalign+apksigner manually.
