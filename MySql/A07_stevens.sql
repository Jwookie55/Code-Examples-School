/* Jared Stevens */

\W    /* enable warnings! */

use   a_vets;

/*  TASK 00 */ 
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */

select cl.cl_id
, cl.cl_name_last
, an.an_id
, an.an_type
, an.an_name
from a_vets.vt_clients cl
left join a_vets.vt_animals an using(cl_id);

/*  TASK 02 */

select an.an_id
, an.an_type
, an.an_name
, eh.ex_id
, date_format(eh.ex_date, '%Y') as ex_date
, ed.srv_id
from a_vets.vt_animals an
left join a_vets.vt_exam_headers eh using (an_id)
left join a_vets.vt_exam_details ed using (ex_id);

/*  TASK 03 */

select cl_id
, cl_name_last
from a_vets.vt_clients
where cl_id in (
	select cl_id
	from a_vets.vt_animals
	where an_type not in('snake', 'chelonian', 'crocodilian', 'lizard')
);

/*  TASK 04 */

select cl_id
, cl_name_last
from a_vets.vt_clients
where cl_id in (
	select cl_id
	from a_vets.vt_animals
	where an_type in('snake', 'chelonian', 'crocodilian', 'lizard')
) and cl_id in (
	select cl_id
	from a_vets.vt_animals
	where an_type in ('bird')
);

/*  TASK 05 */

select cl_id
, cl_name_last
from a_vets.vt_clients
where cl_id not in (
	select cl_id
	from a_vets.vt_animals
	where an_type in('snake', 'chelonian', 'crocodilian', 'lizard')
) and cl_id in (
	select cl_id
	from a_vets.vt_animals
	where an_type in ('bird')
);

/*  TASK 06 */

select an_id
, an_name
from a_vets.vt_animals
where an_id not in (
	select an_id 
	from a_vets.vt_exam_headers
	where ex_id in (
		select ex_id
		from a_vets.vt_exam_details
		where srv_id in ('104','105','106','108')
	)
);

/*  TASK 07 */

select an_id
, an_name
, an_type
, cl_id
from a_vets.vt_animals
where an_id in (
	select an_id
	from a_vets.vt_exam_headers
	where date_format(ex_date, '%Y') in ('2014')
) and an_id in (
	select an_id
	from a_vets.vt_exam_headers
	where date_format(ex_date, '%Y') in ('2015')
);

/*  TASK 08 */

select an_id
, an_name
, an_type
, cl_id
from a_vets.vt_animals
where an_id in (
	select an_id
	from a_vets.vt_exam_headers
	where date_format(ex_date, '%Y') in (year(curdate())-1)
) and an_id not in (
	select an_id
	from a_vets.vt_exam_headers
	where date_format(ex_date, '%Y') in (date_format(curdate(), '%Y'))
) and an_type in ('snake', 'chelonian', 'crocodilian', 'lizard');

/*  TASK 09 */

select an_id
, an_name
, cl_id
from a_vets.vt_animals
where an_id in (
	select an_id
	from a_Vets.vt_exam_headers
	where ex_id in (
		select ex_id
		from a_vets.vt_exam_details
		where srv_id in ('603')
	) and ex_id in (
		select ex_id
		from a_vets.vt_exam_details
		where srv_id in ('606', '607')
	)
);

/*  TASK 10 */

select ex_id
, an_id
, stf_id
from a_vets.vt_exam_headers
where year(ex_date) = '2015'
and stf_id in ('29', '38');
