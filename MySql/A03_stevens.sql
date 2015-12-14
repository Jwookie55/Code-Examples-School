/* Jared Stevens */

\W    /* enable warnings! */

use   a_vets;

/*  TASK 00 */ 

select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */

select 
	concat(cl_postal_code, ': ', cl_city, ' ', cl_state) as Location
	from a_vets.vt_clients
	where cl_state in ('ca', 'nv' );

/*  TASK 02 */

select 
	cl_name_first,
	cl_name_last,
	cl_phone
	from a_vets.vt_clients
	where cl_phone is not null
	order by cl_id;

/*  TASK 03 */

select
	distinct srv_id
	from a_vets.vt_exam_details
	where ex_fee > 50;
	

/*  TASK 04 */

select 
	stf_name_first,
	stf_name_last,
	stf_id
	from a_vets.vt_staff
	where stf_job_title not in ('vet', 'vet assnt');

/*  TASK 05 */

select 
	srv_id as"ID",
	srv_type as "Service Type",
	srv_desc as "Description",
	srv_list_price as "Curr Price",
	srv_list_price * 1.15 as "Incr Price"
	from a_vets.vt_services
	where srv_type != 'office visit'
	order by srv_id;

/*  TASK 06 */

select
	cl_id,
	an_id,
	an_name
	from a_vets.vt_animals
	where an_type in ('dormouse', 'hamster', 'hedgehog', 'porcupine', 'olinguito' )
	order by cl_id, an_id;

/*  TASK 07 */

select	
	distinct cl_id,
	an_type
	from a_vets.vt_animals
	where an_type in ('lizard', 'chelonian', 'snake')
	order by cl_id;

/*  TASK 08 */

select
	cl_id,
	an_id,
	an_name,
	an_dob
	from a_vets.vt_animals
	where an_type not in ('dormouse', 'hamster', 'hedgehog', 'porcupine', 'olinguito',
	'lizard', 'chelonian', 'snake' )
	order by an_dob desc;
	
/*  TASK 09 */



/*  TASK 10 */
