select title,count(person_id) from titles left join crewmembers using(title_id) group by title;