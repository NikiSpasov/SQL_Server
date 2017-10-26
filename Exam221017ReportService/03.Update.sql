--currently Waiting - Id 1
--in status progress - Id 2
--for category 'Streetlight' - id 4

SELECT * FROM Reports

UPDATE Reports
SET StatusId = 2
WHERE StatusId = 1
AND CategoryId = 4

UPDATE Reports
