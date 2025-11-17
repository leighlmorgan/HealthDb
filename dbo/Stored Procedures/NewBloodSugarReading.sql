CREATE PROCEDURE [dbo].[NewBloodSugarReading] (
    @DateTaken SMALLDATETIME, 
    @mmolPerL AS DECIMAL(7, 3),
    @mgPerdL AS DECIMAL(7, 3) = NULL
)
AS
   DECLARE @HbA1cPercIndicative DECIMAL(7, 3)
   DECLARE @mmolPermol DECIMAL(7, 3)

   -- If mg/dL value is not supplied then canlculate it from mmol/L
   IF @mgPerdL IS NULL BEGIN
      SET @mgPerdL = @mmolPerL * 18
   END

  -- HbA1c and mmol/mol cannot be calculated from a single reading of mmol/L (which is what the monitor records), but an inidcative value
  -- based on the assumption that the mmol/L is also an average over a number of weeks can be estimated.

  -- Convert assumed average glucose (mg/dL) to estimated HbA1c %
   SET @HbA1cPercIndicative = (@mgPerdL + 46.7) / 28.7

   -- Calulate mmol/mol from indicative HbA1c%
   SET @mmolPermol = (@HbA1cPercIndicative - 2.152) / 0.09148

   INSERT dbo.BloodSugarReadings (
      [DateTaken], 
      [mmolPerL],
      [mgPerdL],
      [HbA1cPercIndicative],
      [mmolPermol]
   )
   VALUES (
      @DateTaken, 
      @mmolPerL,
      @mgPerdL,
      @HbA1cPercIndicative,
      @mmolPermol
   )

RETURN 0
