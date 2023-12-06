
/****** Script for SelectTopNRows command from SSMS  ******/
Create View [dbo].[GJ_ATTACHMENTS_VIEW] AS (
SELECT GA.[JOURNALBATCHNUMBER], [VOUCHER], [NOTES], [PATH], [RESTRICTION]
FROM
  [dbo].[D365_GeneralJournalAttachments] GA, 
  [dbo].[JOURNALBATCHNUM_VOUCHER] JV
  WHERE CAST(GA.JOURNALBATCHNUMBER AS VARCHAR) = JV.JOURNALBATCHNUMBER
  
  
  )
GO

