CREATE TABLE dbo.TimeOfDayRanges (
    StartTime TIME NOT NULL,
    EndTime TIME NOT NULL,
    MealRangeName NVARCHAR(100) NOT NULL,
    PeriodRangeName NVARCHAR(100) NOT NULL
)
GO
ALTER TABLE dbo.TimeOfDayRanges ADD CONSTRAINT [UQ_TimeOfDayRanges_MealRangeName] UNIQUE (MealRangeName)
GO
CREATE CLUSTERED INDEX IX_TimeOfDayRanges_StartTime_EndTime ON dbo.TimeOfDayRanges (StartTime, EndTime)