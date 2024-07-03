-- Create the database
CREATE DATABASE expense_tracker;

-- Use the expense_tracker database
USE expense_tracker;

-- Create the Expenses table
CREATE TABLE Expenses (
  expense_id INT PRIMARY KEY AUTO_INCREMENT,
  amount DECIMAL(10,2) NOT NULL,
  date DATE NOT NULL,
  category VARCHAR(50) NOT NULL
);

-- Retrieving All Expenses
SELECT * FROM Expenses;

-- Specific Columns
SELECT date, category, amount FROM Expenses;

-- Filtering by Date Range
SELECT * FROM Expenses
WHERE date BETWEEN '2021-01-01' AND '2024-12-15';

-- Filtering by Category
SELECT * FROM Expenses
WHERE category = 'Entertainment';

-- Filtering with Comparison Operators
SELECT * FROM Expenses
WHERE amount > 50;

-- Combining Filters (AND)
SELECT * FROM Expenses
WHERE amount > 75
AND category = 'Food';

-- Combining Filters (OR)
SELECT * FROM Expenses
WHERE category = 'Transportation'
OR category = 'Groceries';

-- Filtering with NOT
SELECT * FROM Expenses
WHERE category != 'Rent';

-- Sorting by Amount
SELECT * FROM Expenses
ORDER BY amount DESC;

-- Sorting by Date and Category
SELECT * FROM Expenses
ORDER BY date DESC, category ASC;

-- Create the "Income" Table
CREATE TABLE IF NOT EXISTS Income (
  income_id INT PRIMARY KEY AUTO_INCREMENT,
  amount DECIMAL(10,2) NOT NULL,
  date DATE NOT NULL,
  source VARCHAR(50) NOT NULL
);

-- Add a Category Column to "Income"
ALTER TABLE Income
ADD COLUMN category VARCHAR(50);

-- Remove the "Source" Column from "Income"
ALTER TABLE Income
DROP COLUMN source;

-- Drop the "Income" Table
DROP TABLE IF EXISTS Income;
