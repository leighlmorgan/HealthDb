USE [Health]
GO

DECLARE @RC int
DECLARE @DateConsumed smalldatetime
DECLARE @FoodId int

SET @DateConsumed = '2025-11-15 07:45:00'
SELECT @FoodId = Id FROM dbo.Foods WHERE Name = 'Porridge'
EXECUTE @RC = dbo.NewFoodDiaryEntry @DateConsumed, @FoodId

SELECT * FROM dbo.FoodDiaryEntries WHERE ID = SCOPE_IDENTITY()

--truncate table dbo.FoodDiaryEntries 