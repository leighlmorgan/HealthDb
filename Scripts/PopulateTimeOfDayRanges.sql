INSERT dbo.TimeOfDayRanges (StartTime, EndTime, MealRangeName, PeriodRangeName, MealSortOrder, PeriodSortOrder) VALUES
('00:00:00','08:59:59','Before Breakfast','Morning',1,1),
('09:00:00','11:59:59','Before Lunch','Morning',2,1),
('11:59:59','13:30:59','Before Lunch','Afternoon',2,2),
('13:31:00','17:29:59','Before Dinner','Afternoon',3,2),
('17:30:00','17:59:59','Before Dinner','Evening',3,3),
('18:00:00','23:59:59','Before Bed','Evening',4,3)
