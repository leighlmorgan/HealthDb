INSERT dbo.ReadingRanges (LowValue, HighValue, RangeName, IsInTarget, IsAboveTarget, IsTooHigh) VALUES
(0, 8.500, 'In Target', 1, 0, 0, '0c6256'),
(8.501, 13.999, 'Above Target', 0, 1, 0, 'd88500'),
(14.000, 99.999, 'Too High',0, 0, 1, 'c13a12')

