select * from ibmuser.emp; 
select * from ibmuser.dept;
select * from ibmuser.proj;
--- Ejercicio 1: The pay raise 
Select lastname, firstnme, 'Before a raise' as WHEN,salary from ibmuser.emp 
where job <> 'MANAGER' and  workdept = 'D21'
Union all 
Select lastname, firstnme, 'After a raise' as WHEN,salary * 1.1 from ibmuser.emp 
where job <> 'MANAGER' and  workdept = 'D21'
order by lastname, firstnme, WHEN desc;


--- Ejercicio 2: The additional Row
Select workdept, empno, salary from ibmuser.emp 
where workdept = 'A00'
Union all
Select workdept, 'SUM' as empno, sum(salary) from ibmuser.emp 
where workdept = 'A00'
group by workdept
order by workdept, empno;

--- Ejercicio 3: The multi query Report
select '1' as Type, DEPTNO, 'DEPARTMENT' as INFO, Deptname as NAME from ibmuser.dept 
where deptno = 'A00' or deptno = 'B01' or deptno = 'C01'
UNION ALL
Select '2' as Type, DEPTNO, projno as INFO, projname as NAME from ibmuser.proj 
where deptno = 'A00' or deptno = 'B01' or deptno = 'C01' 
Union all
Select '3' as Type, workdept as DEPTNO, empno as INFO, lastname from ibmuser.emp 
where workdept = 'A00' or workdept = 'B01' or workdept = 'C01'
order by DEPTNO, Type asc, INFO asc;


--- Ejecicio 4: The Project Timelines
Select 'PROJECT', projno, respemp, prstdate, prendate from ibmuser.proj
where projno like 'IF%'
Union all
Select ' ', projno, empno as respemp, emstdate as prstdate,emendate as prendate from ibmuser.empprojact
where projno like 'IF%'
order by projno, 1 desc, respemp, prstdate;
