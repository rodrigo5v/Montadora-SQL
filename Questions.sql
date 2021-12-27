/*What is the list of all the components used 
for each of the packages of all the cars?*/

SELECT p.line as package, c.name as component
FROM package p
JOIN package_assembly asb
ON p.id = asb.line_id
JOIN component c
ON asb.component_id = c.id;

/*
For a specific package, what is the list of 
all registered components and sub-components?
*/

SELECT c.name AS component, sub.name AS subcomponent
FROM package p
JOIN package_assembly asb
ON p.id = asb.line_id
JOIN component c
ON asb.component_id = c.id
JOIN component_assembly csb
ON csb.component_id = c.id
JOIN sub_component sub
ON csb.sub_id = sub.id
WHERE p.id = 3;

/*
How many sub components are needed to assemble 3 
components? And what would be the remaining stock 
of subcomponents? 
*/

SELECT sub.name AS subcomponent, 
	csb.qty*3 AS sub_needed,
	sub.qty - csb.qty*3 AS remaining_stock
FROM component c
JOIN component_assembly csb
ON csb.component_id = c.id
JOIN sub_component sub
ON csb.sub_id = sub.id;

/*
What is the oldest car model?
*/

SELECT model,year_model
FROM car
ORDER BY year_model
LIMIT 1;

/*
What is the difference between years from 
the older model to the recent?
*/

SELECT DATE_PART('year',MAX(year_model)) - DATE_PART('year',MIN(year_model)) AS difference_years
FROM car;

/*
Check if the assembler can make 10 sports 
cars and 3 confort cars.
*/
