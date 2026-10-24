select Ac.machine_id ,round(avg(act.timestamp-ac.timestamp),3) as processing_time from Activity as Ac
join Activity as act 
where Ac.machine_id=act.machine_id 
&& Ac.process_id =act.process_id
&& Ac.activity_type='start'
&& act.activity_type='end'
group by Ac.machine_id;



