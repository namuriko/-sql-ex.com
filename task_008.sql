--Задание 8
--База данных: "Компьютерная фирма"
--Условие: Найдите производителя, выпускающего ПК, но не ноутбуки.
--Вывести: maker
SELECT maker 
FROM Product 
WHERE type = "PC"
AND maker NOT IN (
    SELECT maker
    FROM Product
    WHERE type = "Laptop"
);