
CREATE TABLE IF NOT EXISTS users (
    id  SERIAL PRIMARY KEY, 
    name VARCHAR(128) NOT NULL, 
    username VARCHAR(128) NOT NULL UNIQUE CONSTRAINT is_email CHECK (username ~* '^[A-Za-z0-9._+%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'), 
    hashed_password VARCHAR(128) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

/* password = letmein */
INSERT INTO users (id, name, username, hashed_password) 
VALUES (1, 'Admin', 'admin@foobar.com', '$2b$10$5EguhOmNO6hE4m11nenxkOncukTWmf/aEFcFm9pvENUZhberk1ZLe');

INSERT INTO users (id, name, username, hashed_password) 
VALUES (2, 'Frank', 'frank@foobar.com', '$2b$10$5EguhOmNO6hE4m11nenxkOncukTWmf/aEFcFm9pvENUZhberk1ZLe');

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
VALUES ('Robin Wieruch’s Blog', 'Robin Wieruch', 'https://www.robinwieruch.de/blog/', 7, 2);

INSERT INTO blogs (title, author, url, likes, owner_id)
VALUES ('Swizec Teller’s Blog', 'Swizec Teller TEST', 'https://swizec.com/blog/', 9, 2);

INSERT INTO blogs (title, author, url, likes, owner_id)
VALUES ('React patterns', 'Michael Chan', 'https://reactpatterns.com/', 6, 1);

INSERT INTO blogs (title, author, url, likes, owner_id)
VALUES ('Josh Comeau’s Blog', 'Josh Comeau', 'https://www.joshwcomeau.com/', 12, 1);

INSERT INTO blogs (title, author, url, likes, owner_id)
VALUES ('Overreacted TEST', 'Dan Abramov', 'https://overreacted.io/', 10, 1);

INSERT INTO blogs (title, author, url, likes, owner_id)
VALUES ('useHooks', 'ui.dev Team', 'https://usehooks.com/', 8, 1);

INSERT INTO blogs (title, author, url, likes, owner_id)
VALUES ('Kent C. Dodds’s Blog', 'Kent C. Dodds', 'https://kentcdodds.com/blog', 11, 2);