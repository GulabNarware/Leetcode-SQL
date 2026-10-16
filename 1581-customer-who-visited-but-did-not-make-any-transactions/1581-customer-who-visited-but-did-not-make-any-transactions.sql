# Write your MySQL query statement below

select V.customer_id ,Count(v.customer_id) as count_no_trans  from Visits as V 
left join Transactions AS T 
On V.visit_id = T.visit_id 
where T.transaction_id is Null
group by V.customer_id;
