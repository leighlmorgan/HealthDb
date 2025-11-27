CREATE VIEW dbo.BloodSugarReadingDetails AS

SELECT
	reading.*,
	CAST (CONVERT(VARCHAR(10), DateTaken, 101) AS SMALLDATETIME) AS TakenOnDate,
	CAST(DateTaken AS TIME) AS TakenAtTime,
	CONVERT(CHAR(4), DATEPART(YEAR, DateTaken)) + '-' + CONVERT(CHAR(4), DATEPART(WEEK, DateTaken)) AS WeekNumber,
	timeofday.StartTime AS TimeRangeStartTime,
	timeofday.EndTime AS TimeRangeEndTime,
	timeofday.MealRangeName AS TimeRangeMeal,
	timeofday.PeriodRangeName AS TimeRangePeriod,
	timeofday.MealSortOrder AS TimeRangeMealSortOrder,
	timeofday.PeriodSortOrder AS TimeRangePeriodSortOrder,
	CONVERT(VARCHAR(1), timeofday.MealSortOrder) + ': ' +  timeofday.MealRangeName AS TimeRangeMealWithOrder,
	CONVERT(VARCHAR(1), timeofday.PeriodSortOrder) + ': ' +  timeofday.PeriodRangeName AS TimeRangePeriodWithOrder
FROM
	dbo.BloodSugarReadings reading
	INNER JOIN dbo.TimeOfDayRanges timeofday ON CONVERT(TIME, reading.DateTaken) BETWEEN timeofday.StartTime AND timeofday.EndTime
