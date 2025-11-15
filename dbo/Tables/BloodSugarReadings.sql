CREATE TABLE [dbo].[BloodSugarReadings] (
    [Id] INT IDENTITY (1, 1) NOT NULL,
    [DateRecorded] SMALLDATETIME NOT NULL,
    [DateTaken] SMALLDATETIME NOT NULL, 
    [mmolPerL] DECIMAL(7, 3) NOT NULL,
    [mgPerdL] DECIMAL(7, 3) NOT NULL, 
    [HbA1cPercIndicative] DECIMAL(7, 3) NOT NULL,
    [mmolPermol] DECIMAL(7, 3) NOT NULL,
   CONSTRAINT [PK_BloodSugarReadings] PRIMARY KEY CLUSTERED 
   (
	   [Id] ASC
   )
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[BloodSugarReadings] ADD DEFAULT (GETUTCDATE()) FOR [DateRecorded]
GO
ALTER TABLE [dbo].[BloodSugarReadings] ADD CONSTRAINT UQ_BloodSugarReadings_DateTaken UNIQUE (DateTaken)
GO

--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Blood Sugar Readings' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BloodSugarReadings', @level2type=N'COLUMN',@level2name=N'Id'
;

/*
   HbA1c and mmol/mol cannot be calculated from a single reading of mmol/L (which is what the monitor records), but an inidicative value
   based on the assumption that the mmol/L is also an average over a number of weeks can be estimated.
*/