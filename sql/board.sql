copy
	(select distinct on (ein, "PrsnNm") "PrsnNm", taxpayer_name
	 from return_Frm990PrtVIISctnA
	 inner join
	       (select distinct ein, taxpayer_name
	        from return_part_0 inner join filing_filing using (ein)
		where "USAddrss_ZIPCd" like '4810%') t
	using (ein)
	WHERE "PrsnNm" IS NOT NULL and taxpayer_name is NOT NULL)
to STDOUT
with csv header;
