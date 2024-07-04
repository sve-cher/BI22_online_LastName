CREATE SCHEMA AlkoholBusiness;
GO
CREATE TABLE  AlkoholBusiness.Category 
(
    CategoryID int PRIMARY KEY, 
	CategoryName varchar(50) NOT NULL,
);

CREATE TABLE  AlkoholBusiness.SubCategory 
(
    SubCategoryID int PRIMARY KEY, 
	SubCategoryName varchar(50) NOT NULL,
	CategoryID int,
);

CREATE TABLE  AlkoholBusiness.Brand 
(
    BrandID int PRIMARY KEY, 
	BrandName varchar(50) NOT NULL,
);

CREATE TABLE  AlkoholBusiness.Country 
(
    CountryID int PRIMARY KEY, 
	CountryName varchar(50) UNIQUE NOT NULL,
);

CREATE TABLE  AlkoholBusiness.Warehouse 
(
    WarehouseID int PRIMARY KEY, 
	WarehouseName varchar(50) NOT NULL,
);

---constraints: NOT NULL
---birthday DATE NOT NULL CHECK (birthday > ‘1900-01-01’)
---phone VARCHAR(20) UNIQUE NOT NULL
---ADD FOREIGN KEY (position_id) REFERENCES Positions(id);