# Write your MySQL query statement below
select W.id as Id from Weather as W
join Weather as WS
on  DateDiff(W.recordDate,WS.recordDate)=1
where WS.temperature < W.temperature;