CREATE DATABASE customerdb;

USE customerdb;

SELECT * 
FROM customers;

SELECT *
FROM packages;

-- 1. Display the first name, last name, city and state for all customers who live in the same state as customer number 177 (Customers table).
SELECT FIRST_NAME, LAST_NAME, CITY, STATE, CUSTOMER_ID
FROM customers 
WHERE STATE=(SELECT STATE FROM customers WHERE  CUSTOMER_ID="191");


-- 2. Display the package number, internet speed and sector number for all packages whose sector number equals to the sector number of  package number 10 (Packages table).
SELECT PACK_ID, SPEED, SECTOR_ID
FROM packages
WHERE SECTOR_ID =(SELECT SECTOR_ID FROM packages WHERE PACK_ID="10");

-- 3. Display the first name, last name and join date for all customers who joined the company after customer number 200 (Customers table).
SELECT FIRST_NAME, LAST_NAME, JOIN_DATE
FROM customers
WHERE JOIN_DATE >(SELECT JOIN_DATE FROM customers WHERE CUSTOMER_ID="200");

-- 4. Display the first name, last name and join date for all customers who joined the company on the same month and on the same year as customer number 372 (Customers table).
select
	customers.last_name,
    customers.first_name,
    customers.join_date
from
	customers
where
	DATE_FORMAT(customers.JOIN_DATE, '%y-%m') = (SELECT DATE_FORMAT(customers.JOIN_DATE, '%y-%m') FROM customers WHERE customers.customer_id=178);


