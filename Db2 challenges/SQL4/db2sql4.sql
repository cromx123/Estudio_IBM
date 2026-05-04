select * from ibmuser.emp;
select * from ibmuser.proj;
select * from SYSIBM.SYSDUMMY1;


--- Ejercicio 1: Salary Increases
Select lastname, salary, salary * 1.05 as INC_Y_salary, Decimal((salary * 1.05)/12, 10, 2) as INC_M_salary from ibmuser.emp
where salary <= 20000
order by lastname desc;


--- Ejercicio 2: Compensarion Adjustment
Select lastname, edlevel, salary + 1200 as New_Salary, DECIMAL((bonus/2), 10, 2) as New_Bonus from ibmuser.emp
where edlevel = 18 or edlevel = 20
order by edlevel desc, salary desc;

---Ejercicio 3: Targeted Decrease
Select workdept, lastname, salary, salary - 1000 as Decr_salary from ibmuser.emp
where workdept = 'D11' and salary between 20000 * 0.80 and 20000 * 1.20
order by salary asc;

--- Ejercicio 4: Total Income Analysis
Select workdept, lastname, (Salary + Bonus + COMM) as income from ibmuser.emp
where workdept = 'D11' and (Salary + Bonus + COMM) > Salary * 1.10
order by income desc;

--- Ejercicio 5: Handling Null With COALESCE
Select Projno, Coalesce(MAJPROJ, 'Main project') as Major_PROJECT from ibmuser.proj
where Projno like 'MA%'
order by Projno desc; 


--- Ejercicio 6: Extracting date parts
Select YEAR(PRSTDATE), MONTH(PRSTDATE), PROJNO FROM ibmuser.proj
where PRENDATE = '1982-12-01'
order by PROJNO asc;


--- Ejercicio 7: Complex Date Calculation
Select Projno, Decimal(Round((Days(PRENDATE) - Days(PRSTDATE))/7.0 , 1 ), 5, 1) as week from ibmuser.proj
where projno like 'MA%'
order by projno desc;

--- Ejercicio 8: The moon Landing 
Select Days('2000-01-01') - Days('1969-07-20') as DAYS from SYSIBM.SYSDUMMY1;