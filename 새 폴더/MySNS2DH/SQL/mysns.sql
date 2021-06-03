CREATE DATABASE IF NOT EXISTS mysns
DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE mysns;

CREATE TABLE IF NOT EXISTS user(
    id VARCHAR(128) PRIMARY KEY, -- "email"
    password VARCHAR(32),
    name VARCHAR(32),
    ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS feed(
    no INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id VARCHAR(128), -- "email"
    content VARCHAR(4096),
    images VARCHAR(1024), -- "url"
    ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);