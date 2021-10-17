-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employees.employee_name, salary.monthly_salary from employees
join salary on salary.employee_id = employees.id ;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employees.employee_name from employees
join salary on salary.employee_id=employees.id where salary.monthly_salary < 2000 ;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employees_salary.id, employees_salary.monthly_salary, employees.id as emp_id  from employees_salary 
left join employees on employees_salary.employee_id = employees.id
where employees.id is null;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employees_salary.id, employees_salary.monthly_salary, employees.id as emp_id  from employees_salary 
left join employees on employees_salary.employee_id = employees.id
where employees.id is null and employees_salary.monthly_salary < 2000;

-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employees.id, employees.employee_name, employees_salary.monthly_salary from employees
left join employees_salary on employees_salary.employee_id = employees.id
where employees_salary.monthly_salary is null;

-- 6.������� ���� ���������� � ���������� �� ���������.
select employees.id, employees.employee_name, roles_employees.employee_id 
--��������� ������� employees, roles_employyes, ����� roles

select employees_salary from employees
 right join employees_salary
 on employees.id = employees_salary.id;