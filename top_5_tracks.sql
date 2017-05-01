--Provide a query that shows the top 5 most purchased tracks over all.

select Track.Name, sum(Track.UnitPrice) 'total sales'
from Track
group by Track.Name
order by sum(Track.UnitPrice) desc
limit 5;
