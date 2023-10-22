--- stacks

-- avg transactions
select
 avg(countoftx) avg_count
 from(
select
block_time::date
, count( id) countoftx
from TRANSACTIONS
where block_time::date between '2023-01-01' and '2023-03-31'
 and status = 1
 group by 1 ) as subq
