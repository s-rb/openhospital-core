CREATE TABLE OH_SESSION_AUDIT (
  SEA_ID INT(11) NOT NULL AUTO_INCREMENT,
  SEA_US_ID_A VARCHAR(50) NOT NULL,
  SEA_LOGIN datetime NOT NULL,
  SEA_LOGOUT datetime NULL,
  SEA_CREATED_BY VARCHAR(50) NULL DEFAULT NULL,
  SEA_CREATED_DATE datetime NULL DEFAULT NULL,
  SEA_LAST_MODIFIED_BY VARCHAR(50) NULL DEFAULT NULL,
  SEA_LAST_MODIFIED_DATE datetime NULL DEFAULT NULL,
  SEA_ACTIVE TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (SEA_ID),
  FOREIGN KEY (SEA_US_ID_A) REFERENCES OH_USER (US_ID_A)
) ENGINE = INNODB DEFAULT CHARACTER SET utf8;
