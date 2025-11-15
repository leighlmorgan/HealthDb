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
('Thiamin', 'Thiamin (Vitamin B1) content', 'mg')
