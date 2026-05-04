Select * from ibmuser.emp;
Select * from ibmuser.dept;
Select * from ibmuser.proj;
Select * from ibmuser.empprojact;



--- Ejercicio 1: Lista el nombre y apellido de los empleados junto con el nombre del departamento al que pertenecen. Ordena el resultado por departamento, apellido y nombre.

Select lastname, firstnme, deptname from ibmuser.emp E, ibmuser.dept D
where E.workdept = D.deptno
order by deptname, lastname, firstnme;



--- Ejercicio 2: Lista el nombre y apellido de los empleados junto con el nombre del departamento al que pertenecen, pero solo para aquellos empleados que no son MANAGER y cuyo departamento se encuentra entre A02 y D22. Ordena el resultado por departamento, apellido y nombre.
Select lastname, firstnme, deptname, job from ibmuser.emp E, ibmuser.dept D
where E.workdept = D.deptno And E.job <>'MANAGER' and E.workdept between 'A02' and 'D22' 
order by deptname, lastname, firstnme;


--- Ejercicio 3: Lista el nombre y apellido de los empleados junto con el nombre del departamento al que pertenecen, pero solo para aquellos empleados que son MANAGER o cuyo departamento se encuentra entre A02 y D22. Ordena el resultado por departamento, apellido y nombre.
Select deptname, lastname, firstnme from ibmuser.emp E, ibmuser.dept D
where E.empno = D.mgrno
order by deptname, lastname, firstnme;


--- Ejercicio 4: Lista el nombre y apellido de los empleados junto con el nombre del departamento al que pertenecen, pero solo para aquellos empleados que son MANAGER y cuyo departamento se encuentra entre A02 y D22. Ordena el resultado por departamento, apellido y nombre.
Select deptname, lastname, firstnme from ibmuser.emp E, ibmuser.dept D
where E.workdept = D.deptno And E.job = 'MANAGER' 
order by deptname, lastname, firstnme;


--- Ejercicio 5: Lista el número de proyecto, el nombre del proyecto y el número de actividad para aquellos proyectos cuyo número de proyecto comienza con 'AD'. Ordena el resultado por número de proyecto y número de actividad.  
Select  E.Projno, P.projname, E.actno from ibmuser.empprojact E, ibmuser.proj P
where E.projno = P.projno and P.projno like 'AD%'
order by P.projno, E.actno;



--- Ejercicio 6: Lista el número de proyecto, el nombre del proyecto y el número de actividad para aquellos proyectos cuyo número de proyecto comienza con 'AD' o 'BD'. Ordena el resultado por número de proyecto y número de actividad.
Select E.Workdept, lastname, projname, actno from ibmuser.emp E, ibmuser.empprojact EP, ibmuser.proj P
where E.empno = EP.empno and EP.projno = P.projno and E.Workdept between 'A00' and 'C01'
order by E.Workdept, E.lastname, EP.actno;


--- Ejercicio 7: Lista el número de proyecto, el nombre del proyecto y el número de actividad para aquellos proyectos cuyo número de proyecto comienza con 'AD' o 'BD' y cuyo número de actividad es mayor que 10. Ordena el resultado por número de proyecto y número de actividad.
Select EP.actno, D.MGRNO, EP.emstdate, P.projno, E.lastname from ibmuser.emp E, ibmuser.empprojact EP, ibmuser.proj P, ibmuser.dept D
where E.empno = EP.empno and EP.projno = P.projno and E.Workdept = D.deptno  and EP.emstdate >= '1982-10-15'
order by EP.actno, EP.emstdate;