CREATE TABLE dbo.FoodDiaryEntries (
    Id INT IDENTITY (1, 1) NOT NULL,
    DateRecorded SMALLDATETIME NOT NULL,
    DateConsumed SMALLDATETIME NOT NULL,
    FoodId INT NOT NULL,
    ServingSize FLOAT NOT NULL,
   CONSTRAINT [PK_FoodDiaryEntries] PRIMARY KEY CLUSTERED 
   (
	   [Id] ASC
   )
) ON [PRIMARY]
GO

ALTER TABLE dbo.FoodDiaryEntries ADD  DEFAULT (GETUTCDATE()) FOR DateRecorded
GO
