CREATE TABLE Person(
  username VARCHAR(20) NOT NULL,
  password VARCHAR(20) NOT NULL,
  personType VARCHAR(20),
  personName VARCHAR(20) NOT NULL,
  gender VARCHAR(6),
  birthdate DATE,
  phoneNumber INT,
  email VARCHAR(40),
  PRIMARY KEY(username))
ENGINE = InnoDB;