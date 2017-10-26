    WITH CCYContUsage_CTE (ContinentCode, CurrencyCode, CurrencyUsage) 
	  AS (
           SELECT ContinentCode, CurrencyCode, COUNT(CountryCode) AS CurrencyUsage
             FROM Countries 
         GROUP BY ContinentCode, CurrencyCode
           HAVING COUNT(CountryCode) > 1  
         )
   SELECT ContMax.ContinentCode, ccy.CurrencyCode, ContMax.CurrencyUsage 
     FROM
         (SELECT ContinentCode, MAX(CurrencyUsage) AS CurrencyUsage
          FROM CCYContUsage_CTE 
          GROUP BY ContinentCode) 
		  AS ContMax
     JOIN CCYContUsage_CTE AS ccy 
       ON (ContMax.ContinentCode = ccy.ContinentCode AND ContMax.CurrencyUsage =   ccy.CurrencyUsage)
 ORDER BY ContMax.ContinentCode