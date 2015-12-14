/* Jared Stevens */

\W    /* enable warnings! */

use   a_vets;

/*  TASK 00 */ 
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */

select cl_id
, cl_name_last
, coalesce(cl_name_first, '')
, coalesce(cl_phone, "No phone number")
from a_vets.vt_clients;

/*  TASK 02 */

select 
concat(an_id, ": ", an_type, " Named ", coalesce(an_name, "no name")) as Animal
from a_vets.vt_animals;

/*  TASK 03 */

select cl_id
, concat(cl_name_last, ifnull(concat(", ", cl_name_first), "")) as "Client Name"
from a_vets.vt_clients;

/*  TASK 04 */

select srv_id
, format(srv_list_price, 2) as "List price"
, format(round(srv_list_price, -1), 2) as "Nearest $10"
, format(ceil(srv_list_price), 2) as "Top Dollar"
from a_vets.vt_services;

/*  TASK 05 */

select *
from a_vets.vt_services
where srv_desc RegExp 'Feline'
and srv_desc not regexp 'dental';

/*  TASK 06 */

select ex_id
, ex_date as "Examdate 1"
, cast(ex_date as date) as "Examdate 2"
, date_format(ex_date, '%Y-%m-%d') as "Examdate 3"
, date_format(ex_date, '%M %D %Y') as "Examdate 4"
from a_vets.vt_exam_headers;

/*  TASK 07 */

select eh.an_id
, an.an_name
from a_vets.vt_exam_headers eh
join a_vets.vt_animals an using(an_id)
where (date_format(ex_date, '%m') regexp '[1-6]')
and (date_format(ex_date, '%Y') regexp '2015');

/*  TASK 08 */

select an.an_id
, an.an_name
from a_vets.vt_animals an
join a_vets.vt_exam_headers eh using (an_id)
where (date_format(ex_date, '%Y') = date_format(current_date, '%Y'))
and date_format(ex_date, '%m') = ((date_format(current_date, '%m')) -1);

/*  TASK 09 */

select an.an_id
, an.an_name
, eh.ex_date
from a_vets.vt_animals an
join a_vets.vt_exam_headers eh using (an_id)
where (date_format(ex_date, '%d') regexp '30')
or (date_format(ex_date, '%d') regexp '31');

/*  TASK 10 */

set @ran_var = floor(rand() * 76) +75;

select @ran_var;

select ex_id as 'Exam ID'
, srv_id as 'Service ID'
, ex_fee as 'Fee Due'
from a_vets.vt_exam_details
where ex_fee > @ran_var;
