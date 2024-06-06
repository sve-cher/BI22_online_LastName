/*--Извлечь все столбцы из таблицы Sales.SalesTerritory.
Select *
From Sales.SalesTerritory */

/*--Извлечь столбцы TerritoryID и Name из таблицы Sales.SalesTerritory.
Select TerritoryID, Name
From Sales.SalesTerritory*/

/*--Найдите все данные, которые существует для людей из Person.Person с
--LastName = ‘Norman’.
Select *
From Person.Person
Where LastName = 'Norman'*/


--Найдите все строки из Person.Person, где EmailPromotion не равен2.
--Пришлите все возможные решения.
Select *
From Person.Person
--Where EmailPromotion !=2
Where Not EmailPromotion = 2