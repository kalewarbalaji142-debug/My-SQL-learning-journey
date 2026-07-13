-- UNIOUN AND UNION ALL :

-- CREATE TABLE admin_users (
-- id INT PRIMARY KEY,
--     name VARCHAR(100),
--     email VARCHAR(100),
--     gender ENUM('Male', 'Female', 'Other'),
--     date_of_birth DATE,
--     salary INT
-- );

-- INSERT INTO admin_users (id, name, email, gender, date_of_birth, salary) VALUES
-- (101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000),
-- (102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-09-20', 58000),
-- (103, 'Rakesh Yadav', 'rakesh@example.com', 'Male', '1989-11-05', 54000),
-- (104, 'Fatima Begum', 'fatima@example.com', 'Female', '1990-06-30', 62000);

USE startersql;

SELECT * FROM users;
SELECT * FROM addresses;
SELECT * FROM admin_users;

-- Use UNION to Combine Data :

-- SELECT name FROM users
-- UNION
-- SELECT name FROM admin_users;

-- UNION ALL Example
-- If you want to keep duplicate names (if any), use 

-- SELECT name FROM users
-- UNION ALL
-- SELECT name FROM admin_users;



-- SELECT id, name, date_of_birth, 'user' as role FROM users
-- UNION
-- SELECT id, name, date_of_birth,'admin' as role FROM admin_users ORDER BY date_of_birth;

-- SELECT id, name, date_of_birth, 'user' as role FROM users
-- UNION
-- SELECT id, name, date_of_birth,'admin' as role FROM admin_users ORDER BY date_of_birth DESC;


-- Rules of UNION:
-- 1. The number of columns and their data types must match in all statements.
-- 2. UNION removes duplicates by default.
-- 3. UNION ALL keeps duplicates.

-- When to Use UNION:
-- When you have two similar tables (like current and archived data).
-- When you need to combine filtered results (e.g., high-salary users from two sources).
-- When performing cross-category reporting.

