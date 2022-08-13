CREATE TABLE player (playerid INT NOT NULL, 
    playername VARCHAR(30) NOT NULL,
    position CHAR(1) NOT NULL, 
    birthdate DATE NOT NULL, 
    teamid CHAR(3) NOT NULL, 
    PRIMARY KEY (playerid), 
    FOREIGN KEY (teamid) REFERENCES team(teamid) 
    ON UPDATE CASCADE, 
    CHECK(position = 'C' OR position = 'D' OR position = 'G' 
    OR position = 'L' OR position = 'R'))  ENGINE = InnoDB;
