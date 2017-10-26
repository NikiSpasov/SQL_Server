USE SoftUni

BACKUP DATABASE SoftUni 
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\Backup'
WITH FORMAT,
MEDIANAME = 'BACKUPS',
NAME = 'softuni-backup.bak'
