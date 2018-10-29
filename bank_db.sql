-- create and select the database
DROP DATABASE IF EXISTS bank_db;
CREATE DATABASE bank_db;
USE bank_db;

-- create the Product table
CREATE TABLE Accounts (
  ID			INT        PRIMARY KEY  AUTO_INCREMENT,
  holder     VARCHAR(40)    NOT NULL     UNIQUE,
  Balance	Decimal(18,2)   NOT NULL,
  Fees		DECIMAL(10,2)  NOT NULL
);



-- create Transactions table
CREATE TABLE Transactions (
  ID			INT				PRIMARY KEY  AUTO_INCREMENT,
  Amount		VARCHAR(40)			NOT NULL,
  Txn_type		VARCHAR(40)				NOT NULL,
  Account_ID    INT				NOT NULL,
  FOREIGN KEY (Account_ID) REFERENCES Accounts (ID)
  
);

-- insert some rows into the Accounts table
INSERT INTO Accounts VALUES
(1, 'Gary Handerson' , '8888.00' , '250.00'),
(2, 'Meagan Hansen' , '5444.00' , '175.00'),
(3, 'Nick Law' , '3333.00' , '88.00'),
(4, 'Yelena Lapina' , '3322.00' , '88.00');


-- insert some test data for Transactions, based on accounts above
INSERT INTO Transactions VALUES
(1, 500 , 'deposits' , 3),
(2, '(200.00)' , 'withdrawal' , '4'),
(3, 200.00 , 'Deposit' , '4'),
(4, 248.00 , 'Deposit' , '1');



-- create a user and grant privileges to that user
create user if not exists 'bank_db_user'@'localhost'
IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE
ON bank_db.*
TO bank_db_user@localhost;
