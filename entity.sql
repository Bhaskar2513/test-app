CREATE DATABASE company_db;
USE company_db;

-- ONE-TO-ONE

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL
);
alter table users add email varchar(50);
CREATE TABLE user_profiles (
    profile_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT UNIQUE,
    address VARCHAR(100),
    phone VARCHAR(15),
    email varchar(50),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
select * from users;
INSERT INTO users (username,email) VALUES ("Rahul","rahual25@gmail.com"),
("Roy","roy29@gmail.com");

INSERT INTO user_profiles (user_id, address, phone,email)
VALUES (1, 'Bangalore', '9876543210',"rahual25@gmail.com"),
(2,"chennai","9013698215","roy29@gmail.com");
select * from user_profiles;
SELECT u.username, p.address, p.phone,p.email
FROM users u
JOIN user_profiles p ON u.user_id = p.user_id;

-- ONE-TO-MANY

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO customers (name)
VALUES ('Amit');
INSERT INTO customers (name)
VALUES ('bhaskar');


INSERT INTO orders (order_date, customer_id)
VALUES
('2026-02-01', 1),
('2026-02-02', 1);
INSERT INTO orders (order_date, customer_id)
VALUES
('2026-02-01',1 ),
('2026-02-02', 2);

SELECT c.name, o.order_id, o.order_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

-- MANY TO MANY

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50)
);
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50)
);

CREATE TABLE student_courses (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO students (student_name)
VALUES ('Rahul'), ('Priya');

INSERT INTO courses (course_name)
VALUES ('Python'), ('SQL');

INSERT INTO student_courses (student_id, course_id)
VALUES
(1, 1),
(1, 2),
(2, 2);

SELECT s.student_name, c.course_name
FROM students s
JOIN student_courses sc ON s.student_id = sc.student_id
JOIN courses c ON sc.course_id = c.course_id;















