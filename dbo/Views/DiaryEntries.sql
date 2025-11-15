CREATE VIEW dbo.DiaryEntries AS

SELECT 
   fde.DateConsumed,
   f.Name AS FoodName,
   n.Name,
   n.Description,
   n.Unit,
   fn.NumberOfUnits,
   fn.ServingSizeUnits,
   fn.ServingSizeNumberOfUnits
FROM 
   dbo.FoodDiaryEntries fde
   INNER JOIN dbo.Foods f ON fde.FoodId = f.Id
   INNER JOIN dbo.FoodNutrients fn ON f.Id = fn.FoodId
   INNER JOIN dbo.Nutrients n ON n.Id = fn.NutrientId
