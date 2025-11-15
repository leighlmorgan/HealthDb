CREATE TABLE [dbo].[Foods] (
    [Id] INT IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (100) NOT NULL,
    [Description] NVARCHAR (MAX) NOT NULL, 

   CONSTRAINT [PK_Foods] PRIMARY KEY CLUSTERED 
   (
	   [Id] ASC
   )
);
GO
ALTER TABLE [dbo].[Foods] ADD CONSTRAINT [UQ_Foods_Name] UNIQUE ([Name]);
