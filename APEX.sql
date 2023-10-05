/*
Inner join
Left join
Right join
Full join
*/
select * from crimes;
SELECT suspect_id, name, crime_id, crime_type,  committed_date, prison, start_date, end_date, behavior FROM suspects NATURAL JOIN crimes WHERE name = 'Kasper Good';

SELECT suspect_id, name, crime_id, crime_type,  committed_date, prison, start_date, end_date, behavior FROM suspects s right join crimes c on WHERE name = 'Kasper Good';
/*
Natural
Inner
Right
Left
Full
*/
select * from suspects where suspect_id = 338;





SELECT name, crime_id, crime_type, committed_date, prison, start_date, end_date, behavior FROM suspects NATURAL JOIN crimes WHERE suspect_id = 338;


SELECT suspect_id FROM suspects  WHERE name = 'Hilary Mayer' AND hair_color = 'Red'  AND eye_color= 'Blue' AND feet_size= 'Small' AND tattoos = 'Yes' AND age BETWEEN 35 AND 40;



SELECT name, crime_id, crime_type, committed_date, prison, start_date, end_date, behavior FROM suspects NATURAL JOIN crimes WHERE suspect_id = 100;


SELECT crime_id, crime_type, committed_date, prison, start_date, end_date, behavior FROM suspects NATURAL JOIN crimes WHERE suspect_id = 100 ORDER BY committed_date;

SELECT crime_id, crime_type, committed_date, prison, start_date, end_date, behavior FROM suspects NATURAL JOIN crimes WHERE suspect_id = 100 ORDER BY committed_date DESC;


/*nuevas consultas*/
Select suspect_id, name, crime_id, crime_type, committed_date, prison, start_date, end_date, behavior from suspects NATURAL join crimes WHERE name = 'Kasper Good';
Select name crime_id, crime_type, committed_date, prison, start_date, end_date, behavior from suspects NATURAL JOIN crimes where suspect_id = 338;
Select name, crime_id, crime_type, committed_date, prison, start_date, end_date, behavior from suspects NATURAL JOIN crimes WHERE suspect_id = 100;
Select crime_id, crime_type, committed_date, prison, start_date, end_date, behavior from suspects NATURAL JOIN crimes WHERE suspect_id = 100 ORDER BY committed_date;

Select crime_id, crime_type, committed_date, prison, start_date, end_date, behavior from suspects NATURAL JOIN crimes WHERE suspect_id = 100 ORDER BY committed_date desc;
Select name, crime_id, crime_type, committed_date, prison, start_date, end_date, behavior from suspects NATURAL JOIN crimes WHERE suspect_id = 338 ORDER BY end_date desc;
Select name, hair_color, eye_color, crime_type, prison, start_date, end_date, behavior from suspects NATURAL join crimes WHERE suspect_id = 20 ORDER BY committed_date;

Select name, prison, crime_type from suspects NATURAL JOIN crimes WHERE suspect_id = 59 ORDER BY crime_type;
Select name, suspect_id, crime_type, committed_date FROM suspects NATURAL JOIN crimes WHERE sex = 'Female' AND hair_color = 'Red' AND glasses = 'Yes' AND scars = 'No' AND feet_size = 'Small' AND crime_type = 'Car Theft' ORDER BY committed_date DESC;
Select name, crime_type, COUNT(crime_type) from suspects NATURAL join crimes where suspect_id = 400 and crime_type = 'Car Theft' GROUP BY name, crime_type;
Select * from suspects natural JOIN crimes where sex = 'Male' and hair_color = 'Blonde' and scars = 'Yes' and glasses = 'Yes' and facial_hair = 'No' and tattoos = 'Yes' ORDER BY crime_type;
Select name, crime_type, COUNT(crime_type) from suspects natural join crimes where sex = 'Male' and hair_color = 'Blonde' and scars = 'Yes' and glasses = 'Yes' and facial_hair = 'No' and tattoos = 'Yes' GROUP BY name, crime_type ORDER BY COUNT(crime_type) DESC;

/*03/10/2023*/
--1
select dep_nom from carga_f where eci = (select ci from empleado where nombre = 'Humberto' and apellido='Pons');
--2
select ci, nombre, apellido from empleado where dno = (select dnumero from departamento where dnombre = 'Investigacion');
select ci, nombre, apellido from empleado where dno = (select dnumero from departamento where dnombre = 'Compras');
select ci, nombre, apellido from empleado where dno = (select dnumero from departamento where dnombre = 'Adminstrativo');
--3
select ci, nombre, apellido from empleado where ci in (s)
--4
select ci, nombre, apellido from empleado where ci not in (select eci from carga_f where year(fecha_n)between '1980' and '1990');
--agregar para que muetre con año

--5
select nombre, apellido, dno from empleado where EXISTS(select * from departamento where dnumero = '4' and dno = dnumero);
--6
select nombre, apellido, dno from empleado where not EXISTS (select * from departamento where dnumero = '4' and dno = dnumero);
--7
select dnombre from departamento where dnumero = any (select dno from empleado where salario = '2500');
select dnombre from departamento where dnumero = some (select dno from empleado where salario = '2500');

--8
update empleado set salario = 10000 where nombre = 'Irma';
select e.nombre , e.apellido from empleado e where  e.salario > ALL (select s.salario from empleado s, empleado e where e.superci = s.ci and e.superci is not null);
select e.nombre , e.apellido, e.salario from empleado e where  e.salario > any (select s.salario from empleado s, empleado e where e.superci = s.ci and e.superci is not null);
select e.nombre , e.apellido, e.salario from empleado e where  e.salario > some (select s.salario from empleado s, empleado e where e.superci = s.ci and e.superci is not null);

--9 subconsultas anidadas
select nombre, apellido from empleado where ci in (select  eci from trabaja_en where  pno in (select pnumero from proyecto where pnombre = 'Beneficios'));
listar las cargas familiares de la empleada elena tapia
listar los empleados que trabajan en el departamento administrativo
listar los proyectos en los que los empleados tengan cargas familiares de sexo femenino
listar todos los departamentos en los cuales todos sus empleados ganan entre 2500 y 4300 dolares
listar todos los empleados que no tengan cargas familiares
listar todos los proyectos que pertenecen al departamento de compras
listar los empleados que trabajan en el productoz
listar el nombre de los empleados que pertenezcan a mas de un proyecto
listar todos los proyectos que pertenecen al departamento ubicado en Quito
listar todos los empleados y sus respectivas cargas siempre y cuando hayan nacido en el mismo mes
listar el nombre del departamento que tiene a mas de tres empleados
listar el departamento  con el mayor salario
--10

--11

--12

--13

--14

--15

--16

--17

--18

--19

--20

--21

--22

--23

--24

--25

--26

--27

--28

--29

--30

--31

--32
