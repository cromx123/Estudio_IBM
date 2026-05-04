Select * from ibmuser.emp;


--- Ejercicio 1: Sum of Salaries
Select workdept, Sum(salary) as Sum_Salary from ibmuser.emp 
Group by workdept
order by workdept asc;


--- Ejercicio 2: Employee Number 
Select workdept, count(EMPNO) as EMP_COUNT from ibmuser.emp
Group by workdept
order by workdept asc;


--- Ejercicio 3: Filtering employee number
Select workdept, count(EMPNO) as EMP_COUNT from ibmuser.emp
Group by workdept
Having count(EMPNO) > 3
order by workdept asc;


--- Ejercicio 4: Acerages
Select workdept, Sex , DECIMAL(avg(salary), 10, 2) as AVG_SALARY, DECIMAL(avg(bonus), 10, 2) as AVG_BONUS, DECIMAL(avg(comm), 10, 2) as AVG_COMM, count(EMPNO) as COUNT from ibmuser.emp
Group by workdept, sex
Having count(EMPNO) >= 2 
order by workdept asc;


--- Ejercicio 5: High Averages
Select workdept, DECIMAL(AVG(Bonus), 10, 2) as AVG_BONUS, DECIMAL(AVG(Comm), 10, 2) as AVG_COMM from ibmuser.emp 
group by workdept
Having AVG(Bonus) > 500.00 and AVG(Comm) > 2000.00
order by workdept asc;