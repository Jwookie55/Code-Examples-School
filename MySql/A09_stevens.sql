/* Jared Stevens */

\W    /* enable warnings! */

use   a_bkorders;

/*  TASK 00 */ 

select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */

drop view if exists a_bkorders.BKOrdersPriorYear;

create view a_bkorders.BKOrdersPriorYear as (
	select cu.cust_id 
	,coalesce(concat(cu.cust_name_last, ',', cu.cust_name_first), 'No Name') as 'cust_name'
	,oh.order_date
	from a_bkorders.customers cu
	join a_bkorders.order_headers oh using(cust_id)
	where year(oh.order_date) = (year(current_date) - 1)
);

/*  TASK 02 */

select cust_id
, cust_name
from a_bkorders.BKOrdersPriorYear
where order_date in(
	select order_date
	from a_bkorders.order_headers
	where month(order_date) = 4
)
union
select cust_id
, cust_name
from a_bkorders.BKOrdersPriorYear
where order_date in(
	select order_date
	from a_bkorders.order_headers
	where month(order_date) = 6
)
union
select cust_id
, cust_name
from a_bkorders.BKOrdersPriorYear
where order_date in(
	select order_date
	from a_bkorders.order_headers
	where month(order_date) = 8
);

/*  TASK 03 */

select distinct cust_id
, cust_name
from a_bkorders.BKOrdersPriorYear
where order_date not in(
	select order_date
	from a_bkorders.order_headers
	where month(order_date) in (3, 6, 9)
);

/*  TASK 04 */

select distinct cust_id
, cust_name
from a_bkorders.BKOrdersPriorYear
where order_date in(
	select order_date
	from a_bkorders.order_headers
	where month(order_date) = 3
	and cust_id in (
		select cust_id
		from a_bkorders.order_headers
		where month(order_date) = 6
		and cust_id in (
			select cust_id
			from a_bkorders.order_headers
			where month(order_date) = 9
		)
	)
);

/*  TASK 05 */

select cust_id
, cust_name
from a_bkorders.BKOrdersPriorYear
where order_date in(
	select order_date
	from a_bkorders.order_headers
	where cust_id not in (
		select cust_id
		from a_bkorders.order_headers
		where month(order_date) in (2, 3)
	) and month(order_date) = 1
);

/*  TASK 06 */

select cust_id
, cust_name
from a_bkorders.BKOrdersPriorYear
where month(order_date) = 3
and cust_id in (
	select cust_id
	from a_bkorders.BKOrdersPriorYear
	where month(order_date) in (4, 5)
);

/*  TASK 07 */

select cust_id
, cust_name
from a_bkorders.BKOrdersPriorYear
where month(order_date) = 1
and( cust_id in (
	select cust_id
	from a_bkorders.BKOrdersPriorYear
	where month(order_date) = 2
	and cust_id not in (
		select cust_id
		from a_bkorders.BKOrdersPriorYear
		where month(order_Date) = 3
		)
	) 
	or cust_id in (
	select cust_id
	from a_bkorders.BKOrdersPriorYear
	where month(order_date) = 3
	and cust_id not in (
		select cust_id
		from a_bkorders.BKOrdersPriorYear
		where month(order_Date) = 2
		)
	)  
);

/*  TASK 08 */

select distinct cust_id
, cust_name
from a_bkorders.BKOrdersPriorYear
where month(order_date) != 6
and cust_id in (
	select cust_id
	from a_bkorders.BKOrdersPriorYear
	where month(order_date) in (4, 5)
);

/*  TASK 09 */


/*  TASK 10 */
