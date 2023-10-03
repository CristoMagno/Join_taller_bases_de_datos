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

Select suspect_id, name, crime_id, crime_type, committed_date, prison, start_date, end_date, behavior from suspects NATURAL join crimes WHERE name = 'Kasper Good';
Select name crime_id, crime_type, committed_date, prison, start_date, end_date, behavior from suspects NATURAL JOIN crimes where suspect_id = 338;
Select name, crime_id, crime_type, committed_date, prison, start_date, end_date, behavior from suspects NATURAL JOIN crimes WHERE suspect_id = 100;
Select crime_id, crime_type, committed_date, prison, start_date, end_date, behavior from suspects NATURAL JOIN crimes WHERE suspect_id = 100 ORDER BY committed_date;
