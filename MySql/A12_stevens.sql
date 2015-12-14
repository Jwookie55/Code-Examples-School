/* Jared Stevens */

\W    /* enable warnings! */

use   a_bkorders;

/*  TASK 00 */ 
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */

select oh.order_date as "Order Date"
, count(oh.order_id) as "Number of Orders"
, sum(od.quantity * od.order_price) as "Amt Due"	
, sum(od.quantity) as "Number of Books"
from a_bkorders.order_headers oh
left join a_bkorders.order_details od using(order_id)
where year(order_date) = 2015
group by order_date with rollup;
	
/*  TASK 02 */

select coalesce(ydate, 'Grand Total') as "Year"
, case when ydate is null then '........' else coalesce(mdate, 'Year Total') end as "Month"
, case when mdate is null then '........' else coalesce(order_id, 'Month Total') end as "Order Id"
, amtdue as "Amount Due"
, numb as "Number of Books sold"
from(
select year(order_date) as "ydate"
, month(order_Date) as "mdate"
, order_id
, sum(quantity * order_price) as "amtdue"
, sum(quantity) as "numb"
from a_bkorders.order_headers
join a_bkorders.order_details using(order_id)
where order_date between '2014-10-01' and '2015-02-28'
group by year(order_date), month(order_date), order_id with rollup)tbl1;

/*  TASK 03 */

select coalesce(ydate, 'Grand Total') as ""
, mdate
, Numord as "Number of Orders"
, AmtDue as "Amt Due"
, Numb as "Number of Books sold"
from(
select year(order_Date) as "ydate"
, coalesce(null, 'Yearly Total') as "mdate"
, count(order_id) as "Numord"
, sum(quantity * order_price) as "AmtDue"
, sum(quantity) as "Numb"
from a_bkorders.order_headers
join a_bkorders.order_details using(order_id)
group by year(order_date) with rollup)tbl1;

/*  TASK 04 */

select coalesce(author_id, 'ALL Authors') as "Author ID"
, coalesce(book_id, 'ALL books') as "Book ID"
, coalesce(Numb, '0') as "Total Quantity"
, coalesce(AmtDue, 'No sales') as "Total Sales"
from(
select author_id
, book_id
, sum(quantity) as "Numb"
, sum(quantity * order_price) as "AmtDue"
from a_bkinfo.book_authors
join a_bkorders.order_details using(book_id)
group by author_id, book_id with rollup)tbl1;

/*  TASK 05 */

select book_1.book_id as "Book ID"
, book_1.page_count as "Page Count"
, (
    select count(distinct page_count div 150)
    from a_bkinfo.books as book_2 
    where book_2.page_count div 150 > book_1.page_count div 150
	) + 1 as ranking
from a_bkinfo.books as book_1
where page_count is not null
and book_id <= 1500
order by page_count desc;

/*  TASK 06 */

select cast(order_date as Date) as "Order ID"
, sum(quantity) as "Quantity Ordered"
, sum(quantity * order_price) as "Total Sales"
from a_bkorders.order_headers
join a_bkorders.order_details using(order_id)
where month(order_Date) = 03 and year(order_date) = 2014
group by order_date
union
select theDate , 0, 0
from 
(
   select adddate('2014-03-01', numvalue)  as theDate
   from
   (  select b1.val + b2.val + b4.val + b8.val + b16.val + b32.val
      as numvalue
      from
      (  select 0 val union  all  select 1)  b1    cross join
      (  select 0 val union  all  select 2)  b2    cross join
      (  select 0 val union  all  select 4)  b4    cross join
      (  select 0 val union  all  select 8)  b8    cross join
      (  select 0 val union  all  select 16) b16   cross join
      (  select 0 val union  all  select 32) b32   
   ) as gennum
) calendar
where theDate between '2014-03-01'  and '2014-03-31'
and theDate not in (
   select order_date 
   from a_bkorders.order_headers)
Order by 1;

/*  TASK 07 */


/*  TASK 08 */


/*  TASK 09 */


/*  TASK 10 */
