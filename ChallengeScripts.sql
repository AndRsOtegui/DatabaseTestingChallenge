-- 1st
SELECT * FROM employee
WHERE Salary > 3000 AND year(birthDate) < '1983';

-- 2nd
SELECT e.firstName AS 'Employee Name', c.fullName AS 'Children Name' From employee e
INNER JOIN children c ON e.idEmployee = c.idEmployee
WHERE c.fullName = 'Gohan';

SELECT * FROM children
WHERE fullName = 'Gohan';

-- 3rd
SELECT e.idEmployee, e.firstName, co.idCompany, co.coName FROM employee e
INNER join company co ON e.idCompany = co.idCompany
WHERE e.firstName ='Krilin';

-- 4th
SELECT * FROM company
WHERE idCompany IN (
  SELECT idCompany FROM employee
  WHERE idEmployee IN (
   SELECT idEmployee FROM children
   WHERE idChild = '3'
 )
);

-- 5th
SELECT * FROM employee
WHERE idEmployee NOT IN (
  SELECT idEmployee FROM children
);

SElECT * FROM institution
Where studies = 'Sistemas';

-- Join clause to get information from tables employee and institution --
SELECT e.idEmployee, e.firstName, i.institutionName, i.studies FROM employee e
INNER JOIN institution i ON e.idEmployee = i.idEmployee;

-- Children whoose parents work at PriceSmart(5) --
SELECT * FROM children
WHERE idEmployee IN (
SELECT idEmployee FROM employee
WHERE idCompany = 5
);








