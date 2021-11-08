create table employee (
id serial primary key,
employee_name varchar(50) not null);

select * from employee 
order by id;

insert into employee (id,employee_name, email) values (default, 'Liza p', 'liza@mail.ru'),
(default, 'katya s', 'katya@mail.ru'),
(default, 'pietr p', 'pietr@mail.ru'),
(default, 'alex s', 'alex@mail.ru'),
(default, 'sergey r', 'serg@mail.ru'),
(default, 'denis d', 'denis@mail.ru'),
(default, 'georg g', 'georg@mail.ru'),
(default, 'mark p', 'mark@mail.ru'),
(default, 'john s', 'john@mail.ru');

insert into employee (id,employee_name, email) values (default, 'maksim r', 'makss@mail.ru'),
(default, 'katya qr', 'katqr@mail.ru'),
(default, 'pietr rs', 'piterrs@mail.ru');
delete from employee where id = 2;

alter table employee 
 add column email varchar (50) ;
 
update employee set email = 'maksprybylski@gmail.com' 
where id = 1;

update employee set email = 'yana@mail.ru' 
where employee_name like 'Yana%';

=================================

create table salary (
id serial primary key,
annual varchar (10) not null);

select * from salary ;

alter table employee_salary rename to salary;

alter table salary alter column annual type int using annual::integer;

insert into salary (id, annual) values (default, 1000),
(default, 1100),
(default, 1200),
(default, 1300),
(default, 1400),
(default, 1500),
(default, 1600),
(default, 1700),
(default, 1800),
(default, 1900),
(default, 2000),
(default, 2100),
(default, 2200),
(default, 2300),
(default, 2400),
(default, 2500);

====================================

create table employee_salary (
id serial primary key,
employee_id int not null,
salary_id int not null,
foreign key (employee_id) 
  references employee (id),
foreign key (salary_id)
  references salary (id));

select * from employee_salary order by employee_id ;


insert into employee_salary (id, employee_id, salary_id)
values (default, 3, 1),
(default, 1, 2),
(default, 5, 3), 
(default, 22, 4),
(default, 23, 5), 
(default,11, 6),
(default, 20, 7),
(default, 15, 8),
(default, 18, 9),
(default, 16, 10),
(default, 17, 11),
(default, 23, 12),
(default, 19, 13), 
(default, 21, 14), 
(default, 22, 15),
(default, 24, 16); 

===================================

 create table roles ( 
 id serial primary key,
 role_name varchar (50) not null);
 
select * from roles;

insert into roles (id, role_name) values (default, 'Junior Python developer'),
(default, 'middle Python developer'),
(default, 'Senior Python developer'),
(default, 'Junior Java developer'),
(default, 'middle java developer'),
(default, 'senior java developer'),
(default, 'junior javascript developer'),
(default, 'middle javascript developer'),
(default, 'senior javascript developer'),
(default, 'junior manual QA engineer'),
(default, 'middle manual QA engineer'),
(default, 'senior manual QA engineer'),
(default, 'project management'),
(default, 'HR'),
(default, 'CEO'),
(default, 'sales manager'),
(default, 'junior automation QA engineer'),
(default, 'middle automation QA engineer'),
(default, 'senior automation QA engineer');


==========================================================

create table roles_employee (
id serial primary key,
employee_id int not null,
role_id int not null, 
foreign key (employee_id)
	references employee(id),
foreign key (role_id)
	references roles(id)
);

insert into roles_employee (id, employee_id, role_id) values 
(default, 1, 11),
(default, 3, 6), 
(default, 4, 9),
(default, 5, 7), 
(default, 6, 20),
(default, 7, 1),
(default, 8, 18),
(default, 9, 11),
(default, 10, 19),
(default, 11, 4),
(default, 12, 17),
(default, 13, 9), 
(default, 14, 16), 
(default, 15, 17),
(default, 16, 8), 
(default, 17, 3), 
(default, 18, 15),
(default, 19, 10),
(default, 20, 2),
(default, 21, 3),
(default, 22, 14), 
(default, 23, 6),
(default, 24, 4);
