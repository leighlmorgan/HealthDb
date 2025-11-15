CREATE PROCEDURE dbo.NewFoodDiaryEntry (
    @DateConsumed SMALLDATETIME, 
    @FoodId INT
)
AS

   INSERT dbo.FoodDiaryEntries (
      DateConsumed,
      FoodId
   )
   VALUES (
      @DateConsumed,
      @FoodId
   )

