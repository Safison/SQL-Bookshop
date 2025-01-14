\c my_bookshop

ALTER TABLE books
ADD author_id INT,
ADD FOREIGN KEY (author_id) REFERENCES authors(author_id)
ON DELETE SET NULL;  

SELECT * from books
Order by  book_id;

--3, 2, 7, 14, 13, 15, 12,  14

