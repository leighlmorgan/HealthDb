USE [Health]
GO

DECLARE @RC int
DECLARE @DateTaken smalldatetime
DECLARE @mmolL decimal(7,3)
DECLARE @mgdL decimal(7,3)
/*
SET @DateTaken = '2025-11-13 20:30:00'
SET @mmolL = 19.1
EXECUTE @RC = [dbo].[NewBloodSugarReading] @DateTaken, @mmolL,@mgdL

SET @DateTaken = '2025-11-13 17:49:00'
SET @mmolL = 11.9
EXECUTE @RC = [dbo].[NewBloodSugarReading] @DateTaken, @mmolL,@mgdL

SET @DateTaken = '2025-11-13 12:19:00'
SET @mmolL = 16.8
EXECUTE @RC = [dbo].[NewBloodSugarReading] @DateTaken, @mmolL,@mgdL

SET @DateTaken = '2025-11-12 16:34:00'
SET @mmolL = 19.5
EXECUTE @RC = [dbo].[NewBloodSugarReading] @DateTaken, @mmolL,@mgdL
*/
SET @DateTaken = '2025-11-14 17:38:00'
SET @mmolL = 8.8
EXECUTE @RC = [dbo].[NewBloodSugarReading] @DateTaken, @mmolL,@mgdL

--truncate table BloodSugarReadings
select * from BloodSugarReadings order by DateTaken
