--Задание 9
--База данных: Компьютерная фирма
--Условие: Найдите производителей ПК с процессором не менее 450 Мгц.
--Вывести: maker
SELECT DISTINCT maker 
FROM Product 
JOIN PC ON Product.model = PC.model
WHERE speed >= 450; 