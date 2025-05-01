use sales_db;

CREATE TABLE Salestab (
    Product_id INT ,
    Product VARCHAR(100),
    Quantity INT,
    Price DECIMAL(10, 2)
);

INSERT INTO Salestab (Product_id, Product, Quantity, Price)
VALUES (1, 'Laptop', 5, 750.00),
(2, 'Smartphone', 10, 500.00),
(3, 'Tablet', 6, 300.00),
(1, 'Laptop', 10, 1500.00),
(5, 'Monitor', 8, 200.00),
(3, 'Tablet', 8, 480.00);

select * from Salestab;


SELECT 
    Product, 
    SUM(Quantity) AS total_qty, 
    SUM(Quantity * Price) AS revenue
FROM 
    Salestab
GROUP BY 
    Product;



