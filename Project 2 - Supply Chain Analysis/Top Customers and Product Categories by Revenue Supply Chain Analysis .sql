SELECT c.Customer_Name, p.Category, SUM(s.Order_total) as 'TotalRevenue', COUNT(s.Order_ID) as 'NumberOfOrders'
FROM sales_orders s
JOIN customer_master c on s.Customer_ID= c.Customer_ID
JOIN product_master p on s.Product_ID=p.Product_ID
GROUP BY c.Customer_Name, p.Category
ORDER BY TotalRevenue DESC
LIMIT 10;
