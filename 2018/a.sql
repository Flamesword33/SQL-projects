CREATE TABLE team (teamid CHAR(3) NOT NULL, 
  teamname VARCHAR(20) NOT NULL, 
  PRIMARY KEY (`teamid`)) 
ENGINE = InnoDB;

INSERT INTO team (teamid, teamname) 
VALUES ('CAL', 'Calgary Flames'), 
('EDM', 'Edmonton Oilers'), 
('MON', 'Montreal Canadiens'), 
('TOR', 'Toronto Maple Leafs');

SELECT * FROM team;
