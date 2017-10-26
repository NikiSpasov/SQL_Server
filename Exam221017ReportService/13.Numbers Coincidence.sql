 SELECT DISTINCT(u.Username)
 FROM Users as u
 JOIN Reports as r ON r.UserId = u.Id
 WHERE (LEFT(Username, 1)) IN ('0','1','2','3','4','5','6','7','8','9') 
 OR (RIGHT(Username, 1)) IN ('0','1','2','3','4','5','6','7','8','9')
 AND 
 (CAST (LEFT(Username, 1) AS int) = r.UserId)
  OR CAST(RIGHT(Username, 1) AS int) = r.UserId
 ORDER BY u.Username