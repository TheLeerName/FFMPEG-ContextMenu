@chcp 65001
@cls

@set regname=%1
@set regdisplayname=Convert to .%regname%
@set regcommand="%systemroot%\ffmpegcontext\%regname%.bat" "%%1"

@set regcommand=%regcommand:"=\"%
@Reg Delete "HKEY_CLASSES_ROOT\*\shell\FFMPEG\shell\%regname%" /f
@Reg Add "HKEY_CLASSES_ROOT\*\shell\FFMPEG\shell\%regname%" /f
@Reg Add "HKEY_CLASSES_ROOT\*\shell\FFMPEG\shell\%regname%" /v "MUIVerb" /t REG_SZ /d "%regdisplayname%" /f
@Reg Add "HKEY_CLASSES_ROOT\*\shell\FFMPEG\shell\%regname%\command" /ve /t REG_EXPAND_SZ /d "%regcommand%" /f