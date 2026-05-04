select * from ibmuser.emp;
select * from ibmuser.proj;
select * from SYSIBM.SYSDUMMY1;


--- Ejercicio 1: Salary Increases
Select lastname, salary, salary * 1.05 as INC_Y_salary, Decimal((salary * 1.05)/12, 10, 2) as INC_M_salary from ibmuser.emp
where salary <= 20000
order by lastname desc;


--- Ejercicio 2: Compensarion Adjustment
Select lastname, edlevel from ibmuser.emp
where edlevel = 18 or edlevel = 20;