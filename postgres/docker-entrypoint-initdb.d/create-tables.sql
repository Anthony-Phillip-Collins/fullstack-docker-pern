
CREATE TABLE IF NOT EXISTS users (
    id  SERIAL PRIMARY KEY, 
    name VARCHAR(128) NOT NULL, 
    username VARCHAR(128) NOT NULL UNIQUE CONSTRAINT is_email CHECK (username ~* '^[A-Za-z0-9._+%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'), 
    hashed_password VARCHAR(128) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

/* password = letmein */
INSERT INTO users (id,name,username,hashed_password) 
VALUES (DEFAULT,'Admin','admin@foobar.com','$2b$10$5EguhOmNO6hE4m11nenxkOncukTWmf/aEFcFm9pvENUZhberk1ZLe');

CREATE TABLE IF NOT EXISTS blogs (
    id  SERIAL PRIMARY KEY, 
    title VARCHAR(128) NOT NULL, 
    author VARCHAR(128) NOT NULL, 
    url VARCHAR(128) NOT NULL, 
    likes INTEGER NOT NULL, 
    owner_id INTEGER REFERENCES users (id),
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO blogs (title, author, url, likes, owner_id)
VALUES ('React patterns', 'Michael Chan', 'https://reactpatterns.com/', 7, 1);

INSERT INTO blogs (title, author, url, likes, owner_id)
VALUES ('Kent C. Dodds’s Blog', 'Kent C. Dodds', 'https://kentcdodds.com/blog', 5, 1);

INSERT INTO blogs (title, author, url, likes, owner_id)
VALUES ('Robin Wieruch’s Blog', 'Robin Wieruch', 'https://www.robinwieruch.de/blog/', 3, 1);