CREATE PROCEDURE dbo.NewFoodDiaryEntry (
    @FoodId INT,
    @ServingSize FLOAT,
    @DateConsumed SMALLDATETIME = NULL
)
AS

   INSERT dbo.FoodDiaryEntries (
      DateConsumed,
      FoodId,
      ServingSize
   )
   VALUES (
      COALESCE(@DateConsumed, GETUTCDATE()),
      @FoodId,
      @ServingSize
   )