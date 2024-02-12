CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(150) NOT NULL UNIQUE,
    -- CONSTRAINT uc_AuthorName UNIQUE (name) // can be used for later edge cases.
);
