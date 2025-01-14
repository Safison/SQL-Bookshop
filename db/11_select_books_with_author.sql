\c my_bookshop

\echo '\n Here is a list of book titles with the corresponding author:\n'

SELECT title, author_name
FROM books
JOIN authors
ON books.author_id = authors.author_id;

\echo '\n Here is a list of authors without an associated book:\n'
SELECT author_name FROM authors;