/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 SELECT products.Name as ProductName, categories.Name as CategoryName
 FROM products
 INNER JOIN categories ON categories.CategoryID = products.CategoryID
 WHERE categories.Name = 'Computers';
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 SELECT products.Name, products.Price, reviews.Rating
 FROM products
 INNER JOIN reviews ON reviews.ProductID = products.ProductID
 WHERE reviews.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT employees.FirstName, employees.LastName, SUM(sales.Quantity) AS TotalQuantity
FROM sales
INNER JOIN employees ON employees.EmployeeID = sales.EmployeeID
GROUP BY employees.EmployeeID
ORDER BY TotalQuantity DESC
LIMIT 2; 
/* Used 2 rather then 1 due to tie for the most sold and no requirements for handling a tie*/

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT departments.Name as DepartmentName, categories.Name as CategoryName
FROM departments
INNER JOIN categories ON categories.DepartmentID = departments.DepartmentID
WHERE categories.Name = 'Appliances' OR categories.Name = 'Games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT products.Name, SUM(sales.Quantity) as TotalNumberSold, SUM(sales.Quantity * sales.PricePerUnit) as TotalSales
FROM products
INNER JOIN sales ON sales.ProductID = products.ProductID
WHERE products.ProductID = 97;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT products.Name, reviews.Reviewer, reviews.Rating, reviews.Comment
FROM products
INNER JOIN reviews ON reviews.ProductID = products.ProductID
WHERE products.ProductID = 857 AND reviews.Rating = 1;