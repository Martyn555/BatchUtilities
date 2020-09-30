@echo off
if %1== help goto help
rem Martyn's Studio
echo Dim msg, sapi >SapiVoice.vbs
echo Set sapi = createObject("sapi.spvoice") >>SapiVoice.vbs
echo Set sapi.Voice = sapi.GetVoices.Item(1) >>SapiVoice.vbs
echo sapi.Speak %1 >>SapiVoice.vbs
rem Martyn's Studio
start SapiVoice.vbs
exit /b

:help
echo sapi "[text]"
echo.
rem Martyn's Studio
echo Enter text to read it.
echo.
pause