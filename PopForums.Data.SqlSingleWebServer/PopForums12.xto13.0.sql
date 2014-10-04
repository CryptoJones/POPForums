﻿IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'pf_Profile' AND COLUMN_NAME = 'MSNMessenger')
BEGIN
   ALTER TABLE pf_Profile DROP COLUMN MSNMessenger
END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'pf_Profile' AND COLUMN_NAME = 'Facebook')
BEGIN
   ALTER TABLE pf_Profile ADD Facebook NVARCHAR(256) NULL
END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'pf_Profile' AND COLUMN_NAME = 'Twitter')
BEGIN
   ALTER TABLE pf_Profile ADD Twitter NVARCHAR(256) NULL
END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'pf_Forum' AND COLUMN_NAME = 'IsQAForum')
BEGIN
   ALTER TABLE pf_Forum ADD IsQAForum bit
   CONSTRAINT DF_pf_Forum_IsQAForum DEFAULT 0 NOT NULL
END
GO

