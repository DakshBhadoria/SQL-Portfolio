# SQL-Portfolio - Supply Chain and Data Analytics 
SQL projects and data alalysis work while learning.
## Project 1: Customer Segmentation and Revenue Optimization Analysis 
**Business Impact**: Identifying top-spending customers allows operations to forecast demand for high-value products, ensuring server capacity and prioritizing customer service support channels for premium buyers.
**Goal**: Identify the top 10 highest-spending customers.

**Database**: Chinook (sample database)

**Tools Used**: SQLite
- **Key Skills Demonstrated**:
- 
- 'JOIN' to link customer and invoice tables.
- 'SUM()' to calculate total spend per customer.
- 'GROUP BY' to aggregate data.
- 'ORDER by DESC' to rank customers.
- 'LIMIT' to filter top 10 results.
  
 ### SQL Code Execution
 
 ```sql .
 SELECT Customer.FirstName, Customer.LastName, sum(invoice.total) as 'TotalSpend'
 FROM Customer
 JOIN Invoice on Customer.CustomerID=Invoice.CustomerID
 GROUP BY Customer.FirstName, Customer.LastName
 ORDER BY TotalSpend DESC
 LIMIT 10 ;
 ```
 
- **Outcome**: List of top 10 spending customers ranked in descending order.
  
  ### Key Findings (Top Results)
|  Customer Name | Total Spend ($)
| :---    | :--- |
|  Helena Holý | 49.62 |
|  Richard Cunningham | 47.62 |
|  Luis Rojas | 46.62 |

*Note: Full output screenshot available in the repository as 'project1.png'.*
