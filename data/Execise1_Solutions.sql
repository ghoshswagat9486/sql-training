use sgmysqldb;
select * from sgmysqldb.agents
where WORKING_AREA='Bangalore';

-- Fetch customers who have a grade of 2 and do not live in London.

select * from customer 
where grade=2 
and working_area = 'London';

select * from sgmysqldb.orders where ORD_AMOUNT>3000;


-- Fetch order number and amount for all orders from the daysorder table that have an order date greater than 2008-07-15 and have an order amount greater than 1200.


select ORD_NUM,ord_amount 
from sgmysqldb.daysorder 
where ord_date>'2008-07-15'
and ORD_AMOUNT>1200;

