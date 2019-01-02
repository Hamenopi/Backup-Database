DECLARE @BackupPath NVARChar(255)
DECLARE @DBName NVARChar(255)

SET @BackupPath = N'\\Server\User\FileName.bak'
SET @DBName = N'DatabaseName'

BACKUP DATABASE @DBName
TO DISK = @BackupPath
WITH
    NOFORMAT,
    NOINIT,
    NAME = @DBName,
    SKIP,
    NOREWIND,
    NOUNLOAD,
    COMPRESSION,
    STATS = 10
GO
