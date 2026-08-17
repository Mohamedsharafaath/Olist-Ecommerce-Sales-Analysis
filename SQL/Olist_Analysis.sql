SELECT DB_NAME() AS CurrentDatabase;
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';

USE Olist_Ecommerce;
GO

SELECT COUNT(*) AS Total_Rows
FROM olist_orders_dataset;

SELECT TOP 10 *
FROM olist_orders_dataset;

USE Olist_Ecommerce;
GO

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;

SELECT 'Orders' AS TableName, COUNT(*) AS TotalRows
FROM olist_orders_dataset

UNION ALL

SELECT 'Order Items', COUNT(*)
FROM olist_order_items_dataset

UNION ALL

SELECT 'Products', COUNT(*)
FROM olist_products_dataset

UNION ALL

SELECT 'Customers', COUNT(*)
FROM olist_customers_dataset

UNION ALL

SELECT 'Payments', COUNT(*)
FROM olist_order_payments_dataset;

/* 1. What is the Total Revenue?*/
Use Olist_Ecommerce;
GO

SELECT SUM(price)as Total_Revenue
FROM olist_order_items_dataset;

--2.How many orders are there?--
SELECT COUNT(DISTINCT order_id)AS Total_orders 
FROM olist_orders_dataset;

--3.How many Customers?--
SELECT COUNT(DISTINCT customer_id)AS Total_customers
FROM olist_customers_dataset;

--4.What is the Average order value?--
SELECT 
sum(price)/COUNT(DISTINCT order_id)AS Average_order_value
FROM olist_order_items_dataset;

--5.Monthly Sales Trend?--
SELECT 
  YEAR(o.order_purchase_timestamp)AS Sales_Year,
  MONTH(o.order_purchase_timestamp)AS Sales_Month,
  SUM(oi.price)AS Monthly_Sales
FROM olist_orders_dataset AS o 
INNER JOIN olist_order_items_dataset AS oi
    ON o.order_id=oi.order_id
GROUP BY 
	YEAR(o.order_purchase_timestamp),
	MONTH(o.order_purchase_timestamp)
ORDER BY 
	Sales_Year,
	Sales_Month;

-- Question 6: Sales by Product Category

SELECT
    p.product_category_name AS Product_Category,
    SUM(oi.price) AS Total_Sales
FROM olist_order_items_dataset AS oi
INNER JOIN olist_products_dataset AS p
    ON oi.product_id = p.product_id
GROUP BY
    p.product_category_name
ORDER BY
    Total_Sales DESC;

--7.Sales by state.--
SELECT
c.customer_state AS State,
SUM(oi.price)AS Total_Sales
FROM olist_orders_dataset AS o
INNER JOIN olist_order_items_dataset AS oi
ON o.order_id=oi.order_id
INNER JOIN olist_customers_dataset AS c
ON o.customer_id=c.customer_id
GROUP BY
c.customer_state
ORDER BY
Total_Sales DESC;


--8. Payment methond Analysis--
SELECT 
payment_type AS Payment_Method,
COUNT(*)AS Number_Of_Payments,
SUM(payment_value) AS Total_Payment_Value
FROM olist_order_payments_dataset
GROUP BY
payment_type
ORDER BY
Total_Payment_Value DESC;


-- Question 9: Top 10 Product Categories by Product Sales

SELECT TOP 10
    p.product_category_name AS Product_Category,
    SUM(oi.price) AS Total_Sales,
    COUNT(*) AS Units_Sold
FROM olist_order_items_dataset AS oi
INNER JOIN olist_products_dataset AS p
    ON oi.product_id = p.product_id
GROUP BY
    p.product_category_name
ORDER BY
    Total_Sales DESC;

--10. Order Status Analysis--
SELECT 
   order_status AS Order_Status,
   COUNT(*)AS Number_Of_Orders
FROM olist_orders_dataset
GROUP BY 
   order_status
ORDER BY
Number_Of_Orders DESC;