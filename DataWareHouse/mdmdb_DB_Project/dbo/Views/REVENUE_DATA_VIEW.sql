






CREATE VIEW [dbo].[REVENUE_DATA_VIEW]
AS
SELECT  
       GL.[JOURNALNUMBER]
      ,GL.[VOUCHER]
	  ,GL.[ACCOUNTINGDATE]
	  ,GL.[LEDGERACCOUNT]
	  ,SUBSTRING(GL.[LEDGERACCOUNT], 1, 3) AS YARD
	  ,YD.NAME AS YARD_NAME
	  ,SUBSTRING(GL.[LEDGERACCOUNT], 5, 4) AS LOCATION
	  ,SUBSTRING(GL.[LEDGERACCOUNT], 10, 4) AS LOB_ID
	  ,SUBSTRING(GL.[LEDGERACCOUNT], 15, 4) AS FUTURE
	  ,SUBSTRING(GL.[LEDGERACCOUNT], 20, 6) AS GL_ACCOUNT
	  ,SUBSTRING(GL.[LEDGERACCOUNT], 27, 3) AS LEGAL_ENTITY
	  ,CASE 
			WHEN [XXMKT_CUSTOM] = 'GC ? Gulf Coast' THEN 'GC - Gulf Coast' 
			WHEN [XXMKT_CUSTOM] = 'NE ? Northeast' THEN 'NE - Northeast' 
			WHEN [XXMKT_CUSTOM] = 'PB ? Permian Basin' THEN 'PB - Permian Basin' 
			WHEN [XXMKT_CUSTOM] = 'RM ? Rocky Mountain' THEN 'RM - Rocky Mountain' 
			WHEN [XXMKT_CUSTOM] = 'WC ? West Coast' THEN 'WC - West Coast' 
			ELSE [XXMKT_CUSTOM]
	   END AS MarketPlace
	  ,YD.XXLOB_CUSTOM AS LOB
	  ,RP.Level1
	  ,RP.Level2
	  ,RP.Level3
	  ,RP.Level_Of_Detail
	  ,MA.[NAME]
      ,GL.[DESCRIPTION]
      ,GL.[REPORTINGCURRENCYAMOUNT]
      ,GL.[POSTINGTYPE]
	  ,GL.[DOCUMENTNUMBER]
      ,GL.[QUANTITY]
	  ,GL.CUSTOMERACCOUNT
	  ,GL.CUSTOMERNAME
	  --,GL.VENDORACCOUNT
	  --,GL.VENDORNAME
  FROM [dbo].[D365_General_Journal_entry] GL 
       LEFT OUTER JOIN [dbo].[D365_MainAccount] MA ON SUBSTRING(GL.[LEDGERACCOUNT], 20, 6) = MA.[MAINACCOUNTID] 
	   LEFT OUTER JOIN [dbo].[D365_Yard] YD ON SUBSTRING(GL.[LEDGERACCOUNT], 1, 3) = YD.[FunctionalLocationID]
	   LEFT OUTER JOIN [dbo].[GL_REPORTING_BUCKETS_DTL] RP ON SUBSTRING(GL.[LEDGERACCOUNT], 20, 6) = RP.GL_ACCOUNT 
  --WHERE SUBSTRING(GL.[LEDGERACCOUNT], 20, 1) IN ('6', '7')
  WHERE SUBSTRING(GL.[LEDGERACCOUNT], 20, 1) IN ('4')
  --AND GL.[ACCOUNTINGDATE] > '1/31/2022'
GO
