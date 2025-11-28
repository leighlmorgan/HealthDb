CREATE TABLE dbo.TimeOfDayRanges (
    [StartTime]       TIME (7)       NOT NULL,
    [EndTime]         TIME (7)       NOT NULL,
    [MealRangeName]   NVARCHAR (100) NOT NULL,
    [PeriodRangeName] NVARCHAR (100) NOT NULL,
    [PeriodSortOrder] INT            NOT NULL,
    [MealSortOrder]   INT            NOT NULL
)
GO
CREATE CLUSTERED INDEX IX_TimeOfDayRanges_StartTime_EndTime ON dbo.TimeOfDayRanges (StartTime, EndTime)