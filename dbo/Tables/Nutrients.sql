CREATE TABLE dbo.Nutrients
(
   Id INT NOT NULL IDENTITY(1,1),
   Name NVARCHAR(100) NOT NULL,
   Description NVARCHAR(MAX) NOT NULL,
   Unit NVARCHAR (20) NOT NULL,
   CONSTRAINT [PK_Nutrients] PRIMARY KEY CLUSTERED 
   (
	   [Id] ASC
   )
)
GO
ALTER TABLE dbo.Nutrients ADD CONSTRAINT [UQ_Nutrients_Name] UNIQUE ([Name])

