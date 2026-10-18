# Write your MySQL query statement below
Select em.name , b.bonus 
FROM Employee AS em
left JOIN Bonus as B
on em.empId =b.empId
where b.bonus<1000 
    or b.bonus is Null;