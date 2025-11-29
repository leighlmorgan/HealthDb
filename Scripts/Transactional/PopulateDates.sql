USE [Health]
GO
DECLARE @CurrentDate SMALLDATETIME = '2025-11-01'
WHILE @CurrentDate < '2030-11-30'
BEGIN
   INSERT INTO dbo.Dates (DateValue, DateYear, DateMonth, DateWeek, DateWeekNumber, DateWeekNumberSortBy)
   VALUES (
      @CurrentDate, 
      YEAR(@CurrentDate), 
      MONTH(@CurrentDate), 
      DATEPART(ISO_WEEK, @CurrentDate), 
      FORMAT(@CurrentDate, 'yyyy') + '-' + RIGHT('00' + CAST(DATEPART(ISO_WEEK, @CurrentDate) AS VARCHAR(2)), 2),
      YEAR(@CurrentDate) * 100 + DATEPART(ISO_WEEK, @CurrentDate)
   )
   SET @CurrentDate = DATEADD(DAY, 1, @CurrentDate)
END
GO