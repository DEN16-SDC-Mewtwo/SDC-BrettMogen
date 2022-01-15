DROP DATABASE IF EXISTS overview;

CREATE DATABASE overview;

USE overview;

CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  name varchar(36) NOT NULL,
  slogan varchar(119) NOT NULL,
  description varchar(472) NOT NULL,
  category varchar(26) NOT NULL,
  default_price varchar(17) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE product_features (
  id int NOT NULL AUTO_INCREMENT,
  product_id INT,
  feature varchar(33) NOT NULL,
  value varchar(37) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (product_id) references products(id)
);

CREATE TABLE product_styles (
  id int NOT NULL AUTO_INCREMENT,
  product_id INT,
  name varchar(36) NOT NULL,
  original_price varchar(19) NOT NULL,
  sale_price varchar(14) NOT NULL,
  dflt BOOLEAN,
  PRIMARY KEY (id),
  FOREIGN KEY (product_id) references products(id)
);

CREATE TABLE photos (
  id int NOT NULL AUTO_INCREMENT,
  style_id INT,
  thumbnail_url varchar(250) NOT NULL,
  url varchar(250) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (style_id) references product_styles(id)
);

CREATE TABLE sku (
  id int NOT NULL AUTO_INCREMENT,
  style_id INT,
  quantity INT NOT NULL,
  size varchar(5) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (style_id) references product_styles(id)
);

CREATE TABLE related_products (
  id int NOT NULL AUTO_INCREMENT,
  product_id INT,
  related_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (product_id) references products(id),
  FOREIGN KEY (related_id) references products(id)
);