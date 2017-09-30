@echo off

REM ********************************************************************

REM *** This Script will List all the txt Files under C:\Raja Folder ***

REM ********************************************************************

ECHO [INFO] Removing files generated during last execution
if exist complete-list.txt del /s /q complete-list.txt
if exist jar-list.txt del /s /q jar-list.txt

dir /b /s > Complete-list.txt

ECHo [INFO] Fetching list of JARs available in the directory structure
find ".txt" Complete-list.txt >> jar-list.txt

replace.vbs jar-list.txt "---------- COMPLETE-LIST.TXT" ""

for /F %%A in (jar-list.txt) do (
	
	REM Here You can put you signing logic for the implementation using %%A as jar location
	
	ECHO %%A
)