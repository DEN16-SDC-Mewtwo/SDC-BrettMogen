DROP DATABASE IF EXISTS overview;

CREATE DATABASE overview:

USE overview;

CREATE TABLE products (
  id int NOT NULL AUTO_INCREAMENT,
  name varchar(50) NOT NULL,
  slogan varchar(50) NOT NULL,
  description varchar(250) NOT NULL,
  category varchar(50) NOT NULL,
  default_price varchar(10) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE product_information (
  id int NOT NULL AUTO_INCREAMENT,
  product_id INT references products(id),
  feature varchar(50) NOT NULL,
  value varchar(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE product_styles (
  id int NOT NULL AUTO_INCREAMENT,
  product_id INT references products(id),
  name varchar(50) NOT NULL,
  original_price varchar(50) NOT NULL,
  sale_price varchar(50) NOT NULL,
  default varchar(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE photos (
  id int NOT NULL AUTO_INCREAMENT,
  product_id INT references products(id),
  thumbnail_url varchar(50) NOT NULL,
  url varchar(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE sku (
  id int NOT NULL AUTO_INCREAMENT,
  product_id INT references products(id),
  number varchar(50) NOT NULL,
  quantity varchar(50) NOT NULL,
  size varchar(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE related_products (
  id int NOT NULL AUTO_INCREAMENT,
  product_id INT references products(id),
  related_id INT(50) NOT NULL,
  PRIMARY KEY (id)
);