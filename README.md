# Basic Query 
This query was written in SQL Server 2014. The goal was to retrieve products from the UPC_CODE table that met the guidelines. 

## Guidelines
Complete the SQL query to retrieve information on products that have:
- unitPrice of at least $10 but no more than $50
- minimum of 10000 dollars of total sales (sale amount for a product in each order is calculated as: (qtyOrdered * unitPrice) - [discount$]) in at least 500 orders
- ordered by at least 300 customers (each customer is uniquely associated with AcctNum)


### Entity Relationship Diagram
![ERD](https://user-images.githubusercontent.com/68878624/146376097-42c98d76-d07a-4a42-b0c3-4cb3da3df0b9.png)
