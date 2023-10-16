--create table Countries(
--  [Id] int primary key identity(1,1),
--  [Name] nvarchar(50)

--)

--create table Cities(
--  [Id] int primary key identity(1,1),
--  [Name] nvarchar(50),
--  [CountryId] int foreign key references Countries(Id)

--)

--create table Employes(
--  [Id] int primary key identity(1,1),
--  [Name] nvarchar(50),
--  [Surname] nvarchar(50),
--  [Age] int, 
--  [Salary] decimal (3,2),
--  [Position] nvarchar(50),
--  [IsDeleted] bit default 'False',
--  [CitiyId] int foreign key references Cities(Id)

--)

--insert into Countries([Name])
--values ('Azerbaycan'),
--	   ('Turkiye'),
--	   ('Almaniya')

--insert into Cities([Name], [CountryId])
--values ('Baki',1),
--	   ('Gence',1),
--	   ('Berlin',3),
--	   ('Istanbul',2)

--select * from Cities


--insert into Employes([Name],[Surname],[Age],[Salary],[Position],[CitiyId])
--values ('Ismayil','Efendizde',29,1.50,'Full-stack developer', 1),
--	   ('Xeyyam','Isgenderov',30,0.50,'Front-end developer', 3),
--	   ('Pervin','Mirzeyev',30,2.50,'Back-end developer', 1),
--	   ('Huseyn','Huseynov',20,5.50,'Front-end developer', 4)



--select emp.Name, emp.Surname, ct.name as 'Citiy', co.Name as 'Country' from Employes emp
--inner join Cities ct
--on emp.CitiyId = ct.Id
--inner join Countries co
--on ct.CountryId = co.Id


--select emp.Name, co.Name as 'Country' from Employes emp
--inner join Cities ct
--on emp.CitiyId = ct.Id
--inner join Countries co
--on ct.CountryId = co.Id
--where emp.Salary > 1

--select ct.name as 'Citiy', co.Name as 'Country' from Cities ct
--inner join Countries co
--on ct.CountryId = co.Id

--select emp.Name, co.Name as 'Country' from Employes emp
--inner join Cities ct
--on emp.CitiyId = ct.Id
--inner join Countries co
--on ct.CountryId = co.Id
--where emp.IsDeleted = 'true'


--select * from Teachers
--union
--select * from Students

--select * from Teachers
--select * from Students

--select * from Teachers 
--except
--select * from Students

--select GETDATE() as 'Date'

--select * from Students
--where Id > 1
--order by Age asc


--select count (Age) as 'Count', Age
--From Students
--Where Age = 25
--Group By Age


--select count (Age) as 'Count', Age
--From Students
--Group By Age

--select count (Age) as 'Count', Age
--From Students
--Group By Age
--Having Age > 22
--order by count(*) asc

--Begin 

--declare @age int = 20
--print @age

--End

--Begin 

--declare @age int = 28
--select * from Students where Age = @age

--End

--Begin 

--declare @age int;
--select @age = 30
--print @age

--End

--declare @Variable1 Varchar(100)
--set @Variable1 = 'Save Water Save Life'
--print @Variable1


--Begin
--declare @mySalary int = 5000,
--		@avgSalary int = 4000;

--if @mySalary > @avgSalary
--	print 'My Salary is above the average salary.';
--else
--	print 'My Salary is less than the average salary.';

--END

--select * from Students where Age > 22


--create view getStudentsByAge as
--select * from Students where Age > 22


--select * from getStudentsByAge


--create view getArchiveEmployes as
--select emp.Name, co.Name as 'Country' from Employes emp
--inner join Cities ct
--on emp.CitiyId = ct.Id
--inner join Countries co
--on ct.CountryId = co.Id
--where emp.IsDeleted = 'true'

--select * from getArchiveEmployes