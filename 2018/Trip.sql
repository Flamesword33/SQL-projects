CREATE TABLE Trip(
  tripId INT NOT NULL,
  departureDate DATE NOT NULL,
  departureTime TIME,
  departureTimeFlexible BOOLEAN,
  groupSize INT NOT NULL,
  compensation BOOLEAN,
  numLargeLuggage INT,
  involvesAlcohol BOOLEAN,
  PRIMARY KEY(tripId))
ENGINE = InnoDB;