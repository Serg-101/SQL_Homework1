CREATE DATABASE homeWork_1;
USE homeWork_1;

-- Создайте таблицу с мобильными телефонами, используя графический интерфейс. 
CREATE TABLE phones -- Создает табличку с именем teachers
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(45),
    Manufacture VARCHAR(45),
    ProductCount INT,
    Price INT
);

-- Заполните БД данными. 
INSERT phones(ProductName, Manufacture, ProductCount, Price)
VALUES
	("iPhone X",	"Apple",	3,	76000),
	("iPhone 8",	"Apple",	2,	51000),
	("Galaxy S9",	"Samsung",	2,	56000),
	("Galaxy S8",	"Samsung",	1,	41000),
	("P20 Pro",		"Huawei",	5,	36000);

-- Выведите название, производителя и цену для товаров, количество которых превышает 2 
SELECT ProductName, Manufacture, Price
FROM phones 
WHERE ProductCount > 2;

-- Выведите весь ассортимент товаров марки “Samsung”
SELECT *
FROM phones
WHERE Manufacture = "Samsung";

-- С помощью регулярных выражений найти (можно использовать операторы “LIKE”, “RLIKE”):
-- Товары, в которых есть упоминание "Iphone"
SELECT *
FROM phones 
WHERE ProductName LIKE "Iphone";

-- "Galaxy"
SELECT *
FROM phones 
WHERE ProductName LIKE "Galaxy";

-- Товары, в которых есть ЦИФРЫ
SELECT *
FROM phones 
WHERE ProductName RLIKE "[0-9]";

-- Товары, в которых есть ЦИФРА "8"
SELECT *
FROM phones 
WHERE ProductName RLIKE "[8]";

