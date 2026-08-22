# SQL Portfolio
# Project 2: Top Customers and Product Categories by Revenue

## Supply Chain Sales Analysis

### Business Impact
Understanding which customers and product categories generate the highest revenue helps businesses prioritize high-value segments, optimize inventory planning, and focus marketing efforts more effectively. This analysis supports better demand forecasting and resource allocation across the supply chain.

### Project Goal
Identify the top customers and product categories by total revenue using multi-table SQL joins.

### Dataset
- **Source**: Supply Chain Dataset (Kaggle)
- **Tables Used**:
  - `sales_orders`
  - `customer_master`
  - `product_master`

### Tools Used
- SQLite
- DB Browser for SQLite

### Key Skills Demonstrated
- Multi-table JOINs (2 JOINs)
- Aggregation (`SUM`, `COUNT`)
- `GROUP BY`
- `ORDER BY` + `LIMIT`
  
---

### SQL Query

```sql
SELECT 
    c.Customer_Name,
    p.Category, SUM(s.Order_total), 2) AS TotalRevenue,
    COUNT(s.Order_ID) AS NumberOfOrders
FROM sales_orders s
JOIN customer_master c ON s.Customer_ID = c.Customer_ID
JOIN product_master p ON s.Product_ID = p.Product_ID
GROUP BY c.Customer_Name, p.Category
ORDER BY TotalRevenue DESC
LIMIT 10;
```
**Outcome:** Successfully analysed sales data across three related tables to identify the highest revenue-generating customers and product categories. The query returned clear rankings that can support business decisions related to inventory, marketing, and customer prioritisation.

### Key Findings (Top Results)

| Rank | Customer Name   | Category | Total Revenue | Number of Orders |
|------|-----------------|----------|---------------|------------------|
| 1    | Peyton Young    | Food     | 56,165.7683     | 61               |
| 2    | Riley Johnson   | Food     | 53,186.4188    | 52               |
| 3    | Alex Williams   | Beauty   | 47,477.946     | 49               |

*Note: Full output results provided below and in Project 2 - Supply Chain Analysis/ Project2.png
![Project 2 output](./Project%202%20-%20Supply%20Chain%20Analysis/Project2.png)
