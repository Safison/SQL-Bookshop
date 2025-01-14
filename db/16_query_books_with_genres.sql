\c my_bookshop

\echo '\n Here are the genres for Emma:\n'

SELECT title, genre_name 
FROM books
JOIN books_genres_junction 
ON books.book_id = books_genres_junction.book_id
JOIN genres
ON genres.genre_id = books_genres_junction.genre_id
WHERE title = 'Emma';

\echo '\n Here are all the dystopian books:\n'

SELECT title,genre_name from books
JOIN books_genres_junction
ON books.book_id = books_genres_junction.book_id
JOIN genres
ON genres.genre_id = books_genres_junction.genre_id
WHERE genre_name = 'dystopian'