 
 
     SELECT Username, 
            SUBSTRING (Email, CHARINDEX('@', Email) + 1, LEN(Email) - CHARINDEX         ('@', Email) + 1)
        AS [Email Provider] 
      FROM Users
      --or RIGHT(Email, LEN(Email) - CHARINDEX('@',Email)) AS 'Email Provider' FROM Users
  ORDER BY [Email Provider], Username 

  --LEN(Email - CHARINDEX(Email, '@')