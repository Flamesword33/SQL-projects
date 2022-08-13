CREATE TABLE Trip(
  tripId INT NOT NULL,
  groupSize INT NOT NULL,
  departureDate DATE NOT NULL,
  luggage VARCHAR(120),
  compensation BOOLEAN,
  departureTimeFlexible BOOLEAN,
  departureTime TIME,
  involvesAlcohol BOOLEAN,
  PRIMARY KEY(tripId))
ENGINE = InnoDB;