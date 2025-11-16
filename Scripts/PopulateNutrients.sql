/*
Populate known Foods table
*/

TRUNCATE TABLE dbo.Nutrients

INSERT dbo.Nutrients (Name, Description, Unit) VALUES
('Energy', 'Total energy content', 'kj'),
('Fat', 'Total fat content', 'g'),
('FatSaturates', 'Saturated fat content', 'g'),
('Carbohydrate', 'Total carbohydrate content', 'g'),
('CarbohydrateSugar', 'Sugar content of carbohydrate', 'g'),
('Fibre', 'Dietary fibre content', 'g'),
('Protein', 'Protein content', 'g'),
('Salt', 'Salt content', 'g'),
('Calcium', 'Calcium content', 'mg'),
('Iron', 'Iron content', 'mg'),
('Thiamin', 'Thiamin (Vitamin B1) content', 'mg'),
('Riboflavin', 'Riboflavin (Vitamin B2) content', 'mg'),
('Niacin', 'Niacin (Vitamin B3) content', 'mg'),
('VitaminB6', 'Vitamin B6 content', 'mg'),
('Folate', 'Folate (Vitamin B9) content', 'µg'),
('VitaminB12', 'Vitamin B12 content', 'µg'),
('VitaminC', 'Vitamin C content', 'mg'),
('VitaminD', 'Vitamin D content', 'µg'),
('Magnesium', 'Magnesium content', 'mg'),
('Zinc', 'Zinc content', 'mg')
