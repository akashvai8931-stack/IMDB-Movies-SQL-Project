# a) Can you get all data about movies? 
		select * from movies;
        
# b) How do you get all data about directors?
        select * from directors;
        
# c) Check how many movies are present in IMDB. 
        select count(*) as all_movies
        from movies;
        
# d) Find these 3 directors: James Cameron ; Luc Besson ; John Woo
        select * from directors
        where name in ("James Cameron", "Luc Besson", "John Woo");
        
# e) Find all directors with name starting with S.
        select * from directors
        where name like 'S%';
        
# f) Count female directors.
        select count(*) AS female_directors 
        from directors
	    where gender = 1;

# g) Find the name of the 10th first women directors?
     select * from directors
     where gender = 1
     limit 10;
# h) What are the 3 most popular movies?
     select title, popularity
     from movies
     order by popularity desc
     limit 3 ; 
     
# i) What are the 3 most bankable movies?
    select title, revenue, budget, (revenue - budget) as profit
     from movies
     order by profit desc
     limit 3 ; 
     
# j) What is the most awarded average vote since the January 1st, 2000?
     select title, vote_average, release_date 
     from movies
     where release_date >= '2000-01-01'
     order by vote_average desc
     limit 1;
     
# k) Which movie(s) were directed by Brenda Chapman?
     select m.title, d.name as director_name
     from movies m
     join directors d on m.director_id = d.id
     where d.name = 'Brenda Chapman';

# l) Which director made the most movies?
     select d.name , count(*) as total_movies
     from movies m
     join directors d on m.director_id = d.id
     group by d.name 
     order by total_movies desc
     limit 1;

# m) Which director is the most bankable?
     SELECT d.name, SUM(m.revenue - m.budget) AS total_profit
     FROM movies m
	JOIN directors d ON m.director_id = d.id
    GROUP BY d.name
    ORDER BY total_profit DESC
    LIMIT 1; 
    
    USE project_movie_database;
    
    
# Merge the movies and directors tables into one new table
USE project_movie_database;
SELECT
    d.id,
    d.name,
    d.gender,
    d.department,
    m.original_title,
    m.title,
    m.budget,
    m.popularity,
    m.release_date,
    m.revenue,
    m.vote_average,
    m.vote_count,
    m.overview,
    m.tagline,
    m.uid
FROM movies m
JOIN directors d
    ON m.director_id = d.id;

