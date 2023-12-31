CREATE DATABASE PERSONAS;
USE PERSONAS; 

Show Tables;

CREATE TABLE Company (
	idCompany	INT PRIMARY KEY,
	coName		VARCHAR(45) NOT NULL,
	phoneNumber		VARCHAR(45) NOT NULL,
	email		VARCHAR(45) NOT NULL,
	address		VARCHAR(45)
);

CREATE TABLE employee (
  idEmployee INT NOT NULL,
  firstName	VARCHAR(45) NOT NULL,
  lastName	VARCHAR(45) NOT NULL,
  email		VARCHAR(45) NOT NULL,
  phoneNumber		VARCHAR(45) NOT NULL,
  address	VARCHAR(45) NULL,
  Salary		DOUBLE NOT NULL,
  birthDate	DATE NOT NULL,
  CONSTRAINT	PK_factura_id  PRIMARY KEY (idEmployee)
);    

ALTER TABLE Employee ADD idCompany INT NOT NULL;  # Add a Column
ALTER TABLE Employee ADD CONSTRAINT FK_idCompany  FOREIGN KEY (idCompany)  
					REFERENCES Company  (idCompany)
                    ON DELETE CASCADE     
                    ON UPDATE CASCADE;	
                    
CREATE TABLE children (
idChild		INT AUTO_INCREMENT PRIMARY KEY,
idEmployee	INT NOT NULL,
fullName		VARCHAR(45) NOT NULL,
birthDate	DATE NOT NULL,
gender		VARCHAR(20), 
CONSTRAINT 	FK_idEmployee  FOREIGN KEY (idEmployee)  
					REFERENCES Employee  (idEmployee)
                    ON DELETE CASCADE
					ON UPDATE CASCADE
);	

CREATE TABLE institution(
 idInstitution INT AUTO_INCREMENT PRIMARY KEY,
 institutionName VARCHAR(45) NOT NULL,
 studies VARCHAR(45) NOT NULL,
 idEmployee INT NOT NULL,
 FOREIGN KEY (idEmployee) 
 REFERENCES employee (idEmployee)
);

INSERT INTO institution (institutionName,studies,idEmployee)VALUES('Javeriana','Sistemas','74'); 
INSERT INTO institution (institutionName,studies,idEmployee)VALUES('Nacional','Electronica','83'); 
INSERT INTO institution (institutionName,studies,idEmployee)VALUES('Distrital','Diseno','92'); 
INSERT INTO institution (institutionName,studies,idEmployee)VALUES('Andes','Industrial','95'); 
INSERT INTO institution (institutionName,studies,idEmployee)VALUES('Sabana','Mecanica','64'); 

# add values
INSERT INTO Company (idCompany, coName, phoneNumber, email, address) VALUES ('1', 'Ara', ' 54136579', 'ara@gmail.com', ' 72 Lancaster rd');
INSERT INTO Company (idCompany, coName, phoneNumber, email, address) VALUES ('2', 'Olimpica', '54335486', 'olimpic@gmail.com', '81 Stevenson st');
INSERT INTO Company (idCompany, coName, phoneNumber, email, address) VALUES ('3', 'Only', '487257', 'only@gmail.com', '12 Oxford st.');
INSERT INTO Company (idCompany, coName, phoneNumber, email, address) VALUES ('4', 'Exito', '7822365', 'extio@gmail.com', '36 Jackson rd.');
INSERT INTO Company (idCompany, coName, phoneNumber, email, address) VALUES ('5', 'PriceSmart', '5522678', 'pricemart@gmail.com', '85 Turbo Ave.');

INSERT INTO Employee (idEmployee, firstName, lastName, email, phoneNumber, address, Salary, birthDate, idCompany) VALUES ('74', 'Goku', 'Kameja', 'gokuz@gmail.com', '523657563', '96 Toohey rd', '2900', '1985-05-23', '5');
INSERT INTO Employee (idEmployee, firstName, lastName, email, phoneNumber, address, Salary, birthDate, idCompany) VALUES ('83', 'Vegueta', 'Vegito', 'vegueta@gmail.com', '6952335', '15 Adelade st', '3800', '1982-04-16', '5');
INSERT INTO Employee (idEmployee, firstName, lastName, email, phoneNumber, address, Salary, birthDate, idCompany) VALUES ('92', 'Krilin', 'Perez', 'krilip@gmail.com', '45623688', '87 Woolbor st', '3500', '1984-09-17', '3');
INSERT INTO Employee (idEmployee, firstName, lastName, email, phoneNumber, address, Salary, birthDate, idCompany) VALUES ('95', 'Natalia', 'Gonzalez', 'natis@gmail.com', '78962426', '42 George av.', '4100', '1979-02-06', '4');
INSERT INTO Employee (idEmployee, firstName, lastName, email, phoneNumber, address, Salary, birthDate, idCompany) VALUES ('64', 'Paola', 'Ramirez', 'paos@gmail.com', '6324584', '37 George st.', '3050', '1990-05-07', '1');

INSERT INTO Children (idChild, idEmployee, fullName, birthDate, gender) VALUES ('1', '74', 'Gohan', '2006-11-14', 'Male');
INSERT INTO Children (idChild, idEmployee, fullName, birthDate, gender) VALUES ('2', '95', 'Diana', '2009-05-24', 'Female');
INSERT INTO Children (idChild, idEmployee, fullName, birthDate, gender) VALUES ('3', '83', 'Trunks', '2016-02-16', 'Male');
INSERT INTO Children (idChild, idEmployee, fullName, birthDate, gender) VALUES ('4', '74', 'Goten', '2016-07-28', 'Male');
INSERT INTO Children (idChild, idEmployee, fullName, birthDate, gender) VALUES ('5', '92', 'Maron', '2017-10-01', 'Female');

Select * From Employee;