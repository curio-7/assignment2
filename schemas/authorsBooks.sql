CREATE TABLE authors_books (
    author_id INT,
    book_id INT,
    PRIMARY KEY (author_id, book_id),
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);
