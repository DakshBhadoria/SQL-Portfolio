SELECT Customer.FirstName, Customer.LastName, sum(invoice.total) as 'TotalSpent'
FROM Customer
JOIN Invoice on Customer.CustomerId=Invoice.CustomerId
GROUP BY Customer.FirstName, Customer.LastName
ORDER by TotalSpent DESC
LIMIT 10
