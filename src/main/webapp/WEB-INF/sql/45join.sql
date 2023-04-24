USE w3schools;

SELECT * FROM Products;

DESC Products;

SELECT * FROM Categories;

ALTER TABLE Products
ADD FOREIGN KEY (CategoryId) REFERENCES Categories(CategoryId);

DESC Products;

ALTER TABLE Products
ADD FOREIGN KEY (SupplierId) REFERENCES Suppliers(SupplierId);

ALTER TABLE OrderDetails
ADD FOREIGN KEY (OrderId) REFERENCES Orders(OrderId);
ALTER TABLE OrderDetails
ADD FOREIGN KEY (ProductId) REFERENCES Products(ProductId);

ALTER TABLE Orders
ADD FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId);
ALTER TABLE Orders
ADD FOREIGN KEY (ShipperId) REFERENCES Shippers(ShipperId);
ALTER TABLE Orders
ADD FOREIGN KEY (EmployeeId) REFERENCES Employees(EmployeeId);

SELECT * FROM Products
WHERE ProductId = 1;
SELECT * FROM Categories
WHERE CategoryId = 1;

SELECT * FROM Products JOIN Categories ON
Products.CategoryId =  Categories.CategoryId
WHERE Products.ProductId = 1;