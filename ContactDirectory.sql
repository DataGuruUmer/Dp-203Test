-- Task 1: Retrieve Customer contact details
SELECT CompanyName, ContactName, Phone
FROM dbo.Customers;

-- Task 2: Retrieve Supplier contact details
SELECT CompanyName, ContactName, Phone
FROM dbo.Suppliers;

-- Task 3: Retrieve Employee contact details
SELECT
    'Northwind Traders' AS CompanyName,
    CONCAT(FirstName, ' ', LastName) AS FullName,
    Extension
FROM dbo.Employees;

-- Task 4: Combine the results using the UNION operator
-- UNION with Customers and Suppliers
SELECT CompanyName, ContactName, Phone
FROM dbo.Customers
UNION ALL
SELECT CompanyName, ContactName, Phone
FROM dbo.Suppliers;

-- UNION with Employees (including the 'Northwind Traders' as CompanyName)
SELECT 'Northwind Traders' AS CompanyName, CONCAT(FirstName, ' ', LastName) AS FullName, Extension
FROM dbo.Employees;
