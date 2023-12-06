




CREATE VIEW [dbo].[PO_DATA_VIEW]
AS
SELECT H1.[PURCHASEORDERNUMBER]
      ,[ACCOUNTINGDATE]
      ,SUBSTRING([DEFAULTLEDGERDIMENSIONDISPLAYVALUE], 1, 3) AS YARD
      ,CONVERT(nvarchar(MAX), [ORDERVENDORACCOUNTNUMBER]) AS ORDERVENDORNUMBER 
      ,[PURCHASEORDERNAME] AS VENDOR
      ,[VENDORORDERREFERENCE]
	  , CASE 
			WHEN [XXMKT_CUSTOM] = 'GC ? Gulf Coast' THEN 'GC - Gulf Coast' 
			WHEN [XXMKT_CUSTOM] = 'NE ? Northeast' THEN 'NE - Northeast' 
			WHEN [XXMKT_CUSTOM] = 'PB ? Permian Basin' THEN 'PB - Permian Basin' 
			WHEN [XXMKT_CUSTOM] = 'RM ? Rocky Mountain' THEN 'RM - Rocky Mountain' 
			WHEN [XXMKT_CUSTOM] = 'WC ? West Coast' THEN 'WC - West Coast' 
			ELSE [XXMKT_CUSTOM]
		END AS MarketPlace
	  ,Y1.Name AS YARD_NAME
	  ,[Associated_Coding] AS GL_Account
	  ,[ACCOUNTCATEGORYDESCRIPTION]
	  ,M1.NAME
	  ,[LINEAMOUNT] AS INVOICE_AMOUNT
	  ,[LINEAMOUNT] AS PO_AMOUNT
	  ,0 AS NON_PO_AMOUNT
  FROM [dbo].[D365_POHeader] H1,
  [dbo].[D365_POLines] L1,
  [dbo].[D365_Yard] Y1, --ON Y1.[Yard] =  SUBSTRING([DEFAULTLEDGERDIMENSIONDISPLAYVALUE], 1, 3)
  [dbo].[COA] C1,
  [dbo].[D365_MainAccount] M1
WHERE H1.[PURCHASEORDERNUMBER] = L1.[PURCHASEORDERNUMBER] 
AND SUBSTRING([DEFAULTLEDGERDIMENSIONDISPLAYVALUE], 1, 3) = Y1.[FunctionalLocationID]
AND CAST(L1.[PROCUREMENTPRODUCTCATEGORYNAME] AS VARCHAR(50)) = CAST(C1.[Paste_into_Procurement_Category] AS VARCHAR(50))
AND CONVERT(nvarchar(50), [Associated_Coding]) = CONVERT(nvarchar(50), M1.[MAINACCOUNTID])
AND SUBSTRING(CONVERT(nvarchar(50), [Associated_Coding]), 1, 1) IN ('5', '6', '7')
UNION ALL
SELECT ' ' AS PURCHASEORDERNUMBER
      ,Cast(Cast([DATE] AS varchar(50)) AS datetime2)
      ,SUBSTRING(K1.[LEDGERACCOUNT], 1, 3) AS YARD
	--,[INVOICE]
	  ,L1.[ACCOUNTDISPLAYVALUE] AS VENDOR_ACCOUNT
	  ,V1.[VENDORSEARCHNAME]
	  ,H1.DESCRIPTION AS VENDORREFERENCE
	  --,[XXMKT_CUSTOM] AS MarketPlace
	  , CASE 
			WHEN [XXMKT_CUSTOM] = 'GC ? Gulf Coast' THEN 'GC - Gulf Coast' 
			WHEN [XXMKT_CUSTOM] = 'NE ? Northeast' THEN 'NE - Northeast' 
			WHEN [XXMKT_CUSTOM] = 'PB ? Permian Basin' THEN 'PB - Permian Basin' 
			WHEN [XXMKT_CUSTOM] = 'RM ? Rocky Mountain' THEN 'RM - Rocky Mountain' 
			WHEN [XXMKT_CUSTOM] = 'WC ? West Coast' THEN 'WC - West Coast' 
			ELSE [XXMKT_CUSTOM]
		END AS MarketPlace
	  ,Y1.Name AS YARD_NAME
	  ,SUBSTRING(K1.[LEDGERACCOUNT], 20, 6) AS GL_ACCOUNT
	  ,[ACCOUNTCATEGORYDESCRIPTION]
	  ,M1.NAME
	  ,[TRANSACTIONCURRENCYDEBITAMOUNT]
	  ,0 AS PO_AMOUNT
	  ,[TRANSACTIONCURRENCYDEBITAMOUNT] AS NON_PO_AMOUNT
  FROM [dbo].[D365_VendorJournalHeader] H1,
	   [dbo].[D365_VendorJournalLines] L1,
	   [dbo].[D365_Yard] Y1,
	   [dbo].[D365_Vendor] V1,
	   --[dbo].[D365_GeneralJournal] K1,
	   [dbo].[D365_General_Journal_entry] K1,
	   [dbo].[D365_MainAccount] M1
WHERE H1.[JOURNALBATCHNUMBER] = L1.[JOURNALBATCHNUMBER] 
AND SUBSTRING(K1.[LEDGERACCOUNT], 1, 3) = Y1.[FunctionalLocationID]
AND L1.[Voucher] = CAST(K1.[Voucher] AS NVARCHAR(MAX))
AND SUBSTRING(K1.[LEDGERACCOUNT], 20, 6) = CONVERT(nvarchar(50), M1.[MAINACCOUNTID])
AND CONVERT(nvarchar(50), L1.[ACCOUNTDISPLAYVALUE]) = CONVERT(nvarchar(50), V1.[VENDORACCOUNTNUMBER])
AND SUBSTRING(K1.[LEDGERACCOUNT], 20, 6) <> '200000'
AND SUBSTRING(K1.[LEDGERACCOUNT], 20, 1) IN ('5', '6', '7')
GO

