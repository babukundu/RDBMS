select titles.title,people.name from castmembers join people using(person_id) join ratings using(title_id) join titles using(title_id) where ratings.rating>=9;