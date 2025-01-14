\c my_bookshop

SELECT title, ARRAY_AGG(genre_name) FROM books
JOIN books_genres_junction 
ON books.book_id = books_genres_junction.book_id
JOIN genres
ON genres.genre_id = books_genres_junction.genre_id
GROUP BY title;


-- ALTER TABLE books
-- ADD review text,
-- ADD rating INT
-- CHECK (rating >=0 AND rating <= 10 );

-- INSERT INTO books (review, rating)
-- VALUES ('good book', 7),
-- ('nice book', 8)
-- ('very good book', 9)
-- ()

CREATE TABLE reviews
(review_id SERIAL PRIMARY KEY,
review text,
rating INT CHECK (rating >= 0 AND rating <= 10),
book_id INT REFERENCES books(book_id));



ALTER TABLE reviews
ADD user_id INT,
ADD user_name VARCHAR(100);

INSERT INTO reviews (review, rating, book_id,user_id, user_name)
VALUES ('good book', 7 , 2,1, 'John'),
('nice book', 8, 2,2,'Adam'),
('bad book',2, 4,1,'John'),
('amazing book', 9, 2,2,'Adam'),
('not so nice',4, 10,3,'Smith'),
('good', 6, 3,4,'Alex');

SELECT * FROM reviews 
WHERE book_id = 2;

SELECT title, ROUND(AVG(rating),0) AS Average
FROM books 
JOIN reviews
ON books.book_id = reviews.book_id
GROUP BY title;

SELECT title, review, rating 
FROM books JOIN reviews
ON books.book_id = reviews.book_id
WHERE (rating BETWEEN 7 AND 10) or (rating BETWEEN 0 AND 4) AND books.book_id = 2;

SELECT title, review, rating 
FROM books JOIN reviews
ON books.book_id = reviews.book_id
WHERE rating > 5;

SELECT user_name,review,rating FROM reviews
WHERE user_id = 1;

SELECT user_name, ROUND(AVG(rating),2) FROM reviews
WHERE user_id =1
GROUP BY user_name;

SELECT book_id FROM books
EXCEPT
SELECT book_id FROM reviews;

SELECT price_in_Pence FROM books;

SELECT DISTINCT price_in_Pence FROM books;


