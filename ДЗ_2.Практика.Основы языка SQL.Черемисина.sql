/*Вывести только BusinessEntityID и LoginID из таблицы HumanResources.Employee 
для людей женского пола и младше 1969-01-29 (BirthDate).*/
Select BusinessEntityID, LoginID
From [AdventureWorks2017].[HumanResources].[Employee]
Where Gender = 'F' and BirthDate > '1969-01-29';


/*Вывести уникальные PersonType для людей из Person.Person, 
где LastName начинается с буквы М или с буквы N и обязательно заполнено поле MiddleName.*/
Select  distinct PersonType
From [AdventureWorks2017].[Person].[Person]
Where (LastName like 'M%' or LastName like 'N%') and MiddleName is not null;


/*Вывести данные из Sales.SpecialOffer начиная с наибольшего DiscountPct, 
которые начинали действовать с 2013-01-01 по 2014-01-01 (поле StartDate).*/
Select *
From Sales.SpecialOffer
Where StartDate between '2013-01-01' and '2014-01-02'
Order by DiscountPct desc;

/*Найти ProductID и Name из Production.Product, где в имени ProductNumber вторая буква “B” 
и последняя заканчивается на цифру, а ProductID упорядочивается в порядке убывания.*/
Select ProductID,Name
From Production.Product
Where ProductNumber like '_B%[0-9]'
Order by ProductID desc;

/*Вывести ProductId, Name из таблицы Production.Product где цвет либо Red, 
либо Silver или Black и Size имеет какое-либо значение*/
Select ProductId, Name
From Production.Product
Where Color in ('Red', 'Silver', 'Black') and Size is not null;


/*Вывести уникальные JobTitle из HumanResources.Employee, 
где SickLeaveHours меньше или равно 15 или VacationHours не больше 20,
но также необходимо исключить все JobTitle y которых есть слово ‘Vice President’ или ‘Manager’.*/
Select distinct JobTitle
From HumanResources.Employee
Where (SickLeaveHours <= 15 or VacationHours <= 20) and JobTitle not like '%Vice President%' and JobTitle not like '%Manager%'

/*Опишите задачу, которая решается следующим выражением: 
SELECT LastName, FirstName 
FROM Person.Person 
WHERE LastName LIKE 'R%' 
ORDER BY FirstName ASC, LastName DESC

Вывести из таблицы Person.Person столбцы LastName и FirstName, где 
LastName начинается на R, столбец FirstName упорядочен по возрастанию,  а столбец LastName - по убыванию.*/

