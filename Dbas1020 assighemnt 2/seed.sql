use pos_tobin;

insert into customers (first_name, last_name, phone_number) Values
('tobin', 'chisholm', '9023662555'),
('damien','hammons', '9025556666'),
('katlin', 'parker', '9023214444'),
('anthony', 'parker', null),
('dexter', 'morgan', null),
('walter', 'white', '5051178987');

insert into products (product_name, stock_quantity, price, category) values
('banana', 58, 2.99, 'produce'),
('chips', 44, 4.99, 'grocery'), 
('cheese', 24, 7.99, 'dairy'),
('milk', 5, 6.49, 'dairy'),
('pickles', 2, 2.39, 'grocery'),
('steak', 8, 24.22, 'meat'),
('ground beef', 6, 16.24, 'meat'), 
('frozen pizza', 1, 8.99, 'frozen');

insert into orders (customer_id, order_date) values
(1, '2026-10-03 14:30:00'), 
(2, '2026-10-02 10:30:00'),
(3, '2026-10-01 11:30:00'),
(4, '2026-09-06 10:30:00'),
(5, '2026-10-02 09:30:00'),
(1, '2026-08-05 13:30:00'); 

insert into orderitems (order_id, product_id, quantity, unit_price) values
(1, 1, 5, 2.99),
(1, 4, 1, 6.49),
(2, 3, 1, 7.99),
(2, 2, 2, 4.99),
(3, 6, 1, 24.22),
(3, 5, 1, 2.39),
(4, 8, 2, 8.99),
(4, 2, 1, 4.99),
(5, 7, 1, 16.24),
(5, 1, 3, 2.99),
(6, 4, 2, 6.49),
(6, 3, 1, 7.99);