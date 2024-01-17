--Added to git
CREATE DATABASE empDetail;

CREATE TABLE employee(
	id BIGSERIAL NOT NULL PRIMARY KEY,
	ename VARCHAR(50) NOT NULL,
	age INT,
	email VARCHAR(50) NOT NULL,
	gender VARCHAR(50),
	city VARCHAR(50)
)

SELECT * FROM employee;

drop table employee;

insert into employee (ename, age, email, gender, city)
values ('albert', 27, 'albert@gmail.com', 'male', 'ca');
insert into employee (ename, age, email, gender, city)
values ('emma', 23, 'emma@gmail.com', 'female', 'la');
insert into employee (ename, age, email, gender, city)
values ('monica', 24, 'monica@gmail.com', 'female', 'wdc');

--MAX, MIN, SUM, AVG, ROUND
Select max(age), 
min(age), 
sum(age), 
avg(age), round(avg(age)) from employee;

--ORDER BY
SELECT * FROM employee ORDER BY age desc;

--LIKE
SELECT * FROM employee WHERE ename LIKE '_a%';

--ILIKE
SELECT * from employee where ename ilike '_AR%'

--HAVING, AS
select age, count(age) as totalAge from employee group by age;

--LIMIT
select * from employee order by id desc limit 2;
