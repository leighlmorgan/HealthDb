CREATE TABLE dbo.FoodNutrients
(
   FoodId INT NOT NULL,
   NutrientId INT NOT NULL,
   NumberOfUnits DECIMAL(7, 3) NOT NULL,
   ServingSizeUnits NVARCHAR(20) NOT NULL,
   ServingSizeNumberOfUnits DECIMAL(7, 3) NOT NULL,
   CONSTRAINT [PK_FoodNutrients] PRIMARY KEY CLUSTERED 
   (
	   FoodId,
      NutrientId ASC
   )
)

