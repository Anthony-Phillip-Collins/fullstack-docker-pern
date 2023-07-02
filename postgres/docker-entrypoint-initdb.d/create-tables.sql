CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255) NOT NULL,
    hashedPassword VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS blogs (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    url VARCHAR(255) NOT NULL,
    likes INTEGER NOT NULL
);

-- INSERT INTO blogs (title, author, url, likes) VALUES ('React patterns', 'Michael Chan', 'https://reactpatterns.com/', 7);
-- INSERT INTO blogs (title, author, url, likes) VALUES ('Go To Statement Considered Harmful', 'Edsger W. Dijkstra', 'https://www.mindspring.com/~mgrand/palace/hoax.html', 5);
-- INSERT INTO blogs (title, author, url, likes) VALUES ('Canonical string reduction', 'Edsger W. Dijkstra', 'http://www.cs.utexas.edu/~EWD/transcriptions/EWD08xx/EWD808.html', 12);
-- INSERT INTO blogs (title, author, url, likes) VALUES ('First class tests', 'Robert C. Martin', 'http://blog.cleancoder.com/uncle-bob/2017/05/05/TestDefinitions.htmll', 10);
-- INSERT INTO blogs (title, author, url, likes) VALUES ('TDD harms architecture', 'Robert C. Martin', 'http://blog.cleancoder.com/uncle-bob/2017/03/03/TDD-Harms-Architecture.html', 0);
-- INSERT INTO blogs (title, author, url, likes) VALUES ('Type wars', 'Robert C. Martin', 'http://blog.cleancoder.com/uncle-bob/2016/05/01/TypeWars.html', 2);
