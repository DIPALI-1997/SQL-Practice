#Displays a list of available databases.
show databases;

#Switches to the “class_11” database.
use class_11;

#Lists all tables in the current database.
show tables;

# Retrieves all records from the “course” table.
select * from course;

#Provides information about the structure of the “course” table.
describe course;

#Creates a new database named “sql_intro”.
create database sql_intro;

#Displays a list of available databases (including the newly created “sql_intro”).
show databases;

# Creates a table named “emp_details” with specified columns.
create table emp_details(Name varchar(25), Age int, sex char(1), doj date, city varchar(15), salary float);

#Describes the structure of the “emp_details” table.
describe emp_details;

# Inserts records into the “emp_details” table.
insert into emp_details values
("Jimmy", 35, "M", "2005-05-30", "Chikago", 70000),
("Shane", 30, "M", "1999-06-25", "Seattle", 55000),
("Marry", 28, "F", "2009-03-10", "Boston", 62000),
("Dwavne", 37, "M", "2011-07-12", "Austin", 57000),
("Sara", 32, "F", "2017-10-27", "NewYork", 72000),
("Ammy", 35, "F", "2014-12-20", "Seattle", 80000);

#Retrieves all records from the “emp_details” table.
select * from emp_details;

#Lists unique city names from the “emp_details” table.
select distinct city from emp_details;

#Counts the number of records in the “emp_details” table.
select count(name) from emp_details;

#
select count(name) as count_name from emp_details;

#Calculates the total salary from the “emp_details” table.
select sum(salary) from emp_details;

# Computes the average salary from the “emp_details” table.
select avg(salary) from emp_details;

#Retrieves specific columns from the “emp_details” table.
select name, age, city from emp_details;

#Filters records where age is greater than 30.
select * from emp_details where age>30;

#Retrieves specific columns based on sex being “F”.
select name, sex, city from emp_details where sex="F";

# Filters records for specific cities.
select * from emp_details where
city="chikago" or city="Austin";


select * from emp_details where
city in ("Chikago", "Austin");

#Retrieves records with dates between specified range.
select * from emp_details where 
doj between "2000-01-01" and "2010-12-31";

#Combines age and sex conditions.
select * from emp_details where
age>30 and sex="M";

#Groups records by sex and calculates total salary.
select sex, sum(salary) as total_salary from emp_details
group by sex;

#Orders records by salary in ascending order.
select * from emp_details order by salary;

#Orders records by salary in descending order.
select * from emp_details order by salary desc;

#Computes the result of the expression.
select (10+20) as subtract;

#Calculates total length of the string India
select length("India") as total_len;

#Repeats the “@” character 10 times.
select repeat("@", 10);

#Converts “India” to uppercase.
select upper("India");

#Converts “INDIA” to lowercase.
select lower("INDIA");

#Retrieves the current date.
select curdate();

#Retrieves the day of the current date.
select day(curdate());

#Retrieves the current date and time.
select now();

# String functions

# Converts the string “India” to uppercase.
select upper("India") as upper_case;

#Converts the string “INDIA” to lowercase.
select lower("INDIA") as lower_case;

#Converts the string “INDIA” to lowercase (alternative syntax).
select lcase("INDIA") as lower_case;

#Calculates the length of the string “India”.
select character_length("India") as total_len;

#Retrieves the names and their corresponding lengths from the “emp_details” table.
select name, character_length(name) as total_len from emp_details;

#Retrieves the names and their corresponding lengths using an alternative function.
select name, char_length(name) as total_len from emp_details;

#Concatenates the strings “India”, " is", and " in Asia".
select concat("India", " is", " in Asia");

#Concatenates the strings and assigns the result to an alias “merged”.
select concat("India", " is", " in Asia") as merged;

#Retrieves student IDs, names, and a concatenated value of name and course enrollment.
select student_id, student_name, concat(student_name, "  ", student_course_enroll) as name_id 
from student;


use class_11;

#Reverses the string “India”.
select reverse ("India");

# Reverses the student names.
select reverse (student_name) from student;

# Replaces “vegetable” with “fruit” in the given string.
select replace("Orange is a vegetable", "vegetable", "fruit");

#Calculates the length of the trimmed string “India”.
select length("    India       ");

#Trims the leading spaces from the string “India”.
select ltrim("     India       ");

#Calculates the length of the string “India” (with extra parentheses).
select length(("   India       "));

use class_11;

#Calculates the length of the trimmed string “India” (alternative syntax).
select length(ltrim("     India     "));

#Calculates the length of the trimmed string “India” (alternative syntax).
select length(trim("     India     "));

#Finds the position of “fruit” in the given string.
select position("fruit" in "Orange is a fruit") as name;

#Retrieves the ASCII value of the character “a”.
select ascii("a");

#Retrieves the ASCII value of the character “4”.
select ascii("4");






 








 
