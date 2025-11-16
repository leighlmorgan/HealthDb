/*
Populate known Foods table
*/

TRUNCATE TABLE dbo.Nutrients

INSERT dbo.Nutrients (Name, Description, Unit) VALUES
('Calcium', 'Calcium content', 'mg'),
('Carbohydrate', 'Total carbohydrate content', 'g'),
('CarbohydrateSugar', 'Sugar content of carbohydrate', 'g'),
('Energy', 'Total energy content', 'kj'),
('Fat', 'Total fat content', 'g'),
('FatSaturates', 'Saturated fat content', 'g'),
('Fibre', 'Dietary fibre content', 'g'),
('Folate', 'Folate (Vitamin B9) content', 'µg'),
('Iodine', 'Iodine content', 'µg'),
('Iron', 'Iron content', 'mg'),
('Magnesium', 'Magnesium content', 'mg'),
('Niacin', 'Niacin (Vitamin B3) content', 'mg'),
('Phosphorus', 'Phosphorus content', 'mg'),
('Potassium', 'Potassium content', 'mg'),
('Protein', 'Protein content', 'g'),
('Riboflavin', 'Riboflavin (Vitamin B2) content', 'mg'),
('Salt', 'Salt content', 'g'),
('Thiamin', 'Thiamin (Vitamin B1) content', 'mg'),
('VitaminB12', 'Vitamin B12 content', 'µg'),
('VitaminB6', 'Vitamin B6 content', 'mg'),
('VitaminC', 'Vitamin C content', 'mg'),
('VitaminD', 'Vitamin D content', 'µg'),
('Zinc', 'Zinc content', 'mg')
