CREATE TABLE Location(
  city VARCHAR(20) NOT NULL,
  address VARCHAR(20) NOT NULL,
  isLocal BOOLEAN,
  PRIMARY KEY(city, address))
ENGINE = InnoDB;