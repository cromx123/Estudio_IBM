Select * from ibmuser.emp;

--- EJERCICIO 1: Seleccionar el número de empleado, apellido, fecha de nacimiento y salario de los empleados que ganan más de 30,000, ordenados por salario de forma descendente.
Select EMPNO, LASTNAME, BIRTHDATE, SALARY from ibmuser.emp
WHERE SALARY > 30000
ORDER BY SALARY DESC;


--- EJERCICIO 2: Seleccionar el apellido, nombre y departamento de trabajo de los empleados, ordenados por departamento de trabajo de forma descendente y luego por apellido de forma descendente.
Select LASTNAME, FIRSTNME, WORKDEPT from ibmuser.emp 
ORDER BY WORKDEPT DESC, LASTNAME DESC;

--- EJERCICIO 3: Seleccionar el número de empleado, apellido, fecha de nacimiento y salario de los empleados que ganan entre 20,000 y 40,000, ordenados por fecha de nacimiento de forma ascendente.
Select DISTINCT EDLEVEL from ibmuser.emp 
ORDER BY EDLEVEL DESC;

--- EJERCICIO 4: 
Select  EMPNO, PROJNO from ibmuser.empprojact
ORDER BY EMPNO ASC;

--- EJERCICIO 5: Seleccionar el apellido, salario y bono de los empleados, ordenados por apellido de forma ascendente.

Select LASTNAME, SALARY, BONUS from ibmuser.emp
WHERE SEX = 'M'
ORDER BY LASTNAME ASC;

--- EJERCICIO 6: Seleccionar el apellido, salario y comisión de los empleados que ganan más de 20,000 y fueron contratados después del 1 de enero de 1980, ordenados por apellido de forma ascendente.
Select LASTNAME, SALARY, COMM  from ibmuser.emp
WHERE SALARY > 20000 AND HIREDATE > '1980-01-01';


--- EJERCICIO 7: Seleccionar el apellido, salario, bono y comisión de los empleados que ganan más de 22,000 y tienen un bono de 400 o 500, o una comisión menor a 1900, ordenados por apellido de forma ascendente.
Select LASTNAME, SALARY, BONUS, COMM FROM ibmuser.emp
where SALARY > 22000 AND BONUS = 400 OR BONUS = 500 AND COMM < 1900
ORDER BY LASTNAME ASC;

--- EJERCICIO 8: Seleccionar el apellido, salario, bono y comisión de los empleados que ganan más de 22,000 y tienen un bono de 400 o 500, y una comisión menor a 1900, ordenados por apellido de forma ascendente.
Select LASTNAME, SALARY, BONUS, COMM FROM ibmuser.emp 
WHERE SALARY > 22000 and (BONUS = 400 OR BONUS = 500) AND COMM < 1900;



--- EJERCICIO 9: Seleccionar el número de proyecto, número de actividad, fecha de inicio y fecha de fin de los proyectos que comienzan con 'AD' y tienen un número de actividad igual a 10, 80 o 180, ordenados por número de proyecto de forma ascendente.
Select PROJNO, ACTNO, EMSTDATE, EMENDATE from ibmuser.empprojact
WHERE  PROJNO LIKE 'AD%' and (ACTNO = 10 OR ACTNO = 80 OR ACTNO = 180)
ORDER BY PROJNO ASC;


--- EJERCICIO 10: Seleccionar el número de gerente y número de departamento de los departamentos que tienen un gerente asignado, ordenados por número de gerente de forma ascendente.
Select MGRNO, DEPTNO from ibmuser.DEPT
WHERE MGRNO IS NOT NULL
ORDER BY MGRNO ASC;


--- EJERCICIO 11: Seleccionar el número de empleado, apellido, salario y bono de los empleados que tienen un bono entre 800 y 1000, ordenados por bono de forma ascendente.
Select empno, lastname, salary, bonus from ibmuser.emp
where bonus >= 800 and bonus <= 1000
order by bonus asc;


--- EJERCICIO 12: Seleccionar el número de empleado, apellido, salario y departamento de trabajo de los empleados que trabajan en un departamento entre 'A00' y 'C01', ordenados por apellido de forma ascendente y luego por número de empleado de forma ascendente.
Select empno, lastname, salary, workdept from ibmuser.emp
where workdept >= 'A00' and workdept <= 'C01'
order by lastname asc, empno asc;


--- EJERCICIO 13: Seleccionar el número de proyecto, nombre del proyecto y número de actividad de los proyectos que tienen un número de actividad entre 50 y 150, ordenados por número de proyecto de forma ascendente.
Select projno, projname from ibmuser.proj
where projname like '%SUPPORT%'
Order by projno asc;



--- EJERCICIO 14: Seleccionar el número de departamento y nombre del departamento de los departamentos que tienen un número de departamento con un dígito '1' en la segunda posición, ordenados por número de departamento de forma ascendente.
Select deptno, deptname from ibmuser.dept
where deptno like '_1_'
order by deptno asc;



--- EJERCICIO 15: Seleccionar el apellido, nombre y salario de los empleados que no tienen el trabajo de 'MANAGER' ni 'PRES', ordenados por salario de forma descendente y limitando el resultado a los 5 primeros registros.
Select lastname, firstnme, midinit, salary from ibmuser.emp
where job != 'MANAGER' and job != 'PRES'
order by salary desc
fetch first 5 rows only;




SELECT * FROM ibmuser.PROJ