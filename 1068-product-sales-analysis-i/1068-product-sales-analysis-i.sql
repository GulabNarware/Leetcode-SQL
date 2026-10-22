select P.product_name , S.year,S.price from Sales as S
left join Product  as P on p.product_id = S.product_id