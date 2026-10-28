--Задача 4
--База данных: Компьютерная фирма
--Условие: Найдите все записи таблицы Printer для цветных принтеров.
--Вывести: code, model, color, type, price
SELECT * FROM Printer
WHERE color = 'y'