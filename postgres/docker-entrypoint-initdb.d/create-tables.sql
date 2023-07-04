
CREATE TABLE IF NOT EXISTS "users" (
    "id"  SERIAL PRIMARY KEY, 
    "name" VARCHAR(128) NOT NULL, 
    "username" VARCHAR(128) NOT NULL UNIQUE, 
    "hashed_password" VARCHAR(128) NOT NULL
);

/* password = letmein */
INSERT INTO "users" ("id","name","username","hashed_password") 
VALUES (DEFAULT,'Admin','admin','$2b$10$5EguhOmNO6hE4m11nenxkOncukTWmf/aEFcFm9pvENUZhberk1ZLe');

CREATE TABLE IF NOT EXISTS blogs (
    id  SERIAL PRIMARY KEY, 
    title VARCHAR(128) NOT NULL, 
    author VARCHAR(128) NOT NULL, 
    url VARCHAR(128) NOT NULL, 
    likes INTEGER NOT NULL, 
    owner_id INTEGER REFERENCES users (id)
);

INSERT INTO blogs (title, author, url, likes, owner_id) VALUES ('React patterns', 'Michael Chan', 'https://reactpatterns.com/', 7, 1);
INSERT INTO blogs (title, author, url, likes, owner_id) VALUES ('Go To Statement Considered Harmful', 'Edsger W. Dijkstra', 'https://www.mindspring.com/~mgrand/palace/hoax.html', 5, 1);