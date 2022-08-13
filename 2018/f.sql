CREATE VIEW age AS 
SELECT playername, teamid, 
datediff(curdate(), birthdate)/365 AS age_years, CASE 
WHEN datediff(curdate(), birthdate)/365 > 35 THEN 'late' 
WHEN datediff(curdate(), birthdate)/365 > 30 THEN 'late-mid' 
WHEN datediff(curdate(), birthdate)/365 > 25 THEN 'early-mid' 
ELSE 'early' 
END AS career
FROM player;

SELECT * FROM age;
