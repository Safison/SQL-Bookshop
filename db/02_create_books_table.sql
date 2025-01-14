DROP database IF EXISTS  my_bookshop;
CREATE database  my_bookshop;
\c my_bookshop;


CREATE TABLE books(
    book_id SERIAL PRIMARY KEY,
    title text,
    price_in_pence int,
    quantity_in_stock int,
    release_date date,
    is_fiction boolean
);