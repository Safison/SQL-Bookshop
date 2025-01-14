\c my_bookshop;

-- create the agents table here

CREATE TABLE agents(
    agent_id SERIAL PRIMARY KEY,
    agent_name VARCHAR(100),
    author_revnue INT,
    author_id INT REFERENCES authors(author_id)

);


ALTER TABLE authors
ADD author_contact VARCHAR(100);



 

