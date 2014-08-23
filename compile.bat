@ECHO OFF

:MENU
CLS
ECHO.
ECHO 1 - Compile All
ECHO 2 - Compile Server
ECHO 3 - Compile Client
ECHO 4 - EXIT
ECHO.

SET /P c=Type 1, 2, 3, or 4 then press ENTER:
IF %c%==1 GOTO ALL
IF %c%==2 GOTO SERVER
IF %c%==3 GOTO CLIENT
IF %c%==4 GOTO EOF

:ALL
	CLS
	ECHO. Full release
	ECHO.
	start /B /W bam.exe release
	ECHO.
	pause
	GOTO MENU
:SERVER
	CLS
	ECHO. Server release
	ECHO.
	start /B /W bam.exe server_release
	ECHO.
	pause
	GOTO MENU
:CLIENT
	CLS
	ECHO. Client release
	ECHO.
	start /B /W bam.exe client_release
	ECHO.
	pause
	GOTO MENU