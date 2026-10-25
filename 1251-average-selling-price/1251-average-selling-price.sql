# Write your MySQL query statement below
select p.product_id, ifnull(round(sum((u.units*p.price))/sum(u.units),2),0.00) as average_price
FROM Prices as p
LEFT JOIN UnitsSold  as u
on p.product_id =u.product_id 
and u.purchase_date BETWEEN p.start_date and p.end_date
group by p.product_id