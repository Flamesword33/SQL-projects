CREATE TABLE perferredPassenger(
  personId INT NOT NULL,
  importance INT,
  sober BOOLEAN,
  perferredGender CHAR(1),
  PRIMARY KEY(personId),
  FOREIGN KEY(personId) REFERENCES Person (personId)
  ON DELETE CASCADE ON UPDATE CASCADE)
ENGINE = InnoDB;