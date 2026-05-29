@echo off
chcp 65001 >nul
echo ============================================
echo   Claude Code ECC 配置安装脚本
echo   Agents + Commands + Skills + Rules
echo ============================================
echo.

set "SOURCE=%~dp0"
set "TARGET=%USERPROFILE%\.claude"

echo 源目录: %SOURCE%
echo 目标目录: %TARGET%
echo.

if not exist "%TARGET%" mkdir "%TARGET%"

echo [1/4] 安装 Agents...
if exist "%SOURCE%agents" (
    xcopy "%SOURCE%agents" "%TARGET%\agents\" /E /I /Y /Q
    echo   完成
) else (
    echo   跳过: agents 目录不存在
)

echo [2/4] 安装 Commands...
if exist "%SOURCE%commands" (
    xcopy "%SOURCE%commands" "%TARGET%\commands\" /E /I /Y /Q
    echo   完成
) else (
    echo   跳过: commands 目录不存在
)

echo [3/4] 安装 Skills...
if exist "%SOURCE%skills" (
    xcopy "%SOURCE%skills" "%TARGET%\skills\" /E /I /Y /Q
    echo   完成
) else (
    echo   跳过: skills 目录不存在
)

echo [4/4] 安装 Rules...
if exist "%SOURCE%rules" (
    xcopy "%SOURCE%rules" "%TARGET%\rules\" /E /I /Y /Q
    echo   完成
) else (
    echo   跳过: rules 目录不存在
)

echo.
echo ============================================
echo   安装完成！
echo ============================================
echo.
echo 请手动配置 settings.json 后即可使用。
echo.
pause
