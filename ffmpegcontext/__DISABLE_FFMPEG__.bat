@chcp 65001
@cls

@Reg Delete "HKEY_CLASSES_ROOT\*\shell\FFMPEG\shell" /f
@Reg Delete "HKEY_CLASSES_ROOT\*\shell\FFMPEG" /f

@cls
@echo.
@echo    FFMPEG Converting in context menu successfully disabled!
@echo.
@pause