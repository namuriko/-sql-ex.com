--Задание 7
--База данных: Компьютерная фирма
-- Условие: Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).
-- Вывести: model, price
SELECT a.model, a.price
FROM (
    SELECT Laptop.model, Laptop.price
    FROM Laptop

    UNION

    SELECT PC.model, PC.price
    FROM PC

    UNION

    SELECT Printer.model, Printer.price
    FROM Printer
) AS a
JOIN Product ON a.model = Product.model
WHERE Product.maker = 'B'
