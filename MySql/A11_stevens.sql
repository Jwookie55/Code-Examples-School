/* Jared Stevens */

\W    /* enable warnings! */

use   a_bkorders;

/*  TASK 00 */ 
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */

select cust_id
, cust_name_last
, (select count(order_id)
	from a_bkorders.order_headers oh
	where oh.cust_id = cu.cust_id
	) as "Number of orders"
from a_bkorders.customers cu
where cust_state in( 'NJ', 'MA')
order by cust_id;
	


/*  TASK 02 */

select cust_id
, cust_name_last
from a_bkorders.customers
where exists(
	select 1
	from a_bkorders.order_headers
	where a_bkorders.customers.cust_id = a_bkorders.order_headers. cust_id
	and month(order_date) = 01
	and year(order_date) = year(current_date))
and exists(select 1
	from a_bkorders.order_headers
	where a_bkorders.customers.cust_id = a_bkorders.order_headers. cust_id 
	and month(order_date) = 02
	and year(order_date) = year(current_date)) 
and exists(select 1
	from a_bkorders.order_headers
	where a_bkorders.customers.cust_id = a_bkorders.order_headers. cust_id 
	and month(order_date) = 03
	and year(order_date) = year(current_date))
order by cust_id;

/*  TASK 03 */

select *
from a_bkinfo.authors
where exists(
	select author_id 
	,count(book_id) as "counted"
	from a_bkinfo.book_authors
	where a_bkinfo.book_authors.author_id = a_bkinfo.authors.author_id
	group by author_id
	having counted >= 2)
and exists(
	select 1
	from a_bkinfo.book_authors
	where a_bkinfo.book_authors.author_id = a_bkinfo.authors.author_id
	and book_id not in(
		select distinct book_id
		from a_bkorders.order_details
		where quantity > 0))
order by author_id;

/*  TASK 04 */

select book_id
, title
from a_bkinfo.books
where exists(
	select 1
	from a_bkinfo.book_topics
	where a_bkinfo.book_topics.book_id = a_bkinfo.books.book_id
	and topic_id = 'SSRV'
	and book_id in(
		select book_id
		from a_bkinfo.book_topics
		where topic_id in('ORA', 'MySQL')))
or exists(
	select 1
	from a_bkinfo.book_topics
	where a_bkinfo.book_topics.book_id = a_bkinfo.books.book_id
	and topic_id = 'ORA'
	and book_id in(
		select book_id
		from a_bkinfo.book_topics
		where topic_id = 'MySQL'));

/*  TASK 05 */

select order_date
, order_id
, cust_id
, (select cust_name_last
	from a_bkorders.customers
	where a_bkorders.order_headers.cust_id = a_bkorders.customers.cust_id) as 'customer'
, (select sum(quantity)
	from a_bkorders.order_details
	where a_bkorders.order_headers.order_id = a_bkorders.order_details.order_id
	group by order_id) as 'NumberBooks'
, (select (order_price * quantity)
	from a_bkorders.order_details
	where a_bkorders.order_headers.order_id = a_bkorders.order_details.order_id
	group by order_id) as 'OrderCost'
from a_bkorders.order_headers
where year(order_date) = (year(current_date) - 1)
and month(order_date) in ( 1, 2, 3)
order by order_date;

/*  TASK 06 */

select cust_id
, cust_name_last
from a_bkorders.customers
where cust_id in(
	select cust_id
	from(
		select cust_id
		, count(order_id) as "counted"
		from a_bkorders.order_headers
		where year(order_date) = (year(current_date) - 1)
		group by cust_id
		having counted between 3 and 5)tbl1)
order by cust_id;

/*  TASK 07 */

select cust_id
, cust_name_last
from a_bkorders.customers
where cust_id in(
	select cust_id
		from (
			select cust_id
			,ifnull(counted, 0) as "previousY"
			, ifnull(counted2, 0) as "currentY"
			from(
				select cust_id
					,(select count(order_id)
						from a_bkorders.order_headers
						where a_bkorders.order_headers.cust_id = oh.cust_id
						and year(order_date) = (year(current_date) - 1)
						and month(order_date) in (1, 2, 3)
						group by cust_id) as "counted"
					,(select count(order_id)
						from a_bkorders.order_headers
						where a_bkorders.order_headers.cust_id = oh.cust_id
						and year(order_date) = year(current_date)
						and month(order_date) in (1, 2, 3)
						group by cust_id)  as "counted2"
				from a_bkorders.order_headers oh
				group by cust_id)tbl1)tbl2
		where previousY >= currentY);
		
/*  TASK 08 */

		
/*  TASK 09 */


/*  TASK 10 */
