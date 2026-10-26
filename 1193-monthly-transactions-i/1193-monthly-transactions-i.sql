select date_format(trans_date,'%Y-%m') as month, country,count(amount) as trans_count,sum(if(state='approved',1,0)) as approved_count,sum(amount) as trans_total_amount,sum(CASE WHEN state='approved' THEN amount ELSE 0 END) as approved_total_amount
from Transactions
group by month, country