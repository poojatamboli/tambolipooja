USE project_movie_database;
SELECT * FROM movies;
select * from directors;
select count(*) total_movies from movies;
select * from directors where name in ('james cameron','luc besson','john woo');
select * from directors where name like 's%';
select count(id) female_directors_count from directors where gender = 1;
select name from directors where gender = 1 order by id asc limit 1 offset 9;
select original_title, popularity from movies order by popularity desc limit 3;
select original_title, revenue from movies order by revenue desc limit 3;
select original_title, vote_average from movies where release_date >= '2000-01-01' order by vote_average desc limit 1;
select T1.original_title from movies T1 join directors T2 on T1.director_id = T2.id where T2.name = 'Brenda Chapman';
select T2.name, sum(T1.revenue) Total_Bankability from movies T1 join directors T2 on T1.director_id group by T2.name  order by Total_Bankability desc limit 1;
select T2.name, sum(T1.revenue) Total_revenue from movies T1 join directors T2 on T1.director_id = T2.id group by T2.name order by Total_revenue desc limit 1;



