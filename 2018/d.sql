ALTER TABLE player
ADD salary DOUBLE(9,2);

UPDATE player 
SET salary = CASE 
WHEN teamid = ' CAL' THEN 1234567.87
WHEN teamid = 'EDM' THEN 999999.99
WHEN teamid = 'MTL' THEN 3000000.01
ELSE 5000000.01
END;

SELECT * FROM player;