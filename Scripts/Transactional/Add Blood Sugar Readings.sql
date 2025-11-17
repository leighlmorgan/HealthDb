USE [Health]
GO

/*
   This script added initial blood sugar readings to the database directly.  It is no longer needed instead:

      1: Export blood sugar readings as mmol/L from the Finetest Lite glucose monitor into the Glook app
      2: Export blood sugar readings from Glook app as CSV file
      3: Open CSV file and paste into Excel D:\OneDrive\Mine\Medical\Glooko Data\LoadIntoSQL.xlsx
      4: Copy the generated SQL from Excel and paste into a new SQL query window
*/

--TRUNCATE TABLE dbo.BloodSugarReadings
GO
BEGIN TRAN

-- BEGIN Paste of generated SQL from Excel here
EXECUTE dbo.NewBloodSugarReading'2025/11/17 11:53', 12.3
EXECUTE dbo.NewBloodSugarReading'2025/11/16 17:45', 11.2
EXECUTE dbo.NewBloodSugarReading'2025/11/16 08:24', 10.2
EXECUTE dbo.NewBloodSugarReading'2025/11/15 21:36', 9.7
EXECUTE dbo.NewBloodSugarReading'2025/11/15 12:21', 10.7
EXECUTE dbo.NewBloodSugarReading'2025/11/14 17:38', 8.8
EXECUTE dbo.NewBloodSugarReading'2025/11/14 07:19', 12.1
EXECUTE dbo.NewBloodSugarReading'2025/11/13 20:30', 19.1
EXECUTE dbo.NewBloodSugarReading'2025/11/13 17:49', 11.9
EXECUTE dbo.NewBloodSugarReading'2025/11/13 12:19', 16.8
EXECUTE dbo.NewBloodSugarReading'2025/11/12 16:34', 19.5
-- END Paste

SELECT * FROM dbo.BloodSugarReadings order by DateTaken desc

/*
	ROLLBACK TRAN
	COMPLETE TRAN
*/