copy
	(select distinct on (ein, "PrsnNm")
	 "PrsnNm", taxpayer_name
         FROM 
	 (SELECT
	      ein,
	      "PrsnNm",
	      "BsnssNm_BsnssNmLn1Txt" as taxpayer_name
	  from return_Frm990PrtVIISctnA
          inner join return_returnheader990x_part_i
	  using (ein)
	      WHERE "USAddrss_ZIPCd" like '4810%'
	          AND "PrsnNm" IS NOT NULL
	  	  AND "BsnssNm_BsnssNmLn1Txt" is NOT NULL
	  UNION
	  SELECT
	      ein,
	      "PrsnNm",
	      "BsnssNm_BsnssNmLn1Txt" as taxpayer_name
	  from return_ezoffcrdrctrtrstempl
          inner join return_returnheader990x_part_i
	  using (ein)
	      WHERE "USAddrss_ZIPCd" like '4810%'
	          AND "PrsnNm" IS NOT NULL
	  	  AND "BsnssNm_BsnssNmLn1Txt" is NOT NULL) t
	 )
to STDOUT
with csv header;
