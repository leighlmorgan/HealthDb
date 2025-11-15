CREATE TABLE dbo.Units
(
   Id INT NOT NULL IDENTITY(1,1),
   ShortName NVARCHAR(5) NOT NULL,
   Name NVARCHAR(100) NOT NULL,
   Description NVARCHAR(MAX) NOT NULL,
   CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED 
   (
	   [Id] ASC
   )
)
GO
ALTER TABLE dbo.Units ADD CONSTRAINT [UQ_Units_ShortName] UNIQUE (ShortName)

/*
   TODO: Replace Units in Foods and Nutrients tables with foreign key to Units table and add columns here that include values in other units, 
   e.g. per serving, per piece, per cup, per tablespoon, per teaspoon, etc.
*/