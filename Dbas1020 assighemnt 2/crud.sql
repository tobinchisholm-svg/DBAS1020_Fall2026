use pos_tobin;

-- turn off workbench safe update mode so the UPDATE by category is allowed becasue i ran into an error when doing a full test.
SET SQL_SAFE_UPDATES = 0;

insert into customers (first_name, last_name, phone_number) values -- this adds a new customer we know that the customer id will be 7 
																  -- becasue we already have 6 ids and it goes by 1 for each customer
('jack', 'feltmate', '9023184055'); 

insert into orders (customer_id, order_date) values -- this makes a order for jack (customer 7) it will also be order 7 becasue we already have 6 orders.
(7, '2026-10-16 12:45:00');

insert into orderitems (order_id, product_id, quantity, unit_price) values -- this is where jack (id=7) goes and buys 5 bags of chips at 4.99 a bag.
(7, 2, 5, 4.99);

select * from products where stock_quantity <10; -- SELECT: show every product with less than 10 in stock

update products set price = price * 1.10 where category= 'meat'; -- this increased the price of everthing inside of the meat category by 10% in the products column

delete from customers where customer_id= 6; -- this deletes walter white from the customer table i chose walter becasue he deosnt have any orders. 
											-- if we deleted someone with a order like jack it would give us an error becasue the forign key wouldnt let us delete 
                                            -- becasue hes used in other tables.
                            
                            
                            
								-- multi-table select: shows every order with the customer's name and the order total.
								-- it joins orders to customers using customer_id to get the name,
								-- and joins orders to orderitems using order_id to get what was bought.
select orders.order_id,			-- it multiplies quantity by unit_price for each line, then SUM adds them up for each order (GROUP BY order).
       customers.first_name,
       customers.last_name,
       SUM(orderitems.quantity * orderitems.unit_price) AS order_total
from orders
join customers  on customers.customer_id = orders.customer_id
join orderitems on orderitems.order_id   = orders.order_id
group by orders.order_id, customers.first_name, customers.last_name
order by orders.order_id;
			