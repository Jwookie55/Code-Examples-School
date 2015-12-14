/* Jared Stevens */

\W    /* enable warnings! */

use   a_bkorders;

/*  TASK 00 */ 
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */

select distinct book_id as "Book ID"
, title as "Book Title SQL or DB"
from a_bkinfo.books
where book_id in(
	select book_id
	from a_bkorders.order_details
) and book_id in(
	select book_id
	from a_bkinfo.book_topics
	where topic_id in('DB', 'SQL')
) order by book_id;

/*  TASK 02 */

select distinct book_id as "Book ID"
, title as "Book Title SQL & DB"
from a_bkinfo.books
where book_id in(
	select book_id
	from a_bkorders.order_details
) and book_id in(
	select book_id
	from a_bkinfo.book_topics
	where topic_id in('DB')
	and book_id in(
		select book_id
		from a_bkinfo.book_topics
		where topic_id in('SQL')
	)
) order by book_id;

/*  TASK 03 */

select distinct book_id as "Book ID"
, title as "Book Title SQL only"
from a_bkinfo.books
where book_id in(
	select book_id
	from a_bkorders.order_details
) and book_id in(
	select book_id
	from a_bkinfo.book_topics
	where topic_id not in('DB')
	and book_id in(
		select book_id
		from a_bkinfo.book_topics
		where topic_id in('SQL')
	)
) order by book_id;

/*  TASK 04 */

select book_id as "Book ID"
, title as "Book Title"
, year_publd as "Year Published"
from a_bkinfo.books
where book_id in (
	select book_id
	from(
		select book_id
		, sum(order_price * quantity) as "Total"
			from a_bkorders.order_details
			group by book_id
			order by Total desc limit 1)total 
	); 

/*  TASK 05 */

select cust_id as "Cust ID"
, cust_name_last as "Last Name"
from a_bkorders.customers
where cust_id in(
	select cust_id
		from a_bkorders.order_headers
		where order_id in(
			select order_id
			from a_bkorders.order_details
			where book_id in(
				select book_id
				from a_bkinfo.book_topics
				where topic_id in('ART')))
		and year(order_date) = year(current_date)
);

select cust_id as "Cust ID"
, cust_name_last as "Last Name"
from a_bkorders.customers
where cust_id in(
	select cust_id
		from a_bkorders.order_headers
		where order_id in(
			select order_id
			from a_bkorders.order_details
			where book_id in(
				select book_id
				from a_bkinfo.book_topics
				where topic_id in('HIST')))
		and year(order_date) = year(current_date)
);

/*  TASK 06 */

select book_id as "Book ID"
, title as "Book Title"
from a_bkinfo.books
where book_id in(
	select book_id
	from (select book_id
		, sum(quantity) as "Quantity"
		from a_bkorders.order_details
		group by book_id)totquan
	where Quantity > 500
);

/*  TASK 07 */

select dates as "Fewest orders"
from(
	select min(counted) as "small"
	, dates
	from(
		select count(order_id) as "counted"
		, date_format(order_date, '%M %Y') as "Dates"
		from a_bkorders.order_headers
		group by date_format(order_date, '%m %y')
		order by counted)counts
)las;

/*  TASK 08 */

select dates as "Fewest orders"
from(
	select (counted)  
	, dates
	from(
		select count(order_id) as "counted"
		, date_format(order_date, '%M %Y') as "Dates"
		from a_bkorders.order_headers
		group by date_format(order_date, '%m %y')
		order by counted desc)counts
	limit 1
)las;

/*  TASK 09 */


/*  TASK 10 */
