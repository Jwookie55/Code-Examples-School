/* Jared Stevens */

\W    /* enable warnings! */

use   a_testbed;
	  delimiter #

/*  TASK 00 */ 
select user(), current_date(), version(), @@sql_mode\G

/* FUNCTION 1 */

Drop function if exists a_testbed.booksize#

create function a_testbed.bookSize(
	size_in   int)
	returns varchar(75)
begin
	declare v_length varchar(75);
	if(size_in between 1 and 200) then set v_length := "Short";
	elseif(size_in between 201 and 500) then set v_length := "Medium";
	elseif(size_in between 501 and 1200) then set v_length := "Long";
	elseif(size_in between 1201 and 4000) then set v_length := "Extra Long";
	elseif(size_in > 4000) then set v_length := "Super Long";
	elseif(size_in <= 0) then set v_length := "Input value must be a strictly positive value";
	elseif(size_in is null) then set v_length := "Input value is missing";
	end if;
	return v_length;
end;
#

/* FUNCTION 2 */

Drop function if exists a_testbed.PrevMonth#

create function a_testbed.PrevMonth(
	in_date date
	, in_mn_adjust int)
	returns varchar(75)
begin
	declare v_adjust date; 
	declare v_useDate date;
	if(in_date is null) then set v_adjust := date_sub(current_date(), interval in_mn_adjust month);
	else set v_adjust := date_sub(in_date, interval in_mn_adjust month);
	end if;
	if(in_mn_adjust < 0) then set v_adjust := null;
	end if;
	return date_format(v_adjust, '%Y-%m');
end;
#
	

/*  TASK 01 */

select testrun, pagecount, actual, expected
from(
	select testrun, pagecount, a_testbed.booksize(pagecount) as actual, expected
	from(
		select 1 as testrun, null as pagecount, "Input value missing" as expected union all
		select 2, 0, "Input value must be a strictly positive value" union all
		select 3, 200, "Short" union all
		select 4, 201, "Medium" union all
		select 5, 500, "Medium" union all
		select 6, 501, "Long" union all
		select 7, 1200, "Long" union all
		select 8, 1201, "Extra Long" union all
		select 9, 4000, "Extra Long" union all
		select 10, 4001, "Super Long" union all
		select 11, -150, "Input value must be a strictly positive value"
	)myTestData
)calcData
#

/*  TASK 02 */

select testrun, date_in, month_in, actual, expected
, case(strcmp(coalesce(actual, '1'), coalesce(expected, '1')))
	when 0 then 'PASS'
	else '**FAIL**'
	end as "Status"
from(
	select testrun, date_in, month_in, a_testbed.PrevMonth(date_in, month_in) as actual, expected
	from(
		select 1 as testrun, null as date_in, 0 as month_in, '2015-12' as expected union all
		select 2, '2015-12-01', null, null union all
		select 3,'2012-12-12', 10, '2012-02' union all
		select 4, '2012-12-12', 0, '2012-12' union all
		select 5, '2012-12-12', 14, '2011-10' union all
		select 6, '2012-12-12', -2, null union all
		select 7, '2012-12-12', 24, '2010-12'
	)myTestData
)calcData#

/*  TASK 03 */

select BookSize
, count(NumBooks) as "NumBooks"
from(
select a_testbed.BookSize(page_count) as "BookSize"
, 1 as "NumBooks"
from a_bkinfo.books
where page_count is not null
and page_count > 0
)tbl1
group by BookSize desc#


/*  TASK 04 */

select BookSize
, count(NumBooks) as "NumBooks"
from(
select a_testbed.BookSize(page_count) as "BookSize"
, 1 as "NumBooks"
from a_bkinfo.books
where page_count is not null
and page_count > 0
)tbl1
group by BookSize desc
union
select BookSize, 0
from(
	select 'Short' as BookSize union all
	select 'Medium' union all
	select 'Long' union all
	select 'Extra Long' union all
	select 'Super Long'
)tbl2 where BookSize not in(
	select bookSize
	from(
		select a_testbed.BookSize(page_count) as "BookSize"
		from a_bkinfo.books
	)tbl3
)#

/*  TASK 05 */

select count(order_id) as "Number of Orders"
, count(distinct cust_id) as "Number of Custumers With Orders"
from a_bkorders.order_headers
where date_format(order_date, '%Y-%m') in(a_testbed.PrevMonth(current_date(), 2), a_testbed.PrevMonth(current_date(), 1))#

/*  TASK 06 */


/*  TASK 07 */


/*  TASK 08 */


/*  TASK 09 */


/*  TASK 10 */
