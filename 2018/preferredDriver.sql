CREATE TABLE preferredDriver(
  username VARCHAR (20) NOT NULL,
  perferredCleanliness VARCHAR(20),
  importance INT NOT NULL,
  perferNonSmoking BOOLEAN,
  musicPreference1 VARCHAR(20),
  musicPreference2 VARCHAR(20),
  musicPreference3 VARCHAR(20),
  sameGender BOOLEAN,
  PRIMARY KEY(username, importance),
  FOREIGN KEY(username) REFERENCES Person (username)
  ON DELETE CASCADE ON UPDATE CASCADE)
ENGINE = InnoDB;