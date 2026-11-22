# IMDB Movies SQL Project

SQL analysis of IMDB movies and directors using MySQL.

## Project Goal
Use SQL to answer business questions about movies and directors, such as popularity, profit (bankable movies), and the directors with the most movies.

## Tools Used
- MySQL
- MySQL Workbench

## Database
- Database name: `project_movie_database`
- Table `directors`: id, name, gender, department
- Table `movies`: id, original_title, budget, popularity, release_date, revenue, title, vote_average, vote_count, overview, tagline, uid, director_id

## Questions Solved
1. Get all data about movies
2. Get all data about directors
3. Count how many movies are present
4. Find the directors James Cameron, Luc Besson, and John Woo
5. Find all directors with names starting with S
6. Count female directors
7. Find the first 10 women directors
8. Find the 3 most popular movies
9. Find the 3 most bankable movies (revenue - budget)
10. Find the highest average vote since January 1st, 2000
11. Find the movies directed by Brenda Chapman
12. Find the director who made the most movies
13. Find the most bankable director

## Merge Note
The movies and directors tables were joined using `directors.id` = `movies.director_id`. The movie `id` column was dropped, so `director_id` is shown as `id`.

## Files
- `IMDB_movies.sql` - all SQL queries
- `movies_directors_merge.csv` - merged movies and directors data
- `Director.csv` - directors data
