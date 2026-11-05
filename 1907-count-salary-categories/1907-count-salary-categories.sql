select "Low Salary" as category,count(income) as  accounts_count
from Accounts 
where (income) IN
    (select income
    from accounts
    where income<20000
     )

UNION 

select "Average Salary" as category,count(income) as  accounts_count
from Accounts 
where (income) IN
    (select income
    from accounts
    where income between 20000 and 50000
     )


Union 

select "High Salary" as category,count(income) as  accounts_count
from accounts 
where (income)  in 
    (
        select income 
        from accounts 
        where income >50000
    )