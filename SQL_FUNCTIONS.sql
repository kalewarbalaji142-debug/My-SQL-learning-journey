
-- ====================================== SQL FUNCTIONS ======================================

-- USE startersql;
-- SELECT * FROM users;

-- =====================================================================
-- 1) AGGREGATE FUNCTIONS
--    Perform a calculation on a set of rows and return one summary value. Almost always paired with GROUP BY for per-category totals.
-- =====================================================================

-- COUNT()
-- counts matching rows. COUNT(*) counts every row.

-- SELECT COUNT(*) FROM users;
-- SELECT COUNT(*) FROM users WHERE gender = 'Male';
-- SELECT COUNT(*) FROM users WHERE gender = 'female';
-- SELECT COUNT(*) FROM users WHERE salary > 70000;

-- MIN() / MAX()
-- smallest and largest value in a column.
-- SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;

-- SUM() 
-- adds up all values in a column.
-- SELECT SUM(salary) AS total_sum FROM users;

-- Grouped: total salary per gender.
-- SELECT gender, SUM(salary) AS sum_salary FROM users GROUP BY gender;

-- AVG() 
-- average (mean) value in a column.
-- SELECT AVG(salary) AS avg_salary FROM users;

-- Grouped: average salary per gender.
-- SELECT gender, AVG(salary) AS avg_salary FROM users GROUP BY gender;


-- =====================================================================
-- 2) STRING FUNCTIONS
--    LENGTH(), LOWER(), UPPER(), CONCAT()
-- =====================================================================
-- LOWER() converts text to lowercase.
-- LENGTH() returns the number of characters in a string.
-- EXAMPLE:
-- SELECT id, name, gender, LOWER(name) AS lower, LENGTH(name) AS name_length FROM users ORDER BY name_length ASC;
-- NOTE: HIGHER() is not a real MySQL function. the correct opposite of LOWER() is UPPER(). Kept here as a reminder.
-- EXAMPLE:
-- SELECT id, name, gender, UPPER(name) AS higher, LENGTH(name) AS name_length FROM users ORDER BY name_length DESC;

-- CONCAT() merges two or more strings into one.
-- EXAMPLE:
-- SELECT id, name, gender, CONCAT(LOWER(name), id) AS lower, LENGTH(name) AS name_length FROM users;

-- Example: building a "name <email>" style label.
-- SELECT id, name, gender, CONCAT(LOWER(name), ' <', email, '>') AS lower, LENGTH(name) AS name_length FROM users;
-- SELECT id, name, gender, CONCAT(LOWER(name), id) AS lower, LENGTH(name) AS name_length FROM users ORDER BY name_length ASC;


-- =====================================================================
-- 3) DATE FUNCTIONS
--    NOW(), YEAR(), MONTH(), DATEDIFF(), TIMESTAMPDIFF()
-- =====================================================================

-- NOW() 
-- current server date and time (same value every row).
-- SELECT id, name, gender,CONCAT(LOWER(name), id) AS lower, NOW() AS time, LENGTH(name) AS name_length FROM users;

-- YEAR(NOW()) 
-- just the current year.
-- SELECT id, name, gender, CONCAT(LOWER(name), id) AS lower, YEAR(NOW()) AS time, LENGTH(name) AS name_length FROM users;

-- YEAR(date_of_birth) 
-- extract birth year (yob = year of birth).
-- SELECT id, name, gender, CONCAT(LOWER(name), id) AS lower, YEAR(date_of_birth) AS yob, LENGTH(name) AS name_length FROM users;

-- Ordered by actual birth date.
-- SELECT id, name, gender, CONCAT(LOWER(name), id) AS lower, YEAR(date_of_birth) AS yob, LENGTH(name) AS name_length FROM users ORDER BY date_of_birth ASC;

-- MONTH(date_of_birth) 
-- extract birth month (1-12).
-- SELECT id, name, gender, CONCAT(LOWER(name), id) AS lower, MONTH(date_of_birth) AS month, LENGTH(name) AS name_length FROM users;

-- Sort by birth month regardless of year good for finding upcoming birthdays.
-- SELECT id, name, gender, CONCAT(LOWER(name), id) AS lower, MONTH(date_of_birth) AS month, LENGTH(name) AS name_length, FROM users ORDER BY MONTH(date_of_birth) ASC;

-- DATEDIFF(date1, date2) 
-- difference in whole days.
-- Find number of days each user has been alive.
-- SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days FROM users;
-- SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days FROM users ORDER BY days ASC;

-- TIMESTAMPDIFF(unit, start, end) -- difference in a chosen unit-- (YEAR, MONTH, DAY, etc). Used here to calculate age directly.
-- SELECT name, TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age FROM users;
-- SELECT name, TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age FROM users ORDER BY age ASC;


-- =====================================================================
-- 4) MATHEMATICAL FUNCTIONS
--    ROUND(), FLOOR(), CEIL(), MOD()
-- =====================================================================

-- ROUND() 
-- nearest whole number.

--  FLOOR() 
-- always rounds down.

-- CEIL() 
-- always rounds up.
-- EXAMPLE:
-- SELECT salary, ROUND(salary) AS rounded, FLOOR(salary) AS floored, CEIL(salary) AS ceiled FROM users;

-- MOD(id, 2) 
-- remainder after dividing id by 2 if 0 = even id, 1 = odd id 
-- useful for splitting rows into groups.
-- EXAMPLE:
-- SELECT id, MOD(id, 2) AS remainder FROM users;


-- =====================================================================
-- 5) CONDITIONAL FUNCTIONS
--    IF()
-- =====================================================================

-- IF(condition, value_if_true, value_if_false) 
-- inline if/else,
-- an alternative to a full CASE statement.
-- EXAMPLE:
-- SELECT name, gender, IF(gender = 'Female', 'Yes', 'No') AS is_female FROM users;

-- ==========================================================================================================================================