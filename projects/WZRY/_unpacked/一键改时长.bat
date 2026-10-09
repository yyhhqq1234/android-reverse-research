@echo off
chcp 65001 >nul
echo ================================================
echo  WZRY 元歌 -- native 时长表一键改写 (验证用)
echo  用法: 进对局后(选好元歌)双击本脚本
echo ================================================
cd /d D:\APK-Reverse\projects\WZRY\_unpacked
python mem-write.py 225001=1 225002=1 225003=1
echo.
echo 说明: 225001/225003=眩晕(原2000ms) 225002=傀儡禁召(原25000ms) 已改为 1ms
echo       还原: python mem-write.py --restore
echo.
pause
