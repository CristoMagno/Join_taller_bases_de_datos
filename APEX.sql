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

/**/
