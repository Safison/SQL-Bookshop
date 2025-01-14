\c my_bookshop;

INSERT INTO agents (agent_name, author_revnue, author_id)
VALUES ('Galactic Literary Agency', 89900,3),
('Prince Literary Services',69900,2),
('Rabbit Representation',59900,7),
('Austen Authors Agency',52200,14),
('Orwell Literary Management',79900,13);

UPDATE authors SET author_contact = 'douglas@email.com' WHERE author_id = 3;
UPDATE authors SET author_contact = 'antoine@email.com' WHERE author_id = 2;
UPDATE authors SET author_contact = 'beatrix@email.com' WHERE author_id = 7;
UPDATE authors SET author_contact = 'jane@email.com' WHERE author_id = 14;
UPDATE authors SET author_contact = 'george@email.com' WHERE author_id = 13;
