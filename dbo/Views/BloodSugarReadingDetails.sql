CREATE VIEW dbo.BloodSugarReadingDetails AS

SELECT
	*,
	CAST(DateTaken AS TIME) AS TimeOfDay
FROM
	dbo.BloodSugarReadings reading
	INNER JOIN dbo.TimeOfDayRanges timeofday ON CONVERT(TIME, reading.DateTaken) BETWEEN timeofday.StartTime AND timeofday.EndTime
