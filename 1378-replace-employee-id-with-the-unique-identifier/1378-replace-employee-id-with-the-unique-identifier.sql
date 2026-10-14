# Write your MySQL query statement below
select Eu.unique_id ,Em.name from 
Employees as Em
Left join EmployeeUNI as Eu
On Em.id = Eu.id
;