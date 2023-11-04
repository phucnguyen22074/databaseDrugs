drop database if exists drugSalesManagement
create database drugSalesManagement
go

use drugSalesManagement
go

create table patient
(
	IDpatient int primary key identity not null,
	PatientName nvarchar(250) not null,
	PatientAge int not null,
	PatientAddress nvarchar(500) not null,
	PatientPhone nvarchar(50) not null
)
go
create table InvoiceDetailsEntered
(
	IDInDeE int primary key identity not null,
	IDInDe int not null,
	IDmedicine int not null,
	quantity int not null,
	price int not null,
	tax float not null,
	unit nvarchar(50) not null
)
go
create table exportInvoiceDetails
(
	IDExInD int primary key identity not null,
	IDExIn int not null,
	IDmedicine int not null,
	quantity int not null,
	price int not null,
	tax float not null,
	unit nvarchar(50) not null
)
go
create table importInvoice
(
	IDInDe int primary key identity not null,
	IDdistributor int not null,
	deliver nvarchar(50) not null,
	receiver nvarchar(50) not null,
	totalDrugCost int not null,
	totaltax float not null,
	dateAdded datetime not null,
	dateOfWriting datetime not null
)
go
create table exportInvoice
(
	IDeI int primary key identity not null,
	IDpatient int not null,
	dateFounded datetime not null,
	totalDrugCost int not null,
	totaltax float not null,
	totalInvoiceAmount int not null,
)
go
create table Distributor
(
	IDDis int primary key identity not null,
	NameDis nvarchar(100) not null,
	AddressDis nvarchar(200) not null,
	Phone varchar(200) not null,
	Email varchar(200) not null,
	TaxCode varchar(200) not null,
	TextDis nvarchar(200) not null
)
go
create table Producer
(
	IDPro int primary key identity not null,
	NamePro nvarchar(100) not null,
	AddressPro nvarchar(200) not null,
	Phone varchar(200) not null,
	Email varchar(200) not null,
	TaxCode varchar(200) not null,
	TextPro nvarchar(200) not null
)
go
create table DrugGroup
(
	IDDg int primary key identity not null,
	NameDg nvarchar(100) not null,
	TextDg nvarchar(200) not null
)
go
create table Drug
(
	IDDr int primary key identity not null,
	NameDr nvarchar(100) not null,
	IDDg int not null ,
	SourceDr  nvarchar(100) not null,
	IDPro int not null ,
	Quantity int not null,
	Price int not null,
	Ingredient nvarchar(500) not null,
	Uses nvarchar(500) not null,
	HowToUse nvarchar(500) not null,
	Attention nvarchar(500) not null,
	Expiry date
)
go

CREATE TABLE account
(
    IDaccount int primary key identity not null,
    Username nvarchar(100) not null,
    Password nvarchar(100) not null,
    Role nvarchar(50) not null
);
go