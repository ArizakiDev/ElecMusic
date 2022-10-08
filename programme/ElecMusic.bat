@echo off
cmd /C start http://www.google.com

echo inscrivez le numero de votre musique pour pouvoir la telecharger.
set /p choix=
if "%choix%"=="" goto fin
if %choix%==1 goto GazoDie
if %choix%==2 goto KerchackPeur
if %choix%==3 goto KerchackNextup
goto fin

:GazoDie
@echo off
call:download "http://elecmusic.tk/pages/music/gazo-die.mp3" "%~dp0Gazo-die.mp3"
exit /b

:download
(echo src = "%~1"
echo Set v1 = CreateObject ("MSXML2.XMLHTTP"^)
echo Set v2  = CreateObject ("ADODB.Stream"^)
echo v1.open "GET", src, false
echo v1.send (^)
echo v2.open
echo v2.Type = 1
echo v2.Write v1.ResponseBody
echo v2.SaveToFile "%~2") >"%~dpn0.vbs"
cscript "%~dpn0.vbs"
del "%~dpn0.vbs" >nul
goto:eof

:KerchackPeur
@echo off
call:download "kerchak-peur-feat-at-ziak-cc-clip-officiel.mp3" "%~dp0kerchak-peur-feat-at-ziak-cc-clip-officiel.mp3"
exit /b

:download
(echo src = "%~1"
echo Set v1 = CreateObject ("MSXML2.XMLHTTP"^)
echo Set v2  = CreateObject ("ADODB.Stream"^)
echo v1.open "GET", src, false
echo v1.send (^)
echo v2.open
echo v2.Type = 1
echo v2.Write v1.ResponseBody
echo v2.SaveToFile "%~2") >"%~dpn0.vbs"
cscript "%~dpn0.vbs"
del "%~dpn0.vbs" >nul
goto:eof

:KerchackNextup
@echo off
call:download "http://elecmusic.tk/pages/music/kerchak-next-up-france-s1e3-at-mixtapemadness.mp3" "%~dp0kerchak-next-up-france-s1e3-at-mixtapemadness.mp3"
exit /b

:download
(echo src = "%~1"
echo Set v1 = CreateObject ("MSXML2.XMLHTTP"^)
echo Set v2  = CreateObject ("ADODB.Stream"^)
echo v1.open "GET", src, false
echo v1.send (^)
echo v2.open
echo v2.Type = 1
echo v2.Write v1.ResponseBody
echo v2.SaveToFile "%~2") >"%~dpn0.vbs"
cscript "%~dpn0.vbs"
del "%~dpn0.vbs" >nul
goto:eof

:fin
pause > nul