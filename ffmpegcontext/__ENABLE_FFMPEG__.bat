:: bro starts this script with admin rights in working dir with that 2 lines
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
cd /d "%~dp0"

@chcp 65001
@cls

@Reg Delete "HKEY_CLASSES_ROOT\*\shell\FFMPEG\shell" /f
@Reg Delete "HKEY_CLASSES_ROOT\*\shell\FFMPEG" /f

@Reg Add "HKEY_CLASSES_ROOT\*\shell\FFMPEG" /f
@Reg Add "HKEY_CLASSES_ROOT\*\shell\FFMPEG" /v "MUIVerb" /t REG_SZ /d "FFMPEG Converting" /f
@Reg Add "HKEY_CLASSES_ROOT\*\shell\FFMPEG" /v "SubCommands" /t REG_SZ /d "" /f
@Reg Add "HKEY_CLASSES_ROOT\*\shell\FFMPEG\shell" /f

@call addregistry.bat m4a
@call addregistry.bat mp3
@call addregistry.bat mp4
@call addregistry.bat ogg

@cls
@echo.
@echo    FFMPEG Converting in context menu successfully enabled!
@echo.
@pause
