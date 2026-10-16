# Write your MySQL query statement below
select EmU.unique_id , EM.name from Employees as Em
left Join EmployeeUNI as EmU on Em.id = EmU.id 