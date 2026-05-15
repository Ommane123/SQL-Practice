CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;
SELECT database();

create table Students(
	StudentID int auto_increment primary key,
    Name varchar(100),
    Age tinyint,
    Email varchar(100),
    JoinDate date
);

select * from Students;

insert into Students (Name, Age, StudentEmail, JoinDate)
values
('Om Mane', 21, 'ommane@gmail.com', '2025-02-20'),
('ravi awachar', 21, 'ravi@gmail.com', '2025-02-10');

alter table students add column City varchar(50);
alter table students modify Age smallint;
alter table  students rename column Email to StudentEmail;

insert into students (City)
value
('mumbai'),
('satara'),
('pune');

delete from students where StudentID in (4,5,6);
DELETE FROM students
WHERE StudentID IN (7,8);
-- delete from students where StudentID = 4;
delete from students where Name is null;
-- drop table if exists students

-- truncate table students;

update students set City = 'Satara' where StudentID = 1;
update students set City = 'Pune' where StudentID = 2;
update students set City = 'Mumbai' where StudentID = 3;