USE Orders

SELECT ProductName, OrderDate, DATEADD(DAY, 3, OrderDate) AS [Pay Due],
       FORMAT (DATEADD(DAY, 3, OrderDate), 'yy-MM-dd') AS [PAY DUE - FORMATED], 
       DATEADD(MONTH, 1, OrderDate)	AS [Delivery Due] 
  FROM Orders