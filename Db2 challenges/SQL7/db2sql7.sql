
--- Ejercicio 1: Create a table
DROP TABLE TESTEMP;
COMMIT;

CREATE TABLE TESTEMP (
    EMPNO     CHAR(6)       NOT NULL,
    LASTNAME  VARCHAR(15)   NOT NULL,
    WORKDEPT  CHAR(3),
    HIREDATE  DATE,
    SALARY    DECIMAL(9, 2),
    BONUS     DECIMAL(9, 2)
) IN DATABASE Z72859;
COMMIT;

--- Ejercicio 2: Insert data into the table
Insert into TESTEMP values ('000111', 'SMITH', 'C01', '2000-06-06', 25000, 0);
Insert into TESTEMP values ('000222', 'BAKER', 'A00', '2000-06-06', 28000, NULL);
Insert into TESTEMP values ('000333', 'THOMAS', 'D11', '2000-06-06', 33000, 0);
COMMIT;



--- Ejercicio 3: Insert data from another table
INSERT INTO TESTEMP (EMPNO, LASTNAME, WORKDEPT, HIREDATE, SALARY, BONUS)
SELECT EMPNO, LASTNAME, WORKDEPT, HIREDATE, SALARY, BONUS From ibmuser.emp
where empno <= '000050'
order by empno;

--- Ejercicio 4: Update data in the table
Update TESTEMP set BONUS = 500 where EMPNO = '000111';

--- Ejercicio 5: Update data in the table with a condition
UPDATE TESTEMP SET SALARY = SALARY + 1000 WHERE WORKDEPT = 'C01';

--- Ejercicio 6: Delete data from the table
DELETE FROM TESTEMP WHERE EMPNO = '000111';
COMMIT;

--- Ejercicio 7: The employee id > 50
INSERT INTO TESTEMP SELECT * FROM ibmuser.emp WHERE EMPNO > '000050';


--- Ejercicio 8: Reassign an employee and add a new one
UPDATE TESTEMP SET WORKDEPT = 'E01' WHERE EMPNO = '000100'; 

--- Ejercicio 9: Add a new employee
INSERT INTO TESTEMP VALUES ('000360', 'BROWN', 'D01', CURRENT DATE, 45000, NULL); 
COMMIT;

--- Ejercicio 10: The final Audit
SELECT EMPNO, LASTNAME, WORKDEPT, SALARY, BONUS From TESTEMP 
WHERE EMPNO IN ('000030', '000100', '000222', '000333', '000360')
ORDER BY EMPNO;

SELECT * FROM TESTEMP;

