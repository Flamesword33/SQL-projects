CREATE TABLE toLocation(
  tripId INT NOT NULL,
  locationType VARCHAR(20) NOT NULL,
  city VARCHAR(20) NOT NULL,
  address VARCHAR NOT NULL,
  locationFlexible BOOLEAN,
  isLocal BOOLEAN,
  PRIMARY KEY(tripId, locationType, city, address),
  FOREIGN KEY(tripId) REFERENCES Trip (tripId)
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY(city, address) REFERENCES Location (city, address)
  ON DELETE CASCADE ON UPDATE CASCADE)
ENGINE = InnoDB;