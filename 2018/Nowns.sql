CREATE TABLE owns(
  personId INT NOT NULL,
  licensePlateNum INT NOT NULL,
  PRIMARY KEY(personId, licensePlateNum),
  FOREIGN KEY(personId) REFERENCES Person (personId)
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY(licensePlateNum) REFERENCES Vehicle (licensePlateNum)
  ON DELETE CASCADE ON UPDATE CASCADE)
ENGINE = InnoDB;