
select ROUND(sum(if(order_date=customer_pref_delivery_date,1,0))*100/Count(Distinct customer_id),2) as immediate_percentage
from Delivery
where (customer_id,order_date) IN (
    select customer_id , MIN(order_date )
    from Delivery 
    group by customer_id
    )
;








--  round(AVG(count(datediff(order_date,customer_pref_delivery_date)=0),count(customer_id)),2)