\c my_bookshop;

SELECT agent_name, author_contact
FROM agents JOIN authors
ON agents.author_id = authors.author_id;

SELECT agent_name, author_revnue FROM agents
WHERE author_revnue > 800;

SELECT agent_name, SUM(author_revnue)
FROM agents
GROUP BY agent_name;

SELECT agent_name, author_revnue
FROM agents
ORDER BY author_revnue DESC
LIMIT 1;

SELECT author_id FROM agents;
SELECT COUNT(author_id) FROM agents;