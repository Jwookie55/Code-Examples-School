/* Jared Stevens */

\W    /* enable warnings! */

use a_testbed;

/*  TASK 00 */ 

select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */

delete 
from a_testbed.zoo_2015
where z_id > 100
;

select * 
from zoo_2015
;

/*  TASK 02 */

insert into zoo_2015 values
(
	101
	, 'John'
	, 'Zebra'
	, 3500.00
	, '2014-01-21 09:30:00'
	, '2014-03-05'
),
(
	102
	, 'Jacob'
	, 'Rhino'
	, 6750.00
	, '2012-03-12 23:59:00'
	, ' 2013-05-17'
),
(
	103
	, 'JingleHeimer'
	, 'Camel'
	, 1200.00
	, '2003-01-19 12:45:00'
	, '2003-02-10'
);

/*  TASK 03 */

insert into a_testbed.zoo_2015 values

(
104,
'Abe',
'Armadillo',
490.00,
'2015-8-18 22:21:00',
'2015-8-18'
),
(
105,
'Brandon',
'Giraffe',
4900.00,
'2015-8-18 22:22:00',
'2015-8-18'
),
(
106,
'Chuck',
'Horse',
490.00,
'2015-8-18 22:23:00',
'2015-8-18'
);

Insert Into zoo_2015 values
(101
, 'George'
, 'Giraffe'
, 1000.00
, '2000-01-02 00:00:00'
, '2000-03-04'
),
(102
, 'Geoffrey'
, 'Giraffe'
, 1000.00
, '2000-05-06 00:00:01'
, '2000-07-08'
),
(103
, 'Geordon'
, 'Giraffe'
, 1000.00
, '2000-09-10 00:00:02'
, '2000-11-12'
);



/*  TASK 04 */

select 
	z_id
	, z_name
	, z_type
	, z_cost
	, z_dob
	, z_acquired
	from zoo_2015;

/*  TASK 05 */

select 
	z_type
	, z_name
	, z_cost
	from zoo_2015
	order by z_type, z_name;

/*  TASK 06 */

select	
	z_id
	, z_name as "Name"
	, z_dob as "Birthdate"
	from zoo_2015
	order by z_dob;

/*  TASK 07 */

show tables;

/*  TASK 08 */

desc a_testbed.zoo_2015;

/*  TASK 09 */

show variables like 'char%';