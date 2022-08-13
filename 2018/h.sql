CREATE TABLE torgame (homename VARCHAR(20) NOT NULL,
visitname VARCHAR(20) NOT NULL,
gamedate DATE NOT NULL, 
homescore INT NOT NULL, 
visitscore INT NOT NULL, 
CHECK( 
homescore >= 0 
AND visitscore >= 0)
)
ENGINE = InnoDB;

INSERT INTO torgame ( homename, visitname, gamedate, homescore, visitscore)
SELECT H.teamname, V.teamname, gamedate, homescore, visitscore 
FROM game AS G, team AS H, team AS V 
WHERE (homeid = 'TOR ' OR visitid = 'TOR ')
AND H.teamid = G.homeid
AND V.teamid = G.visitid;

SELECT * FROM torgame;
