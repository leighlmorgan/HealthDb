/*
Populate known Foods table
*/
DECLARE @FoodId INT
DECLARE @kj NVARCHAR(20)='kj'
DECLARE @g NVARCHAR(20)='g'
DECLARE @mg NVARCHAR(20)='mg'
DECLARE @ml NVARCHAR(20)='ml'
DECLARE @µg NVARCHAR(20)='µg'

/*
-- Porridge
INSERT dbo.Foods (Name, Description) VALUES ('Porridge', 'Flahavan''s Organic Porridge Oats')
SET @FoodId = SCOPE_IDENTITY()
INSERT dbo.FoodNutrients (FoodId, NutrientId, NumberOfUnits, ServingSizeUnits, ServingSizeNumberOfUnits) VALUES
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Energy' AND Unit=@kj), 1566, @g, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Fat' AND Unit=@g), 5.8, @g, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'FatSaturates' AND Unit=@g), 1.0, @g, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Carbohydrate' AND Unit=@g), 64.0, @g, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'CarbohydrateSugar' AND Unit=@g), 0.9, @g, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Fibre' AND Unit=@g), 8.3, @g, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Protein' AND Unit=@g), 1.0, @g, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Salt' AND Unit=@g), 0.01, @g, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Calcium' AND Unit=@mg), 0.0, @g, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Iron' AND Unit=@mg), 3.6, @g, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Thiamin' AND Unit=@mg), 0.36, @g, 100.0)

-- Whole Milk
INSERT dbo.Foods (Name, Description) VALUES ('Waitrose Whole Milk', 'Essential British Free Range Whole Milk')
SET @FoodId = SCOPE_IDENTITY()
INSERT dbo.FoodNutrients (FoodId, NutrientId, NumberOfUnits, ServingSizeUnits, ServingSizeNumberOfUnits) VALUES
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Energy' AND Unit=@kj), 276, @ml, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Fat' AND Unit=@g), 3.7, @ml, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'FatSaturates' AND Unit=@g), 2.4, @ml, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Carbohydrate' AND Unit=@g), 4.7, @ml, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'CarbohydrateSugar' AND Unit=@g), 4.7, @ml, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Fibre' AND Unit=@g), 0.0, @ml, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Protein' AND Unit=@g), 3.5, @ml, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Salt' AND Unit=@g), 0.01, @ml, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Calcium' AND Unit=@mg), 124.0, @ml, 100.0)

-- Alpro Soya Chilled Dairy Free Milk
INSERT dbo.Foods (Name, Description) VALUES ('Alpro Soya Milk', 'Alpro Soya Chilled Dairy Free Milk')
SET @FoodId = SCOPE_IDENTITY()
INSERT dbo.FoodNutrients (FoodId, NutrientId, NumberOfUnits, ServingSizeUnits, ServingSizeNumberOfUnits) VALUES
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Energy' AND Unit=@kj), 161, @ml, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Fat' AND Unit=@g), 1.8, @ml, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'FatSaturates' AND Unit=@g), 0.3, @ml, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Carbohydrate' AND Unit=@g), 2.5, @ml, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Fibre' AND Unit=@g), 0.5, @ml, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Protein' AND Unit=@g), 3.0, @ml, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Salt' AND Unit=@g), 0.08, @ml, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Calcium' AND Unit=@mg), 124.0, @ml, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'VitaminD' AND Unit=@µg), 0.75, @ml, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'Riboflavin' AND Unit=@mg), 0.21, @ml, 100.0),
(@FoodId, (SELECT Id FROM dbo.Nutrients WHERE Name = 'VitaminB12' AND Unit=@µg), 0.38, @ml, 100.0)

*/