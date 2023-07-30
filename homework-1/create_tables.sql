-- SQL-команды для создания таблиц
-- Создаем таблицу customers
CREATE TABLE customers
(
	customer_id varchar PRIMARY KEY,
	company_name varchar(100) NOT NULL,
    contact_name text

);

SELECT * FROM customers;

-- Создаем таблицу employees
CREATE TABLE employees
(
	employee_id int PRIMARY KEY,
	first_name varchar(100) NOT NULL,
	last_name varchar(100) NOT NULL,
	title varchar(100) NOT NULL,
	birth_date date,
	notes text

);

SELECT * FROM employees

-- Создаем таблицу orders
CREATE TABLE orders
(
	order_id serial PRIMARY KEY,
	customer_id varchar(100) REFERENCES customers(customer_id),
	employee_id int REFERENCES employees(employee_id),
	order_date date,
	ship_city varchar(100) NOT NULL

);

SELECT * FROM orders;