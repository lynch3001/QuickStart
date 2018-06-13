@echo off

START /b iexplore.exe  https://noc.enernoc.net/powertrak/
ping localhost -n 2 > nul
REM START /b "C:\Program Files\Internet Explorer\" iexplore.exe 
start iexplore.exe -new https://meters2.activationenergy.ie/productionoperatorwebsite/
SET /p DUMMY=Hit ENTER to continue...
ECHO.
ECHO ...............................................
ECHO ARE YOU ON NZIL, FCAS OR NEITHER
ECHO ...............................................
ECHO.
ECHO 1 - Open ELMO RDP connection
ECHO 2 - Open FCAS Link(and the triforce)
ECHO 3 - Exit
ECHO.

SET /P M=Type 1, 2, or 3 then press ENTER:
IF %M%==1 GOTO NZIL
IF %M%==2 GOTO FCAS
IF %M%==3 GOTO QUIT

:NZIL
START %BROWSER% -new-tab "https://fcas.enernoc.com/fcas/RTO_Interface.jnlp"
goto:eof

:FCAS
START mstsc.exe "C:\Users\Public\Desktop\Elmo Connection.RDP"
goto:eof

:QUIT
SET /p DUMMY=Hit ENTER to continue...

start "C:\Program Files (x86)\Microsoft Office\Office16" OUTLOOK.exe 
START "C:\Program Files (x86)\Securepoint SSL VPN\" SSLVpnClient.exe
SET BROWSER=chrome.exe
SET WAIT_TIME=2
START %BROWSER% -new-window "https://home-c7.incontact.com/inContact/Default.aspx"
START %BROWSER% -new-tab "https://docs.google.com/spreadsheets/d/11342fwtSl-nQPhKMgqxH9oJjO4e_qh_LeyHPKiufKHM/edit?usp=sharing"
SET /p DUMMY=Hit ENTER to continue...
START %BROWSER% -new-tab "https://enernoc.my.salesforce.com/"
START %BROWSER% -new-tab "https://noc.entelios.zz/cockpit"
SET /p DUMMY=Hit ENTER to continue...
START %BROWSER% -new-tab "https://trello.com/"
START %BROWSER% -new-tab "https://www.classmarker.com/u/"
SET /p DUMMY=Hit ENTER to continue...