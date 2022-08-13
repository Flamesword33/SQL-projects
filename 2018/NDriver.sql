CREATE TABLE Driver(
  personId INT NOT NULL,
  ownsVehicle INT,
  musicPreference1 VARCHAR(20),
  musicPreference2 VARCHAR(20),
  musicPreference3 VARCHAR(20),
  drivingStyle VARCHAR(120),
  PRIMARY KEY(personId),
  FOREIGN KEY(personId) REFERENCES Person (personId)
  ON DELETE CASCADE ON UPDATE CASCADE)
ENGINE = InnoDB;