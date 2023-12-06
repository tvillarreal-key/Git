
--DROP View [dbo].[VOUCHER_ATTACHMENTS_VIEW] 
Create View [dbo].[VOUCHER_ATTACHMENTS_VIEW_OLD] AS (
SELECT DISTINCT CAST(GJ.[VOUCHER] AS VARCHAR) AS VOUCHER
, CASE 
  WHEN CAST(VA.TYPEID AS VARCHAR) = 'URL' THEN CAST(NOTES AS VARCHAR(150))
  ELSE CAST(VA.PATH AS VARCHAR(150))
  END AS ATTACHMENT
FROM
[dbo].[D365_VendorInvoiceAttachments] VA, 
[dbo].[D365_General_Journal_entry] GJ
WHERE CAST(GJ.[DOCUMENTNUMBER] AS VARCHAR) = CAST(VA.HEADERREFERENCE AS VARCHAR)
UNION ALL
SELECT DISTINCT CAST(GJ.[VOUCHER] AS VARCHAR) 
, CAST(NOTES AS VARCHAR(150)) AS ATTACHMENT
FROM [dbo].[D365_GeneralJournalAttachments] JA,
     [dbo].[JOURNALBATCHNUM_VOUCHER] JV,
     [dbo].[D365_General_Journal_entry] GJ
WHERE CAST(GJ.[VOUCHER] AS VARCHAR) = JV.[VOUCHER]
AND JV.[JOURNALBATCHNUMBER] = CAST(JA.[JOURNALBATCHNUMBER] AS VARCHAR)
)
GO

