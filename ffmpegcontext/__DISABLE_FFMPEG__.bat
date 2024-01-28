:: bro starts this script with admin rights in working dir with that 2 lines
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
cd /d "%~dp0"

@chcp 65001
@cls

@Reg Delete "HKEY_CLASSES_ROOT\*\shell\FFMPEG\shell" /f
@Reg Delete "HKEY_CLASSES_ROOT\*\shell\FFMPEG" /f

@cls
@echo.
@echo    FFMPEG Converting in context menu successfully disabled!
@echo.
@pause
