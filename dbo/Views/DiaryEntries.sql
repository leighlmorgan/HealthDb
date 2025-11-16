CREATE VIEW dbo.DiaryEntries AS

SELECT 
   fde.DateConsumed,
   fnd.FoodName,
   fnd.Name,
   fde.ServingSize,
   CONVERT(VARCHAR,fde.ServingSize) + fnd.Unit AS ServingSizeLiteral,
   fnd.NumberOfUnits * (fde.ServingSize/fnd.ServingSizeNumberOfUnits) AS UnitsConsumed,
   CONVERT(VARCHAR,fnd.NumberOfUnits * (fde.ServingSize/fnd.ServingSizeNumberOfUnits)) + fnd.Unit AS UnitsConsumedLiteral,
   fnd.Description,
   fnd.Unit,
   fnd.NumberOfUnits,
   fnd.ServingSizeUnits,
   fnd.ServingSizeNumberOfUnits
FROM 
   dbo.FoodDiaryEntries fde
   INNER JOIN dbo.FoodNutrientDetails fnd ON fde.Id = fnd.Id
