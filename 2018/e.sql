CREATE TABLE game (homeid CHAR(3) NOT NULL,
visitid CHAR(3) NOT NULL,
gamedate DATE NOT NULL, 
homescore INT NOT NULL, 
visitscore INT NOT NULL, 
PRIMARY KEY (homeid, visitid, gamedate), 
FOREIGN KEY (homeid) REFERENCES team (teamid) 
ON UPDATE CASCADE ON DELETE CASCADE, 
FOREIGN KEY (visitid) REFERENCES team (teamid) 
ON UPDATE CASCADE ON DELETE CASCADE,
CHECK( 
homescore >= 0 
AND visitscore >= 0)
)
ENGINE = InnoDB;
