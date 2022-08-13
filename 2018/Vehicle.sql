CREATE TABLE Vehicle(
  licensePlateNum INT NOT NULL,
  vehiclePetName VARCHAR(20),
  vehicleModel VARCHAR(40),
  passengerCapacity INT,
  vehicleCleanliness VARCHAR (120),
  largeLuggageCapacity VARCHAR (120),
  nonSmoking BOOLEAN,
  PRIMARY KEY(licensePlateNum))
ENGINE = InnoDB;