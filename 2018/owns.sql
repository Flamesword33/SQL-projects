CREATE TABLE owns(
  username VARCHAR(20) NOT NULL,
  licensePlateNum INT NOT NULL,
  PRIMARY KEY(username, licensePlateNum),
  FOREIGN KEY(username) REFERENCES Person (username)
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY(licensePlateNum) REFERENCES Vehicle (licensePlateNum)
  ON DELETE CASCADE ON UPDATE CASCADE)
ENGINE = InnoDB;