-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.employee_name, salary.monthly_salary from employees
join salary on salary.employee_id = employees.id ;

-- 2. Вывести всех работников у которых ЗП меньше 2000.
select employees.employee_name from employees
join salary on salary.employee_id=employees.id where salary.monthly_salary < 2000 ;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees_salary.id, employees_salary.monthly_salary, employees.id as emp_id  from employees_salary 
left join employees on employees_salary.employee_id = employees.id
where employees.id is null;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees_salary.id, employees_salary.monthly_salary, employees.id as emp_id  from employees_salary 
left join employees on employees_salary.employee_id = employees.id
where employees.id is null and employees_salary.monthly_salary < 2000;

-- 5. Найти всех работников кому не начислена ЗП.
select employees.id, employees.employee_name, employees_salary.monthly_salary from employees
left join employees_salary on employees_salary.employee_id = employees.id
where employees_salary.monthly_salary is null;

-- 6.Вывести всех работников с названиями их должности.
select employees.id, employees.employee_name, roles_employees.employee_id 
--соединяем сначала employees, roles_employyes, затем roles

select employees_salary from employees
 right join employees_salary
 on employees.id = employees_salary.id;