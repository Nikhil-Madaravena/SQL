-- Create the `employee` table with columns for employee details
create table employee(
    empno number(4) primary key, -- Employee number (Primary Key)
    ename varchar2(10), -- Employee name (up to 10 characters)
    job varchar2(9), -- Job title (up to 9 characters)
    sal number(7,2), -- Salary (up to 7 digits with 2 decimal places)
    deptno number(2) -- Department number (Foreign Key to `dept` table)
);

-- Create the `dept` table with columns for department details
create table dept(
    deptno number(2) primary key, -- Department number (Primary Key)
    dname varchar2(14), -- Department name (up to 14 characters)
    loc varchar2(13) -- Location of the department (up to 13 characters)
);

-- Insert data into the `employee` table
insert into employee values(7839, 'KING', 'PRESIDENT', 5000, 10); -- Insert employee KING with job PRESIDENT, salary 5000, and department 10
insert into employee values(7566, 'JONES', 'MANAGER', 2975, 10); -- Insert employee JONES with job MANAGER, salary 2975, and department 10
insert into employee values(7698, 'BLAKE', 'MANAGER', 2850, 30); -- Insert employee BLAKE with job MANAGER, salary 2850, and department 30
insert into employee values(7782, 'CLARK', 'MANAGER', 2450, 10); -- Insert employee CLARK with job MANAGER, salary 2450, and department 10
insert into employee values(7788, 'SCOTT', 'ANALYST', 3000, 20); -- Insert employee SCOTT with job ANALYST, salary 3000, and department 20
insert into employee values(7900, 'JAMES', 'CLERK', 950, 30); -- Insert employee JAMES with job CLERK, salary 950, and department 30
insert into employee values(7844, 'TURNER', 'SALESMAN', 1500, 30); -- Insert employee TURNER with job SALESMAN, salary 1500, and department 30
insert into employee values(7900, 'ADAMS', 'CLERK', 1100, 20); -- Insert employee ADAMS with job CLERK, salary 1100, and department 20
insert into employee values(7654, 'MARTIN', 'SALESMAN', 1250, 30); -- Insert employee MARTIN with job SALESMAN, salary 1250, and department 30
insert into employee values(7499, 'KING', 'SALESMAN', 1600, 30); -- Insert employee KING with job SALESMAN, salary 1600, and department 30

-- Insert data into the `dept` table
insert into dept values(10, 'ACCOUNTING', 'NEW YORK'); -- Insert department 10 with name ACCOUNTING and location NEW YORK
insert into dept values(20, 'RESEARCH', 'DALLAS'); -- Insert department 20 with name RESEARCH and location DALLAS
insert into dept values(30, 'SALES', 'CHICAGO'); -- Insert department 30 with name SALES and location CHICAGO
insert into dept values(40, 'OPERATIONS', 'BOSTON'); -- Insert department 40 with name OPERATIONS and location BOSTON

-- Select all columns and rows from the `employee` table
select * from employee;

-- Select all columns and rows from the `dept` table
select * from dept;

-- Select the `ename` column (employee names) from the `employee` table
select ename from employee;

-- Select distinct employee names from the `employee` table
select DISTINCT ename from EMPLOYEE;

-- Select the name, salary, and job of the employee with employee number 7566
select ename, sal, job from employee where EMPNO=7566;

-- Select the name, salary, and job of employees with a salary greater than 2000
select ename, sal, job from employee where sal>2000;

-- Select the name, salary, and job of employees with a salary between 1000 and 2000
select ename, sal, job from employee where sal between 1000 and 2000;

-- Delete the employee with employee number 7839
delete from employee where empno=7839;

-- Delete the employee with employee number 7839 and salary greater than 2000
delete from employee where empno=7839 and sal>2000;

-- Update the name of the employee with employee number 7499 to 'Nick'
update employee SET ename='Nick' where empno=7499;

-- Increase the salary of the employee with employee number 7499 by 10%
update employee SET sal=sal*1.10 where empno=7499;

-- Describe the structure of the `emp` table (shows column details)
desc emp;

-- Rename the column `id` to `emp_id` in the `emp` table
alter table emp rename column id to emp_id;

-- Add a new column `emp_name` to the `emp` table with data type `varchar2(50)`
alter table emp add emp_name varchar2(50);

-- Modify the column `emp_name` in the `emp` table to have a data type of `varchar2(100)`
alter table emp modify emp_name varchar2(100);

-- Drop the column `emp_name` from the `emp` table
alter table emp drop column emp_name;

-- Remove all rows from the `emp` table without logging individual row deletions
truncate table emp;

-- Delete the `emp` table from the database
DROP TABLE emp;

-- Rename the table `employee` to `emp`
rename employee to emp;

-- Insert a row into the `student` table with user-provided values for RollNo, Name, and phone
insert into student values(&RollNo,'&Name',&phone);

create table student1(
    RollNo number(4) primary key,
    Name varchar2(20) NOT NULL,
    phone number(10),
    address varchar2(50),
    GPA number(3,2),
    age number(2) check(age>18),
    gender varchar2(2) check(gender in ('M', 'F')),
    deptno number(2), 
    CONSTRAINT chk_gpa CHECK (GPA BETWEEN 0 AND 5.0),
    CONSTRAINT dept_fk FOREIGN KEY (deptno) REFERENCES dept(deptno)
);

-- Insert data into student1 table
insert into student1 values(1, 'John Doe', 1234567890, '123 Main St', 3.5, 20, 'M', 10);
insert into student1 values(2, 'Jane Smith', 9876543210, '456 Elm St', 3.8, 15, 'F', 20);

select count(*) from employee;
select count(distinct deptno) from employee; -- Count distinct department numbers in employee table

select avg(sal) from employee; -- Calculate average sal of employees
select sum(sal) from employee; -- Calculate total sal of employees
select max(sal) from employee; -- Find maximum sal among employees
select min(sal) from employee; -- Find minimum sal among employees

select count(*) from employee where sal>2000; -- Count employees with sal > 2000
select count(*) from employee where sal between 1000 and 2000; -- Count employees with sal between 1000 and 2000

select ename from employee where ename like '%K%'; -- Select employee names containing 'A'
select ename from employee where ename like '___K%'; -- Select employee names starting with 'A'

select deptno, count(*) from employee group by deptno having avg(sal)>2000 order by deptno DESC; -- Group employees by department number and count them
select deptno, avg(sal) from employee group by deptno; -- Group employees by department number and calculate average sal

select deptno, count(*) from employee group by deptno having count(*)>2; -- Group employees by department number and count them

select ename, sal from employee order by sal DESC; -- Sort employees by sal in descending order

select ename, job from employee where job in ('MANAGER', 'CLERK'); -- Select employee names and jobs for specific job titles
select ename, sal, job from employee where sal between 1000 and 2000;
select ename, sal, job from employee where not job='CLERK';

-- String functions
select UPPER(ename) from employee;
select LOWER(ename) from employee; -- Convert employee names to lowercase
select LENGTH(ename) from employee; -- Get length of employee names
select CONCAT(ename, ' is a employee') as employee_info from employee; -- Concatenate employee names and job titles
select SUBSTR(ename, 1, 3) from employee; -- Get first 3 characters of employee names
select INSTR(ename, 'A') from employee; -- Find position of 'A' in employee names
select REPLACE(ename, 'A', 'X') from employee; -- Replace 'A' with 'X' in employee names
select TRIM(ename) from employee; -- Trim whitespace from employee names
select LPAD(ename, 10, '*') from employee; -- Left pad employee names with '*' to length 10
select RPAD(ename, 10, '*') from employee; -- Right pad employee names with '*' to length 10

-- Numerical Functions
select ROUND(sal) from employee; -- Round sal to nearest integer
select ABS(sal) from employee; -- Get absolute value of sal
select CEIL(sal) from employee; -- Get ceiling value of sal
select FLOOR(sal) from employee; -- Get floor value of sal
select MOD(sal, 100) from employee; -- Get remainder of sal divided by 100
select SIGN(sal) from employee; -- Get sign of sal
select SQRT(sal) from employee; -- Get square root of sal
select EXP(sal) from employee; -- Get exponential value of sal
select POWER(sal, 2) from employee; -- Get power of sal raised to 2

-- Date Functions
select sysdate from dual; -- Get current date
select to_char(sysdate, 'DD-MON-YYYY') from dual; -- Format current date
select ADD_MONTHS(sysdate, 6) from dual; -- Add 6 months to current date
select LAST_DAY(sysdate) from dual; -- Get last day of current month
select FLOOR(MONTHS_BETWEEN(sysdate, '01/01/2024')) from dual; -- Get months between two dates

-- Sub Queries
select ename from employee where sal=(select max(sal) from employee); -- Select employee with maximum sal

select ename from employee where deptno=(
    select deptno from employee where ename='JONES'
); -- Select employee names in the same department as Jones

select ename from employee where exists (
    select * from employee where deptno=10 and sal>2000
); -- Select employee names if there are employees in department 10 with sal > 2000

select ename from employee where sal > any (
    select sal from employee where deptno=10
); -- Select employee names with sal greater than any sal in department 10

select ename from employee where sal > all (
    select sal from employee where deptno=10
); -- Select employee names with sal greater than all sal in department 10

-- Joins
select e.ename, d.dname from employee e join dept d on e.deptno=d.deptno; -- Inner join employee and dept tables

select e.ename, d.dname from employee e left join dept d on e.deptno=d.deptno; -- Left outer join employee and dept tables

select e.ename, d.dname from employee e right join dept d on e.deptno=d.deptno; -- Right outer join employee and dept tables

select e.ename, d.dname from employee e full outer join dept d on e.deptno=d.deptno; -- Full outer join employee and dept tables