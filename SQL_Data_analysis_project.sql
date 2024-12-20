use sql_assignment ;
CREATE TABLE order_detail (
    id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    price DECIMAL(10, 2),
    qty_ordered INT,
    before_discount DECIMAL(10, 2),
    discount_amount DECIMAL(10, 2),
    after_discount DECIMAL(10, 2),
    is_gross BOOLEAN,
    is_valid BOOLEAN,
    is_net BOOLEAN,
    payment_id INT,
    sku_id INT
    );

CREATE TABLE sku_detail (
    id INT PRIMARY KEY,
    sku_name VARCHAR(255),
    base_price DECIMAL(10, 2),
    cogs DECIMAL(10, 2),
    category VARCHAR(255)
);

CREATE TABLE customer_detail (
    id INT PRIMARY KEY,
    registered_date DATE
);

CREATE TABLE payment_detail (
    id INT PRIMARY KEY,
    payment_method VARCHAR(255)
);

ALTER TABLE order_detail
ADD CONSTRAINT fk_customer
FOREIGN KEY (customer_id) REFERENCES customer_detail(id);

ALTER TABLE order_detail
ADD CONSTRAINT fk_sku
FOREIGN KEY (sku_id) REFERENCES sku_detail(id);

ALTER TABLE order_detail
ADD CONSTRAINT fk_payment
FOREIGN KEY (payment_id) REFERENCES payment_detail(id);

INSERT INTO order_detail (id, order_date, customer_id, price, qty_ordered, before_discount, discount_amount, after_discount, is_gross, is_valid, is_net, payment_id, sku_id)
VALUES
(1, '2021-01-05', 1, 100.00, 2, 200.00, 20.00, 180.00, TRUE, TRUE, FALSE, 1, 1),
(2, '2021-02-10', 2, 150.00, 3, 450.00, 45.00, 405.00, TRUE, TRUE, FALSE, 2, 2),
(3, '2021-03-15', 3, 200.00, 1, 200.00, 20.00, 180.00, TRUE, TRUE, FALSE, 3, 3),
(4, '2021-04-20', 4, 250.00, 2, 500.00, 50.00, 450.00, TRUE, TRUE, FALSE, 4, 4),
(5, '2021-05-25', 5, 300.00, 1, 300.00, 30.00, 270.00, TRUE, TRUE, FALSE, 5, 5),
(6, '2021-06-30', 6, 350.00, 2, 700.00, 70.00, 630.00, TRUE, TRUE, FALSE, 6, 1),
(7, '2021-07-05', 7, 150.00, 3, 450.00, 45.00, 405.00, TRUE, TRUE, FALSE, 7, 2),
(8, '2021-08-10', 8, 200.00, 1, 200.00, 20.00, 180.00, TRUE, TRUE, FALSE, 8, 3),
(9, '2021-09-15', 9, 250.00, 2, 500.00, 50.00, 450.00, TRUE, TRUE, FALSE, 9, 4),
(10, '2021-10-20', 10, 300.00, 1, 300.00, 30.00, 270.00, TRUE, TRUE, FALSE, 10, 5),
(11, '2021-11-25', 11, 100.00, 2, 200.00, 70.00, 350.00, TRUE, TRUE, FALSE, 11, 1),
(12, '2021-12-30', 12, 400.00, 1, 400.00, 40.00, 360.00, TRUE, TRUE, FALSE, 12, 2),
(13, '2022-01-04', 13, 450.00, 2, 900.00, 90.00, 810.00, TRUE, TRUE, FALSE, 13, 3),
(14, '2022-02-09', 14, 500.00, 1, 500.00, 50.00, 450.00, TRUE, TRUE, FALSE, 14, 4),
(15, '2022-03-16', 15, 550.00, 2, 1100.00, 110.00, 990.00, TRUE, TRUE, FALSE, 15, 5),
(16, '2022-04-21', 16, 600.00, 1, 600.00, 60.00, 540.00, TRUE, TRUE, FALSE, 16, 1),
(17, '2022-05-26', 17, 650.00, 2, 1300.00, 130.00, 1170.00, TRUE, TRUE, FALSE, 17, 2),
(18, '2022-06-30', 18, 700.00, 1, 700.00, 70.00, 630.00, TRUE, TRUE, FALSE, 18, 3),
(19, '2022-07-05', 19, 750.00, 2, 1500.00, 150.00, 1350.00, TRUE, TRUE, FALSE, 19, 4),
(20, '2022-08-10', 20, 800.00, 1, 800.00, 80.00, 720.00, TRUE, TRUE, FALSE, 20, 5);

INSERT INTO sku_detail (id, sku_name, base_price, cogs, category)
VALUES
(1, 'Samsung', 100.00, 90.00, 'Electronics'),
(2, 'Apple', 250.00, 225.00, 'Electronics'),
(3, 'Sony', 400.00, 360.00, 'Electronics'),
(4, 'Huawei', 550.00, 495.00, 'Electronics'),
(5, 'Lenovo', 700.00, 630.00, 'Electronics'),
(6, 'Chanel Perfume', 350.00, 315.00, 'Clothing'),
(7, 'Gucci Wallet', 450.00, 405.00, 'Clothing'),
(8, 'Versace Shirt', 600.00, 540.00, 'Clothing'),
(9, 'Armani Jeans', 750.00, 675.00, 'Clothing'),
(10, 'Prada Shoes', 850.00, 765.00, 'Clothing'),
(11, 'IKEA Chair', 150.00, 135.00, 'Home Goods'),
(12, 'Dyson Vacuum', 200.00, 180.00, 'Home Goods'),
(13, 'Tefal Cookware Set', 300.00, 270.00, 'Home Goods'),
(14, 'Philips Hue Bulbs', 500.00, 450.00, 'Home Goods'),
(15, 'KitchenAid Mixer', 650.00, 585.00, 'Home Goods'),
(16, 'Ray-Ban Sunglasses', 800.00, 720.00, 'Clothing'),
(17, 'Timberland Boots', 950.00, 855.00, 'Clothing'),
(18, 'Bose Headphones', 1000.00, 900.00, 'Electronics'),
(19, 'Apple', 1050.00, 945.00, 'Electronics'),
(20, 'Sony', 1100.00, 990.00, 'Electronics');

INSERT INTO customer_detail (id, registered_date)
VALUES
(1, '2020-01-01'),
(2, '2020-02-02'),
(3, '2020-03-03'),
(4, '2020-04-04'),
(5, '2020-05-05'),
(6, '2020-06-06'),
(7, '2020-07-07'),
(8, '2020-08-08'),
(9, '2020-09-09'),
(10, '2020-10-10'),
(11, '2020-11-11'),
(12, '2020-12-12'),
(13, '2021-01-01'),
(14, '2021-02-02'),
(15, '2021-03-03'),
(16, '2021-04-04'),
(17, '2021-05-05'),
(18, '2021-06-06'),
(19, '2021-07-07'),
(20, '2021-08-08');

INSERT INTO payment_detail (id, payment_method)
VALUES
(1, 'Credit Card'),
(2, 'Debit Card'),
(3, 'PayPal'),
(4, 'Bank Transfer'),
(5, 'Cash'),
(6, 'Mobile Payment'),
(7, 'Credit Card'),
(8, 'Debit Card'),
(9, 'PayPal'),
(10, 'Bank Transfer'),
(11, 'Cash'),
(12, 'Mobile Payment'),
(13, 'Credit Card'),
(14, 'Debit Card'),
(15, 'PayPal'),
(16, 'Bank Transfer'),
(17, 'Cash'),
(18, 'Mobile Payment'),
(19, 'Credit Card'),
(20, 'Debit Card');

----- Question 1 

SELECT MONTH(order_date) AS transaction_month, 
       SUM(after_discount) AS total_transaction_value
FROM order_detail
WHERE YEAR(order_date) = 2021
AND is_valid = TRUE
GROUP BY MONTH(order_date)
ORDER BY total_transaction_value DESC;

----- Question 2

SELECT s.category, 
       SUM(o.after_discount) AS total_transaction_value
FROM order_detail o
JOIN sku_detail s ON o.sku_id = s.id
WHERE YEAR(o.order_date) = 2022
AND o.is_valid = TRUE
GROUP BY s.category
ORDER BY total_transaction_value DESC
;

---- Question 3

SELECT s.category,
       SUM(CASE WHEN YEAR(o.order_date) = 2021 THEN o.after_discount ELSE 0 END) AS total_2021,
       SUM(CASE WHEN YEAR(o.order_date) = 2022 THEN o.after_discount ELSE 0 END) AS total_2022,
       (SUM(CASE WHEN YEAR(o.order_date) = 2022 THEN o.after_discount ELSE 0 END) - 
        SUM(CASE WHEN YEAR(o.order_date) = 2021 THEN o.after_discount ELSE 0 END)) AS difference
FROM order_detail o
JOIN sku_detail s ON o.sku_id = s.id
WHERE o.is_valid = TRUE
GROUP BY s.category
ORDER BY difference DESC;

----- Question 4

SELECT p.payment_method, 
       COUNT(DISTINCT o.id) AS total_unique_orders
FROM order_detail o
JOIN payment_detail p ON o.payment_id = p.id
WHERE YEAR(o.order_date) = 2022
AND o.is_valid = TRUE
GROUP BY p.payment_method
ORDER BY total_unique_orders DESC
LIMIT 5;

----- Question 5

SELECT s.sku_name, 
       SUM(o.after_discount) AS total_transaction_value
FROM order_detail o
JOIN sku_detail s ON o.sku_id = s.id
WHERE s.sku_name IN ('Samsung', 'Apple', 'Sony', 'Huawei', 'Lenovo')
AND o.is_valid = TRUE
GROUP BY s.sku_name
ORDER BY total_transaction_value DESC;





