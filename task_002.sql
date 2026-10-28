-- Задача 2
-- База данных: Компьютерная фирма
-- Условие: Найдите производителей принтеров. 
-- Вывести: maker
SELECT DISTINCT maker 
FROM Product
WHERE type = 'Printer'
