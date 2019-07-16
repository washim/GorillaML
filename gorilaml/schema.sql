DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS plugins;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE plugins (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  author_id INTEGER NOT NULL,
  name VARCHAR(100) UNIQUE NOT NULL,
  plugin_path TEXT NOT NULL DEFAULT 'system',
  status INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (author_id) REFERENCES user (id)
);

INSERT INTO `user` (username, password)
VALUES ('admin','admin');