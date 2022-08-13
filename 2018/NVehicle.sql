CREATE TABLE Vehicle(
  licensePlateNum INT NOT NULL,
  vehicleModel VARCHAR(20),
  passengerCapacity INT,
  vehicleCleanliness VARCHAR (120),
  luggageCapacity VARCHAR (120),
  nonSmoking BOOLEAN,
  PRIMARY KEY(licensePlateNum))
ENGINE = InnoDB;