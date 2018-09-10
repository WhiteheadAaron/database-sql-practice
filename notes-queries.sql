

-- SELECT * FROM notes;

SELECT title, id FROM notes LIMIT 5;

-- SELECT id, title, created FROM notes;
-- SELECT title, id, created FROM notes;
-- SELECT created, title, id FROM notes;

-- SELECT * FROM notes WHERE title = 'Note 1';

-- SELECT * FROM notes WHERE title LIKE 'Cats';

UPDATE notes    
    SET title = 'Changed name', content = 'I changed your content'
    WHERE id = 1
    RETURNING *;

INSERT INTO notes 
    (title, content) VALUES
        ('Another note', 'I have made another note')
            RETURNING *;

DELETE FROM notes WHERE id > 20 RETURNING title, id;

SELECT title, id FROM notes;