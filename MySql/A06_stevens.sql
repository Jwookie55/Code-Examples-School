/* Jared Stevens */

\W    /* enable warnings! */

use   a_vets;

/*  TASK 00 */ 
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */

select cl.cl_id
, cl.cl_name_last as 'Last name'
from a_vets.vt_clients cl
left join a_vets.vt_animals an on cl.cl_id = an.cl_id
where an.an_id is null;

/*  TASK 02 */

select cl_id
, cl_name_last as 'Cust name'
from a_vets.vt_clients
where cl_id not in
(
	select cl_id
	from a_vets.vt_animals
);

/*  TASK 03 */

select cl_id
, cl_name_last as 'Cust name'
from a_vets.vt_clients
where cl_id not in
(
	select cl_id
	from a_vets.vt_animals
	where an_type in ( 'snake', 'chelonian', 'crocodilian', 'lizard')
);

/*  TASK 04 */

select cl.cl_id
, cl.cl_name_last as 'Cust name'
, case an.an_type
when an.an_type then (coalesce(an.an_name, 'No name'))
else coalesce(an.an_name, 'No animals')
end as 'An name'
, coalesce(an.an_type, 'No animals') as 'An type'
from a_vets.vt_clients cl
left join a_vets.vt_animals an on cl.cl_id = an.cl_id;

/*  TASK 05 */

select an.cl_id
, cl.cl_name_last
, an.an_id
, an.an_name
, an.an_type
from a_vets.vt_clients cl
right join a_vets.vt_animals an on cl.cl_id = an.cl_id
left join a_vets.vt_exam_headers eh on an.an_id = eh.an_id
where eh.an_id is null
order by cl_id, an_id;

/*  TASK 06 */

select coalesce(an.cl_id, "No ID") as cl_id
, cl.cl_name_last as "Cust name"
, coalesce(an.an_id, 'No animals') as 'An ID'
, coalesce(if(an.an_name = 0, an.an_name, if(an.an_type = 0,'No name', 'No animals'))) as 'An name'
, coalesce(an.an_type, 'No animals') as 'An type'
from a_vets.vt_clients cl
left join a_vets.vt_animals an on cl.cl_id = an.cl_id
left join a_vets.vt_exam_headers eh on an.an_id = eh.an_id
where eh.an_id is null
or an.cl_id is null
order by an.cl_id, an.an_id;

/*  TASK 07 */

select cl.cl_id
, cl.cl_name_last
, an.an_id
, an.an_name
, an.an_dob
from a_vets.vt_clients cl
join a_vets.vt_animals an using(cl_id)
where an.an_type not in ('dog', 'cat', 'bird')
and cl.cl_state not in ('ny', 'ma');

/*  TASK 08 */

select an_id
, an_name
from a_vets.vt_animals an
join a_vets.vt_exam_headers using(an_id)
where (date_format(ex_date, '%Y')) = (date_format(curdate(), '%Y'));

/*  TASK 09 */

select srv_id
, srv_list_price as 'Price$'
, srv_desc as 'Description'
, srv_type as 'Type'
from a_vets.vt_services
where srv_list_price >= 100
and srv_id not in
(
select srv_id
from a_vets.vt_exam_details
);


/*  TASK 10 */
