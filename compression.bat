@echo off
chcp 65001

for /f "delims= usebackq" %%i in (`dir base /b`) do (
    echo %%iの圧縮を開始します.
    tar -Jcf tar/%%i.tar.xz base/%%i
    echo %%iの圧縮が終了しました.
)

rundll32 user32.dll,MessageBeep
timeout 1
rundll32 user32.dll,MessageBeep
echo 圧縮処理は終了しました.
pause