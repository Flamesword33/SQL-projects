CREATE TABLE take(
  driverUsername VARCHAR(20) NOT NULL,
  tripId INT NOT NULL,
  twoWay BOOLEAN,
  PRIMARY KEY(driverUsername, tripId),
  FOREIGN KEY(driverUsername) REFERENCES Person (username)
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (tripId) REFERENCES Trip (tripId)
  ON DELETE CASCADE ON UPDATE CASCADE)
ENGINE = InnoDB;