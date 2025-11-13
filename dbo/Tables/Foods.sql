CREATE TABLE [dbo].[Foods] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (100) NOT NULL,
    [Description] NVARCHAR (MAX) NOT NULL, 
    [Fat] DECIMAL(7, 3) NOT NULL,
    [FatSaturates] DECIMAL(7, 3) NOT NULL,
    [Carbohydrate] DECIMAL(7, 3) NOT NULL,
    [CarbohydrateSugar] DECIMAL(7, 3) NOT NULL,
    [Fibre] DECIMAL(7, 3) NOT NULL,
    [Protein] DECIMAL(7, 3) NOT NULL,
    [Salt] DECIMAL(7, 3) NOT NULL,
    [Calcium] DECIMAL(7, 3) NOT NULL,
);

