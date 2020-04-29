select emp.emp_name, j.job_id, j.job_title from employees emp, jobs j
where emp.job_id = j.job_id;
-- 두개의 테이블 쓰는 join // from employees emp에서 emp는 별칭

select rownum, e.employee_id, e.emp_name, e.department_id, d.department_name 
from employees e, departments d;

select rownum, employee_id, emp_name 
from (select * from employees where salary>=7000);

select * from employees;

select e.employee_id, e.emp_name, d.department_id, d.department_name 
from employees e, departments d
where emp_name like 'Ne%' and e.department_id = d.department_id;

select * from departments;

select rownum, e.employee_id, e.emp_name, d.department_id, d.department_name, e.hire_date 
from employees e, departments d
where e.department_id = d.department_id and e.department_id=20
order by employee_id;

select rownum, e.emp_name, d.department_name 
from employees e, departments d
where e.department_id = d.department_id and job_id='SA_MAN';


select rownum, e.emp_name, e.department_id as "e", d.department_id as "d", job_id
from employees e, departments d
where e.department_id = d.department_id and e.department_id between 50 and 100;

select * from mvc_board
where btitle like '%답변%' or bcontent like '%답변%';

select rownum , m.* 
from mvc_board m;

select * from mvc_board 
where btitle like '%테스트%' or bcontent like '%테스트%';

select e1.employee_id, e1.emp_name, e1.manager_id, e2.emp_name
from employees e1, employees e2
where e1.manager_id = e2.employee_id and e1.employee_id=198;


select * from 
(select rownum rnum, bid, bname, btitle, bcontent, bdate, bhit, bgroup, bstep, bindent 
from (select * from mvc_board m order by bgroup desc, bid asc))
where rnum>=1 and rnum<=10;





