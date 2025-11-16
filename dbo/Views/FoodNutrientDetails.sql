CREATE VIEW dbo.FoodNutrientDetails AS

SELECT 
   f.Id,
   f.Name AS FoodName,
   n.Name,
   n.Description,
   n.Unit,
   fn.NumberOfUnits,
   fn.ServingSizeUnits,
   fn.ServingSizeNumberOfUnits
FROM 
   dbo.Foods f
   INNER JOIN dbo.FoodNutrients fn ON f.Id = fn.FoodId
   INNER JOIN dbo.Nutrients n ON n.Id = fn.NutrientId
