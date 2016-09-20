@echo off
REM Kill unnecessary process after booted
echo %date% 
echo %time% Kill unnecessary process after booted
echo %time% Killing Processes Now...
REM REM Define current running process name array
REM set curProcN_Length=7
REM set curProcN0=SGTool.exe
REM set curProcN1=SogouCloud.exe
REM set curProcN2=WPService.exe
REM set curProcN3=wisptis.exe
REM set curProcN4=D4Svr_ICBC.exe
REM set curProcN5=YoukuMediaCenter.exe
REM set curProcN6=TaobaoProtect.exe

REM REM For-loop find the match of current running process and kill it 
REM set tmpProc=%curProcN0%
REM for /f "tokens=5" %%procName in ('qprocess.exe ^| find "curProcN0" ') 
    REM do ( 
        REM if %procName%==%_task% (goto checkag) else 
        REM )
    REM )
REM :checkag
REM taskkill /f /t /im %procName%



taskkill /f /t /im SGTool.exe
taskkill /f /t /im SogouCloud.exe
taskkill /f /t /im WPService.exe
taskkill /f /t /im wisptis.exe
taskkill /f /t /im D4Svr_ICBC.exe
taskkill /f /t /im YoukuMediaCenter.exe
taskkill /f /t /im TaobaoProtect.exe


echo
echo %time% Finished.
echo. & pause 

