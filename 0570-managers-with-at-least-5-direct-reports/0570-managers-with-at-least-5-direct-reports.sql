select em.name from Employee em
inner join Employee as em2
on em.id =em2.managerId
group by em2.managerId
having count(em2.managerId)>=5 ;