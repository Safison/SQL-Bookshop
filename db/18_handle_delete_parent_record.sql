\c my_bookshop

-- Deleting a book:
-- Modify the books_genres table in section 14 first

--Delete a book here:
Delete FROM books
Where book_id = 1;

SELECT title, genre_name FROM books
JOIN books_genres_junction 
ON books.book_id = books_genres_junction.book_id
JOIN genres
ON genres.genre_id = books_genres_junction.genre_id;

-- Deleting an author:
-- Modify the books table in section 09 first

-- Modify the books_genres table in section 14 first

-- Delete an author here:

SELECT title, author_name FROM books
JOIN authors
ON books.author_id = authors.author_id;

DELETE FROM authors
WHERE author_id = 14;

SELECT title, author_name FROM books
JOIN authors
ON books.author_id = authors.author_id;