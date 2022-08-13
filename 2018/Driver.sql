CREATE TABLE Driver(
  username VARCHAR(20) NOT NULL,
  ownsVehicle INT,
  musicPreference1 VARCHAR(20),
  musicPreference2 VARCHAR(20),
  musicPreference3 VARCHAR(20),
  PRIMARY KEY(username),
  FOREIGN KEY(username) REFERENCES Person (username)
  ON DELETE CASCADE ON UPDATE CASCADE)
ENGINE = InnoDB;