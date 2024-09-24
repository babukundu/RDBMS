select a.decade||"s" as decade,a.title,a.rating from (select premiered/10*10 as decade,title,rating from titles join ratings using(title_id) order by premiered) as a
join (select premiered/10*10 as d,rating from ratings join titles using(title_id) group by premiered/10*10) as b
on a.decade=b.d and a.rating=b.rating;