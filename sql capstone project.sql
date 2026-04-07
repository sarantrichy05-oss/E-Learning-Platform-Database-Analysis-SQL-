create database if not exists e_learning;
use e_learning;

create table if not exists learners(
learner_id int primary key,
full_name varchar(100),
country varchar(100)
);

create table if not exists courses(
course_id int primary key,
course_name varchar(100),
category varchar(100),
unit_price  decimal(10,2)
);

create table if not exists purchases(
purchase_id int primary key,
learner_id int,
course_id int,
foreign key(learner_id) references learners(learner_id),
foreign key(course_id) references courses(course_id),
quantity int,
purchase_date date
);

insert into learners values
(1,'Asha','India'),
(2,'Rahul','India'),
(3,'John','USA'),
(4,'Maria','UK'),
(5,'Velu','China'),
(6,'David','USA'),
(7,'Priya','India'),
(8,'Arun','India'),
(9,'Sophia','UK'),
(10,'Ashok','USA'),
(11,'Noah','USA'),
(12,'Emma','UK'),
(13,'Olivia','UK'),
(14,'Ava','USA'),
(15,'Isabella','Canada'),
(16,'Mia','Canada'),
(17,'Ethan','USA'),
(18,'Lucas','USA'),
(19,'Amelia','UK'),
(20,'Harper','USA'),
(21,'Arjun','India'),(22,'Kiran','India'),(23,'Ravi','India'),(24,'Sneha','India'),(25,'Anjali','India'),
(26,'Zhang','China'),(27,'Li','China'),(28,'Wang','China'),(29,'Kim','Korea'),(30,'Park','Korea'),
(31,'Ali','UAE'),(32,'Omar','UAE'),(33,'Sara','UAE'),(34,'Fatima','UAE'),(35,'Hassan','UAE'),
(36,'Carlos','Spain'),(37,'Sofia','Spain'),(38,'Leo','France'),(39,'Emma','France'),(40,'Noah','Germany'),
(41,'Luca','Italy'),(42,'Maya','Japan'),(43,'Ken','Japan'),(44,'Yuki','Japan'),(45,'Anna','Russia'),
(46,'Ivan','Russia'),(47,'Olga','Russia'),(48,'James','Australia'),(49,'Ella','Australia'),(50,'Jack','Australia');

Select * from learners;

insert into courses values
(101,'SQL Basics','Data',1000.00),
(102,'Advanced SQL','Data',1500.30),
(103,'Python Basics','Data',1200.60),
(104,'Python Advanced','Data',1800.95),
(105,'Excel Basics','Tools',800.32),
(106,'Excel Advanced','Tools',1200.30),
(107,'Power BI','Visualization',1300.32),
(108,'Tableau','Visualization',1400.60),
(109,'Machine Learning','AI',2000.40),
(110,'Deep Learning','AI',2500.50),
(111,'Statistics','Data',1100.40),
(112,'Data Cleaning','Data',900.20),
(113,'Data Analysis','Data',1600.47),
(114,'NLP','AI',2200.21),
(115,'Big Data','AI',2400.40),
(116,'AWS Basics','Cloud',1700.20),
(117,'Azure Basics','Cloud',1800.30),
(118,'GCP Basics','Cloud',1750.40),
(119,'Web Development','Development',1500.50),
(120,'JavaScript','Development',1300.70),
(121,'React','Development',1600.20),
(122,'Node.js','Development',1500.65),
(123,'HTML CSS','Development',900.40),
(124,'UI UX','Design',1400.21),
(125,'Figma','Design',1200),
(126,'Cyber Security','Security',2000),
(127,'Ethical Hacking','Security',2200),(128,'Networking','Security',1500),
(129,'Linux','System',1300),(130,'Shell Scripting','System',1400),
(131,'Data Warehousing','Data',1800),(132,'ETL','Data',1700),(133,'Spark','Data',2000),
(134,'Hadoop','Data',2100),(135,'R Programming','Data',1500),
(136,'Time Series','Data',1600),(137,'Business Analytics','Data',1700),(138,'Data Visualization','Visualization',1500),
(139,'Storytelling','Visualization',1200),(140,'Kubernetes','Cloud',2300),
(141,'Docker','Cloud',2000),(142,'DevOps','Cloud',2200),(143,'Agile','Management',1300),
(144,'Scrum','Management',1400),(145,'Project Management','Management',1600),
(146,'Communication','Soft Skills',800),(147,'Leadership','Soft Skills',1200),(148,'Interview Prep','Soft Skills',900),
(149,'Resume Building','Soft Skills',700),(150,'Career Guidance','Soft Skills',600);

Select * from courses;

insert into purchases values
(1,1,101,1,'2024-01-05'),
(2,1,102,1,'2024-01-20'),
(3,2,103,2,'2024-01-12'),
(4,2,101,1,'2024-02-01'),
(5,3,104,1,'2024-01-15'),
(6,3,105,1,'2024-02-10'),
(7,4,107,1,'2024-01-25'),
(8,5,108,2,'2024-01-18'),
(9,6,110,1,'2024-02-05'),
(10,7,102,1,'2024-02-08'),
(11,8,103,1,'2024-02-12'),
(12,8,104,1,'2024-02-20'),
(13,9,109,1,'2024-01-30'),
(14,10,101,2,'2024-01-22'),
(15,10,111,1,'2024-02-15'),
(16,11,112,1,'2024-02-18'),
(17,12,113,1,'2024-01-11'),
(18,13,114,2,'2024-02-09'),
(19,14,115,1,'2024-01-27'),
(20,15,116,1,'2024-02-03'),
(21,16,117,1,'2024-02-06'),
(22,17,118,2,'2024-01-14'),
(23,18,119,1,'2024-01-19'),
(24,19,120,1,'2024-02-21'),
(25,20,121,2,'2024-01-16'),
(26,21,122,1,'2024-02-11'),
(27,22,123,1,'2024-01-29'),
(28,23,124,2,'2024-02-07'),
(29,24,125,1,'2024-02-13'),
(30,25,126,1,'2024-01-23'),
(31,26,127,2,'2024-02-02'),
(32,27,128,1,'2024-01-26'),
(33,28,129,1,'2024-02-16'),
(34,29,130,2,'2024-01-28'),
(35,30,131,1,'2024-02-17'),
(36,31,132,1,'2024-02-19'),
(37,32,133,2,'2024-01-21'),
(38,33,134,1,'2024-02-04'),
(39,34,135,1,'2024-01-24'),
(40,35,136,2,'2024-02-14'),
(41,36,137,1,'2024-01-17'),
(42,37,138,1,'2024-02-22'),
(43,38,139,2,'2024-01-31'),
(44,39,140,1,'2024-02-23'),
(45,40,141,1,'2024-01-13'),
(46,41,142,2,'2024-02-24'),
(47,42,143,1,'2024-01-09'),
(48,43,144,1,'2024-02-25'),
(49,44,145,2,'2024-01-08'),
(50,45,146,1,'2024-02-26');

select * from purchases;

-- =========================================
-- DATA EXPLORATION USING JOINS
-- =========================================

-- INNER JOIN (Main Analysis)
select
    l.full_name as learner_name,
    l.country,
    c.course_name,
    c.category,
    c.unit_price,
    p.quantity,
    ROUND(p.quantity * c.unit_price,2) as total_amount,
    p.purchase_date
from purchases p
join learners l on p.learner_id = l.learner_id
join courses c on p.course_id = c.course_id
order by total_amount desc;

-- LEFT JOIN (All learners)
select
    l.full_name,
    c.course_name
from learners l
left join purchases p on l.learner_id = p.learner_id
left join courses c on p.course_id = c.course_id;

-- RIGHT JOIN (All courses)
select 
    c.course_name,
    l.full_name
from purchases p
right join courses c on p.course_id = c.course_id
left join learners l on p.learner_id = l.learner_id;

-- =========================================
-- ANALYTICAL QUERIES
-- =========================================

-- Q1. Display each learner’s total spending (quantity × unit_price) along with their country.
select 
    l.learner_id,
    l.full_name,
    l.country,
    ROUND(SUM(p.quantity * c.unit_price), 2) as total_spent
from purchases p
join learners l on p.learner_id = l.learner_id
join courses c on p.course_id = c.course_id
group by l.learner_id, l.full_name, l.country
order by total_spent desc;

-- Q2. Find the top 3 most purchased courses based on total quantity sold.
select
    c.course_name,
    SUM(p.quantity) as total_quantity
from purchases p
join courses c on p.course_id = c.course_id
group by c.course_name
order by total_quantity desc
limit 3;

-- Q3. Show each course category’s total revenue and the number of unique learners who purchased from that category.
select
    c.category,
    ROUND(SUM(p.quantity * c.unit_price), 2) as total_revenue,
    COUNT(distinct p.learner_id) as unique_learners
from purchases p
join courses c on p.course_id = c.course_id
group by c.category
order by total_revenue desc;

-- Q4. List all learners who have purchased courses from more than one category.
select 
    l.learner_id,
    l.full_name,
    COUNT(distinct c.category) as category_count
from purchases p
join learners l on p.learner_id = l.learner_id
join courses c on p.course_id = c.course_id
group by l.learner_id, l.full_name
having COUNT(distinct c.category) > 1;

-- Q5. Identify courses that have not been purchased at all.
select
    c.course_id,
    c.course_name
from courses c
left join purchases p on c.course_id = p.course_id
where p.purchase_id is null;

-- Q6. Top 5 Learners by Spending
SELECT 
    l.full_name AS learner_name,
    ROUND(SUM(p.quantity * c.unit_price), 2) AS total_spent
FROM purchases p
JOIN learners l ON p.learner_id = l.learner_id
JOIN courses c ON p.course_id = c.course_id
GROUP BY l.full_name
ORDER BY total_spent DESC
LIMIT 5;

-- Q7. Category Contribution Percentage
SELECT 
    c.category,
    ROUND(SUM(p.quantity * c.unit_price), 2) AS category_revenue,
    ROUND(
        (SUM(p.quantity * c.unit_price) * 100.0) / 
        (SELECT SUM(p2.quantity * c2.unit_price)
         FROM purchases p2
         JOIN courses c2 ON p2.course_id = c2.course_id),
    2) AS revenue_percentage
FROM purchases p
JOIN courses c ON p.course_id = c.course_id
GROUP BY c.category
ORDER BY revenue_percentage DESC;

-- Q8. High Demand Courses
SELECT 
    c.course_name AS course,
    SUM(p.quantity) AS total_quantity_sold
FROM purchases p
JOIN courses c ON p.course_id = c.course_id
GROUP BY c.course_name
ORDER BY total_quantity_sold DESC;

-- Q9. Revenue by Country
SELECT 
    l.country AS country,
    ROUND(SUM(p.quantity * c.unit_price), 2) AS total_revenue
FROM purchases p
JOIN learners l ON p.learner_id = l.learner_id
JOIN courses c ON p.course_id = c.course_id
GROUP BY l.country
ORDER BY total_revenue DESC;

-- Q10. Monthly Revenue Trend
SELECT 
    DATE_FORMAT(p.purchase_date, '%Y-%m') AS month,
    ROUND(SUM(p.quantity * c.unit_price), 2) AS monthly_revenue
FROM purchases p
JOIN courses c ON p.course_id = c.course_id
GROUP BY month
ORDER BY month;
