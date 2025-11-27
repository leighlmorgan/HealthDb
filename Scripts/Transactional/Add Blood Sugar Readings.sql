USE [Health]
GO

/*
   This script added initial blood sugar readings to the database directly.  It is no longer needed instead:

      1: Export blood sugar readings as mmol/L from the Finetest Lite glucose monitor into the Glook app
      2: Export blood sugar readings from Glook app as CSV file
      3: Open CSV file and paste into Excel Files\InsertStatementsForGlucoseReadings.xlsx
      4: Copy the generated SQL from Excel and paste into a new SQL query window
*/

--TRUNCATE TABLE dbo.BloodSugarReadings
GO
BEGIN TRAN

-- BEGIN Paste of generated SQL from Excel here
EXEC [dbo].[NewBloodSugarReading] '2025/11/27 17:09', 9.9
EXEC [dbo].[NewBloodSugarReading] '2025/11/27 12:04', 14.5
EXEC [dbo].[NewBloodSugarReading] '2025/11/26 17:07', 10.8
EXEC [dbo].[NewBloodSugarReading] '2025/11/26 07:22', 8.3
EXEC [dbo].[NewBloodSugarReading] '2025/11/25 17:22', 14.3
EXEC [dbo].[NewBloodSugarReading] '2025/11/25 07:10', 8.2
EXEC [dbo].[NewBloodSugarReading] '2025/11/24 21:18', 10
EXEC [dbo].[NewBloodSugarReading] '2025/11/24 07:02', 6.6
EXEC [dbo].[NewBloodSugarReading] '2025/11/23 17:11', 8.7
EXEC [dbo].[NewBloodSugarReading] '2025/11/23 07:37', 9
EXEC [dbo].[NewBloodSugarReading] '2025/11/22 17:20', 13
EXEC [dbo].[NewBloodSugarReading] '2025/11/22 07:28', 8.6
EXEC [dbo].[NewBloodSugarReading] '2025/11/21 17:28', 8.3
EXEC [dbo].[NewBloodSugarReading] '2025/11/21 07:14', 8
EXEC [dbo].[NewBloodSugarReading] '2025/11/20 20:51', 8.4
EXEC [dbo].[NewBloodSugarReading] '2025/11/20 12:00', 13.5
EXEC [dbo].[NewBloodSugarReading] '2025/11/19 21:54', 7.2
EXEC [dbo].[NewBloodSugarReading] '2025/11/19 06:58', 6.4
EXEC [dbo].[NewBloodSugarReading] '2025/11/18 21:04', 9
EXEC [dbo].[NewBloodSugarReading] '2025/11/18 07:29', 10.4
EXEC [dbo].[NewBloodSugarReading] '2025/11/17 20:43', 9
EXEC [dbo].[NewBloodSugarReading] '2025/11/17 11:53', 12.3
EXEC [dbo].[NewBloodSugarReading] '2025/11/16 17:45', 11.2
EXEC [dbo].[NewBloodSugarReading] '2025/11/16 08:24', 10.2
EXEC [dbo].[NewBloodSugarReading] '2025/11/15 21:36', 9.7
EXEC [dbo].[NewBloodSugarReading] '2025/11/15 12:21', 10.7
EXEC [dbo].[NewBloodSugarReading] '2025/11/14 17:38', 8.8
EXEC [dbo].[NewBloodSugarReading] '2025/11/14 07:19', 12.1
EXEC [dbo].[NewBloodSugarReading] '2025/11/13 20:30', 19.1
EXEC [dbo].[NewBloodSugarReading] '2025/11/13 17:49', 11.9
EXEC [dbo].[NewBloodSugarReading] '2025/11/13 12:19', 16.8
EXEC [dbo].[NewBloodSugarReading] '2025/11/12 16:34', 19.5
EXEC [dbo].[NewBloodSugarReading] '2025/11/27 17:09', 9.9
-- END Paste

SELECT * FROM dbo.BloodSugarReadings order by DateTaken desc

/*
	ROLLBACK TRAN
	COMMIT TRAN
*/