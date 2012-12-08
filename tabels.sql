CREATE TABLE users
  (
    id_u       NUMBER(3) NOT NULL UNIQUE,
    user_name  VARCHAR2(255) NOT NULL UNIQUE,
    first_name VARCHAR2(255) NOT NULL,
    last_name  VARCHAR2 (255),
    email      VARCHAR2(255) NOT NULL UNIQUE,
    sex        VARCHAR2(2),
    birthday   DATE,
    city       VARCHAR2(255),
    country    VARCHAR2(255),
    password   VARCHAR2(255),
    register_date CURRENT_TIMESTAMP,
    --last_login date,
    CONSTRAINT id_u PRIMARY KEY
  );
CREATE TABLE friends_with
  (
    id_f NUMBER(5) NOT NULL UNIQUE,
    fk_u NUMBER(3) NOT NULL FOREIGN KEY REFERENCES users(id_u),
    fk_f NUMBER(3) NOT NULL FOREIGN KEY REFERENCES users(id_u),
    CONSTRAINT (id_f) PRIMARY KEY
  );
CREATE TABLE posts
  (
    id_p     NUMBER(7) NOT NULL,
--    fk_u     NUMBER(3) NOT NULL FOREIGN KEY REFERENCES users(id_u),
    tip      NUMBER(2) NOT NULL,
    permission number(2) not null 
    contents VARCHAR2(1000),
    CONSTRAINT (id_p) PRIMARY KEY
  );
CREATE TABLE likes
  (
  id_l number(9) not null;
  fk_p number(7) not null foreign key references posts(id_p),
  fk_u number(3) not null foreign key users(id_u),
  );