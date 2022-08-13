CREATE TABLE perferedDriver(
  personId INT NOT NULL,
  perferredCleanliness VARCHAR(120),
  importance INT,
  perferNonSmoking BOOLEAN,
  musicPreference1 VARCHAR(20),
  musicPreference2 VARCHAR(20),
  musicPreference3 VARCHAR(20),
  perferredDrivingStyle VARCHAR(120),
  perferredGender CHAR(1),
  PRIMARY KEY(personId),
  FOREIGN KEY(personId) REFERENCES Person (personId)
  ON DELETE CASCADE ON UPDATE CASCADE)
ENGINE = InnoDB;