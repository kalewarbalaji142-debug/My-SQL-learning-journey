-- INFORMATION ABOUT PRIMARY KEY AND FOREIGN KEY:

-- PRIMARY KEY
-- PRIMARY KEY is a constraint in SQL that uniquely identifies each row in a table.
-- It is one of the most important concepts in database design.

-- PRIMARY KEY :
-- Must be unique
-- Cannot be NULL
-- Is used to identify rows in a table
-- Can be a single column or a combination of columns
-- Each table can have only one primary key.

-- CREATE TABLE users (
-- id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(100)
-- );



-- FOREIGN KEY:
-- A foreign key is a column that creates a link between two tables. It ensures that
-- the value in one table must match a value in another table.
-- This is used to maintain data integrity between related datausers

USE startersql;
-- DROP TABLE IF EXISTS addresses;

-- CREATE TABLE addresses (
-- id INT AUTO_INCREMENT PRIMARY KEY,
--     user_id INT,
--     street VARCHAR(255),
--     city VARCHAR(100),
--     state VARCHAR(100),
--     pincode VARCHAR(10),
--     CONSTRAINT new_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
--     );

-- INSERT INTO addresses (user_id, street, city, state, pincode)
-- VALUES
-- (1, '221B MG Road', 'Mumbai', 'Maharashtra', '400001'),
-- (22, '14 Park Street', 'Kolkata', 'West Bengal', '700016'),
-- (3, '32 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
-- (24, '5 North Usman Road', 'Chennai', 'Tamil Nadu', '600017'),
-- (5, '17 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001'),
-- (6, '55 Banjara Hills', 'Hyderabad', 'Telangana', '500034'),
-- (7, '88 Connaught Place', 'Delhi', 'Delhi', '110001'),
-- (8, '10 MG Marg', 'Dehradun', 'Uttarakhand', '248001'),
-- (9, '23 Brigade Road', 'Bengaluru', 'Karnataka', '560025'),
-- (10, '45 Marine Drive', 'Mumbai', 'Maharashtra', '400020'),
-- (11, '67 Ashoka Road', 'Delhi', 'Delhi', '110001'),
-- (12, '89 MG Road', 'Pune', 'Maharashtra', '411001'),
-- (13, '12 Brigade Road', 'Bengaluru', 'Karnataka', '560025'),
-- (14, '34 Park Street', 'Kolkata', 'West Bengal', '700016'),
-- (15, '56 Connaught Place', 'Delhi', 'Delhi', '110001'),
-- (16, '78 Marine Drive', 'Mumbai', 'Maharashtra', '400020'),
-- (17, '90 MG Marg', 'Dehradun', 'Uttarakhand', '248001'),
-- (18, '11 North Usman Road', 'Chennai', 'Tamil Nadu', '600017'),
-- (19, '33 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
-- (20, '22 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001');


SELECT * FROM users;
SELECT * FROM addresses;




-- QUICK SUMMARY :

-- Primary Key → Unique identifier for rows in its own table.
-- Foreign Key → Connects one table to another by referencing the primary key.
-- Primary Key = Unique + Not Null.
-- Foreign Key = May repeat, may be Null.
-- Primary Key defines identity; Foreign Key defines relationship.

-- -- Primary Key Example
-- CREATE TABLE Students (
--     student_id INT PRIMARY KEY,
--     name VARCHAR(50)
-- );

-- -- Foreign Key Example
-- CREATE TABLE Enrollments (
--     enrollment_id INT PRIMARY KEY,
--     student_id INT,
--     FOREIGN KEY (student_id) REFERENCES Students(student_id)
-- );






