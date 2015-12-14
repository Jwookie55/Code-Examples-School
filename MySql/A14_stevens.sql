/* Jared Stevens */

\W    /* enable warnings! */

use  a_testbed;

/*  TASK 00 */ 
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */

select id, extractValue(an_data, '//cl_name') as "Client"
, extractValue(an_data, 'client/@cl_id') as "Client ID"
from xml_A14_animals
order by extractValue(an_data, '//client/@cl_id');

/*  TASK 02 */

select id, extractValue(an_data, '//an_id') as "Animal ID"
, extractValue(an_data, '//an_type') as "Type Of Animal"
, extractValue(an_data, '//an_name') as "Name"
, extractValue(an_data, '//an_price') as "Price"
from xml_A14_animals
order by extractValue(an_data, '//an_id');

/*  TASK 03 */

select extractValue(an_data, '//cl_name') as "Client Name"
, extractValue(an_data, 'client/@cl_id') as "Client ID"
from xml_A14_animals
where extractValue(an_data, 'count(//animal[an_type = "cat"])') > 0;

/*  TASK 04 */

select extractValue(an_data, '//cl_name') as "Client Name"
, extractValue(an_data, 'client/@cl_id') as "Client ID"
, extractValue(an_data, 'count(//an_id)') as "Number Of Animals"
from xml_A14_animals
order by extractValue(an_data, 'count(//an_id)') desc;

/*  TASK 05 */

select extractValue(an_data, '//cl_name') as "Client Name"
, extractValue(an_data, 'client/@cl_id') as "Client ID"
, case when extractValue(an_data, '//animal[1]/an_type') = '' then 'This client has no animals' 
else concat(extractValue(an_data, '//animal[1]/an_type') , " named " , extractValue(an_data, '//animal[1]/an_name')) end as "Animal First"
from xml_A14_animals;

/*  TASK 06 */

select extractValue(an_data, '//cl_name') as "Client Name"
, extractValue(an_data, 'client/@cl_id') as "Client ID"
, case when extractValue(an_data, 'count(//animal[1]/an_name[last()])') > 0 then concat(extractValue(an_data, '//animal[1]/an_type') , " named " , extractValue(an_data, '//animal[1]/an_name[last()]')) else concat(extractValue(an_data, '//animal[1]/an_type') , " named " , extractValue(an_data, '//animal[1]/an_name')) end as "Animal First"
from xml_A14_animals
where extractValue(an_data, '//an_id') > 0;

/*  TASK 07 */

select extractValue(an_data, '//cl_name') as "Client Name"
, extractValue(an_data, 'client/@cl_id') as "Client ID"
from xml_A14_animals
where extractValue(an_data, '//animal[2]/an_id') >0
and extractValue(an_data, '//animal[4]/an_id') = 0;

/*  TASK 08 */

select extractValue(an_data, '//cl_name') as "Client Name"
, extractValue(an_data, 'client/@cl_id') as "Client ID"
from xml_A14_animals
where extractValue(an_data, 'count(//animal[an_type = "bird"])') > 0
and extractValue(an_data, '//animal[an_type = "bird"]/an_price') = 250;

/*  TASK 09 */

select extractValue(an_data, '//cl_name') as "Client Name"
, extractValue(an_data, 'client/@cl_id') as "Client ID"
from xml_A14_animals
where extractValue(an_data, 'count(//animal[an_type = "bird"])') > 0
and extractValue(an_data, '//animal[an_type = "bird"]/an_price') = 250
and extractValue(an_data, 'count(//animal[an_type="cat"])') > 1;

/*  TASK 10 */
