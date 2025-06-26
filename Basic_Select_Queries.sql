Use me;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO departments VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing');

CREATE TABLE employees123 (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dept_id INT,
    salary DECIMAL(10, 2),
    hire_date DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO employees123 VALUES
(101, 'Arindam', 'Mahapatra', 3, 60000, '2020-05-15'),
(102, 'Bibek', 'Mahata', 1, 50000, '2018-03-12'),
(103, 'Arunava', 'Ghosh', 2, 55000, '2019-07-23'),
(104, 'Arik', 'Saha', 3, 70000, '2021-01-10'),
(105, 'Jessica', 'Wilson', 4, 48000, '2017-11-05');

-- Selecting all columns
SELECT * FROM employees123;

-- Selecting specific columns
SELECT first_name, last_name, salary FROM employees123;

-- Using WHERE to filter data 
SELECT * FROM employees123 WHERE dept_id = 3;

-- Employees with salary > 50000 AND hired after 2019-01-01
SELECT * FROM employees123 WHERE salary > 50000 AND hire_date > '2019-01-01';

-- Employees in HR or Marketing departments
SELECT * FROM employees123 WHERE dept_id = 1 OR dept_id = 4;

-- Employees whose last name starts with 'D'
SELECT * FROM employees123 WHERE last_name LIKE 'Saha';

-- Employees with salary between 50000 and 65000
SELECT * FROM employees123 WHERE salary BETWEEN 50000 AND 65000;

-- Employees ordered by salary descending
SELECT * FROM employees123 ORDER BY salary DESC;

-- Top 3 highest-paid employees
SELECT * FROM employees123 ORDER BY salary DESC LIMIT 3;

-- Joining tables to show department names
SELECT e.first_name, e.last_name, d.dept_name, e.salary
FROM employees123 e
JOIN departments d ON e.dept_id = d.dept_id
ORDER BY e.salary DESC;

