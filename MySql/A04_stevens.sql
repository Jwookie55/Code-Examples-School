/* Jared Stevens */

\W    /* enable warnings! */

use   a_vets;

/*  TASK 00 */ 

select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */

select
	an_id
	, an_type
	, an_name
	, an_dob
	, cl_id
	from a_vets.vt_animals
	where an_type in ('cat', 'dog')
	and an_dob <= '2009-12-31';
	
/*  TASK 02 */

select
	eh.ex_id
	, eh.ex_date
	, ed.srv_id
	, ed.ex_fee
	from a_vets.vt_exam_headers eh
	join a_vets.vt_exam_details ed on eh.ex_id = ed.ex_id 
	join a_vets.vt_animals an on an.an_id = eh.an_id
	where an_type in ('dormouse', 'hamster', 'hedgehog', 'porcupine', 'olinguito' )
	order by ex_id, srv_id;

/*  TASK 03 */

select
	st.stf_id
	, concat (st.stf_name_first, ' ' ,st.stf_name_last) as 'Staff'
	, eh.ex_date
	from a_vets.vt_staff st
	join a_vets.vt_exam_headers eh using ( stf_id)
	join a_vets.vt_animals an using ( an_id)
	where an_type not in ('lizard', 'chelonian', 'snake', 'bird')
	order by  ex_date;

/*  TASK 04 */

select
	an.cl_id
	, ed.ex_id
	, eh.ex_date
	, ed.srv_id
	, ed.ex_fee
	from a_vets.vt_animals an
	join a_vets.vt_exam_headers eh using ( an_id)
	join a_vets.vt_exam_details ed using ( ex_id)
	where ex_fee < 50 
	or ex_fee > 100
	order by ex_date, srv_id;

/*  TASK 05 */

select *
	from a_vets.vt_services
	where srv_desc like '%Feline%' 
	and srv_desc not like "%Dental%"
	order by srv_type, srv_id;

/*  TASK 06 */

select
	distinct cl.cl_id
	, cl_name_last as "Client"
	from a_vets.vt_clients cl
	join a_vets.vt_animals an on cl.cl_id = an.cl_id
	where an_type in ("dog")
	order by cl_id;

/*  TASK 07 */

select
	distinct cl.cl_id
	, cl_name_last as "Client"
	from a_vets.vt_clients cl
	join a_vets.vt_animals an on cl.cl_id = an.cl_id
	where an_type not in ("dog")
	order by cl_id;

/*  TASK 08 */

select
	distinct cl.cl_id
	, cl_name_last as "Client"
	from a_vets.vt_clients cl
	join a_vets.vt_animals an on cl.cl_id = an.cl_id
	where an_type in ('dormouse', 'hamster', 'hedgehog', 'porcupine', 'olinguito' )
	order by cl_id;
	
/*  TASK 09 */

select
	distinct cl.cl_id
	, cl_name_last as "Client"
	from a_vets.vt_clients cl
	join a_vets.vt_animals an on cl.cl_id = an.cl_id
	where an_type not in ('dormouse', 'hamster', 'hedgehog', 'porcupine', 'olinguito' )
	order by cl_id;

/*  TASK 10 */
