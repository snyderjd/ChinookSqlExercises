-- Chinook SQL Exercises

-- 1. non_usa_customers.sql: Provide a query showing Customers (just their full names, customer ID and country) 
-- who are not in the US.
SELECT c.CustomerId, c.FirstName, c.LastName, c.Country
FROM Customer c
WHERE c.Country != 'USA'

-- 2. brazil_customers.sql: Provide a query only showing the Customers from Brazil.
SELECT c.CustomerId, c.FirstName, c.LastName, c.Country
FROM Customer c
WHERE c.Country = 'Brazil'

-- 3. brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil. 
-- The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
SELECT c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM Invoice i LEFT JOIN Customer c on i.CustomerId = c.CustomerId
WHERE c.Country = 'Brazil'

-- 4. sales_agents.sql: Provide a query showing only the Employees who are Sales Agents.
SELECT e.EmployeeId, e.FirstName, e.LastName, e.Title
FROM Employee e
WHERE e.Title = 'Sales Support Agent'
ORDER BY e.LastName

-- 5. unique_invoice_countries.sql: Provide a query showing a unique/distinct list of billing countries 
-- from the Invoice table.
SELECT DISTINCT i.BillingCountry
FROM Invoice i