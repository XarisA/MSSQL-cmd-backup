echo off
cls

::Change Destination here
::SQL needs to have permissions here.
SET DESTINATION= Z:\MSSQL\Backup
cd %DESTINATION%

:: Change  Database here 
set  DATABASENAME= TESTDB

echo BACKING UP DATABASE: %DATABASENAME% --
echo LOCATION: %DESTINATION% 
:: filename format Name-Date (eg MyDatabase-2009.5.19.bak)
set DATESTAMP=%DATE:~-4%.%DATE:~7,2%.%DATE:~4,2%
:: Remove -%DATESTAMP% to overwrite existing file by keeping the same name
set BACKUPFILENAME=%CD%\%DATABASENAME%-%DATESTAMP%.bak
:: Change server and instance here
set SERVERNAME=(local)\MSSQLEXPR
echo.

:: Change username and password here . Better avoid using sa for this.
sqlcmd -S %SERVERNAME% -d master -Q "BACKUP DATABASE [%DATABASENAME%] TO DISK = N'%BACKUPFILENAME%' WITH NOFORMAT, INIT, NAME = N'%DATABASENAME% backup', SKIP, NOREWIND, NOUNLOAD, STATS = 10"  -P mysapass -U sa
echo.

::pause