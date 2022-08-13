CREATE TABLE Person(
  personId INT NOT NULL,
  personName VARCHAR(20) NOT NULL,
  phoneNumber INT,
  email VARCHAR(20),
  personType VARCHAR(20),
  gender char(1),
  birthDate DATE,
  PRIMARY KEY(personId))
ENGINE = InnoDB;