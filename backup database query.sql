/*
Query to back up databases.
I used it to test sqlcmd before applying it to batch.
You don't need extra permissions in C:\Program Files\Microsoft SQL Server
*/
BACKUP DATABASE DBNAME1 TO DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.APHRODITE\MSSQL\Backup\DBNAME1.BAK'
WITH NOFORMAT, INIT, NAME = N'DBNAME1 Back Up' , SKIP, NOREWIND, NOUNLOAD, STATS = 10

BACKUP DATABASE DBNAME2 TO DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.APHRODITE\MSSQL\Backup\DBNAME2.BAK'
WITH NOFORMAT, INIT, NAME = N'DBNAME2 BackUp' , SKIP, NOREWIND, NOUNLOAD, STATS = 10

GO
