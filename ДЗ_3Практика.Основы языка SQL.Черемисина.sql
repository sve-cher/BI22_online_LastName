--4. Решите на базе данных AdventureWorks2017 следующие задачи:

--a) Найти самый минимальный вес и самый максимальный размер продукта из Production.Product.
Select min(weight) as min_weight, max(size) as max_size
From Production.Product;

--b) Найти самый минимальный вес и самый максимальный размер продукта для каждой подкатегории ProductSubcategoryID 
--из Production.Product.
Select ProductSubcategoryID, min(weight) as min_weight, max(size) as max_size
From Production.Product
Group by ProductSubcategoryID;

--c) Найти самый минимальный вес и самый максимальный размер продукта для каждой подкатегории
--ProductSubcategoryID из Production.Product, где продукты должны иметь конкретный цвет (Color).
Select ProductSubcategoryID as ProductSubcategoryID_for_red, min(weight) as min_weight, max(size) as max_size
From Production.Product
Where Color = 'Red'
Group by ProductSubcategoryID;


--d) Найти все подкатегории продуктов ProductSubcategoryID из Production.Product, где самый минимальный вес продукта
--больше 50.


Select ProductSubcategoryID, min(weight) as min_weight
From Production.Product
Group by ProductSubcategoryID
Having min(weight) > 50

--e) Найти все подкатегории продуктов ProductSubcategoryID из Production.Product, где самый минимальный вес продукта с
--цветом Black больше 50.
Select ProductSubcategoryID, min(weight) as min_weight
From Production.Product
Where Color = 'Black'
Group by ProductSubcategoryID
Having min(weight) > 50;


--f) Вывести TaxType из Sales.SalesTaxRate, где минимальный TaxRate меньше 7.
Select TaxType
From Sales.SalesTaxRate
Group by TaxType
Having min(TaxRate) < 7;

