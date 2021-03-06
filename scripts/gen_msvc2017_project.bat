@echo off
set BUILD_DIR=%~dp0%\..\build
mkdir %BUILD_DIR%\msvc2017 || goto :error
cd %BUILD_DIR%\msvc2017 || goto :error
cmake -G "Visual Studio 15 2017" ..\.. || goto :error
start ecs.hpp.sln || goto :error

goto :EOF

:error
echo Failed with error #%errorlevel%.
exit /b %errorlevel%
