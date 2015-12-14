/* Jared Stevens */

\W    /* enable warnings! */

use   a_vets;

/*  TASK 00 */ 
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */

select count(eh.ex_id) as "Number of Exams"
, sum(ed.ex_fee) as "Total Fees"
from a_vets.vt_exam_headers eh
join a_vets.vt_exam_details ed using(ex_id)
where an_id in (16003, 21205)
group by an_id;

/*  TASK 02 */

select count(eh.ex_id) as "Number Of Exams"
from a_vets.vt_exam_headers eh 
left join a_vets.vt_animals an using(an_id)
where an_type in('dormouse', 'hamster', 'hedgehog', 'porcupine', 'olinguito' )
and year(ex_date) = (year(current_date)-1) ;

/*  TASK 03 */

select cl.cl_id as "Client ID"
, cl.cl_name_last as "Client Name"
, count(an_id) as "Number of Animals"
, count(case when an_type in('dormouse', 'hamster', 'hedgehog', 'porcupine', 'olinguito' ) 
then 1 else null end) as "Number of Rodents"
from a_vets.vt_clients cl
left join a_vets.vt_animals an using(cl_id)
group by cl_id;

/*  TASK 04 */

select
count(ex_id) as "Number of Exams"
, count(distinct an_id) as "Number of animals with Exams"
from a_vets.vt_exam_headers;

/*  TASK 05 */

select cl_id
, cl_name_last
from a_vets.vt_clients
where cl_id = (
select cl_id
from (select cl_id
, max(total)
from (
select cl_id
, sum(ex_fee) as "total"
from a_vets.vt_animals an
left join a_vets.vt_exam_headers eh using(an_id)
left join a_vets.vt_exam_details ed using(ex_id)
group by cl_id)total
)HighId);

/*  TASK 06 */

select
sum(case when an_type = 'cat' then 1 else null end) as "Cats"
,sum(case when an_type = 'dog' then 1 else null end) as "Dogs"
,sum(case when an_type in ('dormouse', 'hamster', 'hedgehog', 'porcupine', 'olinguito' ) then 1 else null end) as "rodents"
,sum(case when an_type in ('lizard', 'chelonian', 'snake', 'bird') then 1 else null end) as "Reptiles"
,count(an_id) as "All Animals"
from a_vets.vt_animals;
 

/*  TASK 07 */

select cl_id
, cl_name_last
from a_vets.vt_clients
where cl_id in (
	select cl_id 
	from (
	select cl_id
	, sum(case when an_id then 1 else 0 end) as "NumAn"
	from a_vets.vt_clients cl
	left join a_vets.vt_animals an using(cl_id)
	group by cl_id)total
	where NumAn = 1); 

/*  TASK 08 */

select an.an_id as "Animal ID"
, an.an_type
, an.an_name
, coalesce(max(ex_date), "No Exams") as "Most Recent Exam"
from a_vets.vt_animals an
left join a_vets.vt_exam_headers eh using(an_id)
group by an_id;

/*  TASK 09 */
select an.an_id
, an.an_type
, an.an_name
, an.cl_id
, cl.cl_phone
from a_vets.vt_animals an
left join a_vets.vt_clients cl using(cl_id)
where an_id in(
select an_id 
from(
select an_id
from a_vets.vt_exam_details
right join a_vets.vt_exam_headers using(ex_id)
where ex_fee > 150
and year(ex_date) not in (year(current_date)))fee);

/*  TASK 10 */
 