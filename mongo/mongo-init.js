db.createUser({
  user: 'the_username',
  pwd: 'the_password',
  roles: [
    {
      role: 'dbOwner',
      db: 'the_database',
    },
  ],
});

db.createCollection('blogs');

db.blogs.insert({
  title: 'Blog 1',
  author: 'Author 1',
  url: 'https://www.google.com',
  likes: 1,
});
db.blogs.insert({
  title: 'Blog 2',
  author: 'Author 2',
  url: 'https://www.google.com',
  likes: 2,
});
