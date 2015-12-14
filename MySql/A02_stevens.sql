/* Jared Stevens */

\W    /* enable warnings! */

use   a_vets;

/*  TASK 00 */ 

select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */

select 
	stf_name_first
	,stf_name_last
	,stf_job_title
	from vt_staff;

/*  TASK 02 */

select
	an_id as 'ID',
	an_name as 'Name',
	an_type as 'Animal Type',
	an_dob as 'Birth Date'
	from vt_animals
	order by an_dob desc;

/*  TASK 03 */

select distinct	
	an_type
	from vt_animals;

/*  TASK 04 */

select
	srv_type,
	srv_desc
	from vt_services
	order by srv_type, srv_list_price;

/*  TASK 05 */

select
	ex_id as 'Exam_ID',
	srv_id as 'Service',
	ex_fee as 'Fee_Charged'
	from vt_exam_details;

/*  TASK 06 */

select distinct
	an_name,
	an_type,
	an_dob
	from vt_animals
	order by an_type, an_name;

/*  TASK 07 */

select
	an_id as'Animal',
	ex_date as 'Exam Date',
	stf_id as 'Staff'
	from vt_exam_headers
	order by stf_id, ex_date;

/*  TASK 08 */

select distinct
	cl_state,
	cl_city
	from vt_clients
	order by cl_state, cl_city;

/*  TASK 09 */



/*  TASK 10 */
