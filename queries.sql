-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT ProductName, CategoryName
FROM Product
JOIN Category
ON Product.id = Category.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT [Order].id as orderId, Shipper.CompanyName
FROM [ORDER]
JOIN Shipper 
ON [Order].ShipVia = Shipper.Id
WHERE OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT ProductName, Quantity 
FROM OrderDetail
JOIN Product
ON OrderDetail.productid = Product.id
WHERE OrderId = '10251'
ORDER BY ProductName

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT [Order].id, [Customer].CompanyName, [Employee].LastName
FROM [Order]
JOIN [Customer], [Employee]
WHERE [Order].CustomerId = [Customer].Id;
