CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email varchar(100) UNIQUE NOT NULL,
    salary INT NOT NULL,
    department varchar(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO employees (name, email, salary, department) VALUES
('Al Shahariar Arafat Shawon', 'shahariarshawon.dev@gmail.com', 50000, 'IT'),
('Naim Sarker', 'naim.sarker@gmail.com', 65000, 'IT'),
('Gazi Rakib', 'gazi.rakib@gmail.com', 920000, 'HR'),
('MD Istiaq Ahmed', 'istiaq@gmail.com', 22000, 'HR'),
('Murad Hossain Munna', 'muradmunna.dev@gmail.com', 43000, 'IT'),
('Jhankar Mahbub', 'jhankar.mahbub@gmail.com', 48000, 'Design');

SELECT * FROM employees;

-- show only columns of name and salary

SELECT name, salary FROM employees;

-- use where conditions

select * from employees where salary>40000;

-- user order by

SELECT * FROM employees ORDER BY salary DESC; 

-- use limit
SELECT * FROM employees ORDER BY salary DESC LIMIT 3;

-- update data
UPDATE employees SET salary = 21500 where name= 'Al Shahariar Arafat Shawon';

-- delete data
DELETE FROM employees WHERE name = 'Jhankar Mahbub';

-- use between
SELECT * FROM employees WHERE salary BETWEEN 30000 AND 50000;

-- use IN
SELECT * FROM employees WHERE department IN ('IT', 'HR');

-- use count
SELECT COUNT(*) FROM employees;

-- use avereage
SELECT AVG(salary) FROM employees;

-- use group by
SELECT department, COUNT(*) FROM employees GROUP BY department;

-- use having
SELECT department, COUNT(*) FROM employees GROUP BY department HAVING COUNT(*) > 2;

-- add constraints with new table
CREATE TABLE users (
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
status VARCHAR(20) DEFAULT 'active',
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (name, email) VALUES
('Al Shahariar Arafat Shawon', 'shahariarshawon.dev@gmail.com'),
('Naim Sarker', 'naim.sarker@gmail.com'),
('Murrad Hossain Munna', 'muradmunna.dev@gmail.com');

-- add foreign key
-- users table already created
--orders table
CREATE TABLE orders(
    id SERIAL PRIMARY KEY,
    user_id INT,
    quantity INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO orders (user_id, quantity) VALUES
(1, 5);

-- use INNER JOIN
select users.name, orders.quantity from users
INNER JOIN orders ON users.id = orders.user_id;