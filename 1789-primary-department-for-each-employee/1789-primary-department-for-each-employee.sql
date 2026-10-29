# Write your MySQL query statement below

select employee_id ,department_id
from Employee 
where employee_id IN (
    select employee_id 
    from employee 
    group by employee_id 
        having count(employee_id)=1
)  OR primary_flag='Y' 
