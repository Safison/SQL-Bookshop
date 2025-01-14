\c my_bookshop

\echo '\n Here is the total number of books we have by each author:\n'

SELECT author_name, count(book_id) AS total_books_by_Author
FROM books
JOIN authors
ON books.author_id = authors.author_id
GROUP BY authors.author_name;

\echo '\n Here is the average price for dystopian books:\n'
SELECT ROUND(AVG(books.price_in_Pence),2) FROM books
JOIN books_genres_junction
ON books.book_id = books_genres_junction.book_id
JOIN genres
ON genres.genre_id = books_genres_junction.genre_id
WHERE genres.genre_name = 'dystopian'