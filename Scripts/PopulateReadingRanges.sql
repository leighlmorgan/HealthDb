INSERT dbo.ReadingRanges (LowValue, HighValue, RangeName, IsInTarget, IsAboveTarget, IsTooHigh) VALUES
(0, 8.500, 'In Target', 1, 0, 0),
(8.501, 13.999, 'Above Target', 0, 1, 0),
(14.000, 99.999, 'Too High',0, 0, 1)

