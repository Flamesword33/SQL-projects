CREATE TABLE toLocation(
  tripId INT NOT NULL,
  city VARCHAR(20) NOT NULL,
  address VARCHAR(20) NOT NULL,
  locationFlexible BOOLEAN,
  PRIMARY KEY(tripId, city, address),
  FOREIGN KEY(tripId) REFERENCES Trip (tripId)
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY(city, address) REFERENCES Location (city, address)
  ON DELETE CASCADE ON UPDATE CASCADE)
ENGINE = InnoDB;