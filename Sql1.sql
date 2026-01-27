create database cake_shop;

show databases;

use cake_shop;
-- 1st table customers
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15),
    email VARCHAR(100)
);

-- 2nd table cakes
CREATE TABLE cakes (
    cake_id INT AUTO_INCREMENT PRIMARY KEY,
    cake_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- 3rd Table orders
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    cake_id INT NOT NULL,
    quantity INT NOT NULL,
    order_date DATE NOT NULL DEFAULT (CURDATE()),

    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (cake_id) REFERENCES cakes(cake_id)
);


INSERT INTO customers (name, phone, email)
VALUES
('Rahul', '9876543210', 'rahul@gmail.com'),
('Anita', '9123456780', 'anita@gmail.com'),
('Kiran', '9988776655', 'kiran@gmail.com'),
('Sita', '9012345678', 'sita@gmail.com'),
('Ramesh', '9888776655', 'ramesh@gmail.com'),
('Priya', '9765432109', 'priya@gmail.com'),
('Amit', '9900112233', 'amit@gmail.com'),
('Neha', '9811223344', 'neha@gmail.com'),
('Vikram', '9877001122', 'vikram@gmail.com'),
('Sunita', '9922334455', 'sunita@gmail.com'),
('Ajay', '9988112233', 'ajay@gmail.com'),
('Deepa', '9777889900', 'deepa@gmail.com'),
('Manish', '9666443322', 'manish@gmail.com'),
('Pooja', '9888556677', 'pooja@gmail.com'),
('Suresh', '9911223344', 'suresh@gmail.com'),
('Kavita', '9877665544', 'kavita@gmail.com'),
('Rohan', '9800112233', 'rohan@gmail.com'),
('Meera', '9899887766', 'meera@gmail.com'),
('Aditya', '9777001122', 'aditya@gmail.com'),
('Shreya', '9966778899', 'shreya@gmail.com'),
('Harish', '9888221100', 'harish@gmail.com');

select * from customers;

INSERT INTO cakes (cake_name, price)
VALUES
('Chocolate Cake', 450.00),
('Vanilla Cake', 400.00),
('Black Forest', 500.00),
('Red Velvet', 550.00),
('Strawberry Cake', 480.00),
('Butterscotch Cake', 460.00),
('Pineapple Cake', 420.00),
('Mango Cake', 470.00),
('Coffee Cake', 490.00),
('Lemon Cake', 430.00),
('Carrot Cake', 450.00),
('Blueberry Cake', 500.00),
('Oreo Cake', 520.00),
('KitKat Cake', 540.00),
('Ferrero Rocher Cake', 600.00),
('Cheesecake', 650.00),
('Mousse Cake', 580.00),
('Peanut Butter Cake', 500.00),
('Banana Cake', 430.00),
('Choco Truffle Cake', 560.00),
('Rainbow Cake', 600.00);

INSERT INTO orders (customer_id, cake_id, quantity)
VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 3),
(1, 3, 1),
(4, 5, 2),
(5, 4, 1),
(6, 6, 3),
(7, 7, 2),
(8, 8, 1),
(9, 9, 2),
(10, 10, 1),
(11, 11, 2),
(12, 12, 3),
(13, 13, 1),
(14, 14, 2),
(15, 15, 1),
(16, 16, 2),
(17, 17, 1),
(18, 18, 3),
(19, 19, 2),
(20, 20, 1),
(1, 21, 1),
(2, 5, 2),
(3, 6, 1),
(4, 7, 2),
(5, 8, 1),
(6, 9, 2),
(7, 10, 1),
(8, 11, 3),
(9, 12, 2),
(10, 13, 1);


select * from customers;


select * from orders;

alter table orders
drop column order_date;

select * from orders;
select * from cakes;
SELECT * FROM CUSTOMERS;
select * from cakes;

use cake_shop;

SELECT cake_name, price
FROM cakes
WHERE price = (SELECT MAX(price) FROM cakes)
   OR price = (SELECT MIN(price) FROM cakes);

-- Show me all orders, with cake details and the customer details, but only where a valid cake AND a valid customer exist.
select cakes.cake_id,cakes.cake_name,orders.customer_id,orders.order_id,customers.name,customers.phone,orders.quantity
from cakes inner join orders
on cakes.cake_id = orders.cake_id
inner join customers
on customers.customer_id=orders.customer_id
-- only carrot cake with quantity 
where cakes.cake_name='Carrot Cake';

-- total quantity sells with cake name which cake sells the most thats y its in descending order so we get highest sold cake in top 
select * from orders;
SELECT 
    cakes.cake_name,
    SUM(orders.quantity) AS total_quantity_sold
FROM cakes
INNER JOIN orders
    ON cakes.cake_id = orders.cake_id
GROUP BY cakes.cake_name
ORDER BY total_quantity_sold DESC;

select * from cakes;

-- only mention cakes with customer details and quantity

select cakes.cake_name,customers.name,customers.phone,cakes.price,orders.quantity
from cakes inner join orders
on cakes.cake_id = orders.cake_id
inner join customers
on orders.customer_id =customers.customer_id
where cakes.cake_name in ('Chocolate Cake','Carrot Cake','Mango Cake','Black Forest');












