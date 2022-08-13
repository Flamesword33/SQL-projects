CREATE TABLE preferredPassenger(
  username VARCHAR(20) NOT NULL,
  importance INT NOT NULL,
  sameGender BOOLEAN,
  sober BOOLEAN,
  PRIMARY KEY(username, importance), 
  FOREIGN KEY(username) REFERENCES Person (username)
  ON DELETE CASCADE ON UPDATE CASCADE)
ENGINE = InnoDB;