create database Gelaterie

use Gelaterie

create table INGHETATA(
	ID int primary key,
	Denumire VARCHAR(100) not null, 
	Descriere VARCHAR(100), 
	Pret real not null
);

create table CLIENT(
	ID int primary key,
	Nume VARCHAR(100) not null, 
	Adresa VARCHAR(100) not null, 
	DataNasterii date, 
	Email VARCHAR(100) not null UNIQUE, 
	DataAbonare date, 
	Activ bit not null
);

create table COMANDA(
	ID int primary key,
	IdClient int not null, 
	DataComanda date, 
	NrClienti int not null, 
	PretTotal real not null
);

create table INGHETATACOMANDATA(
	ID int primary key,
	IdComanda int not null, 
	IdInghetata int not null, 
	Cantitate int not null, 
	PretTotal real not null
);

alter table INGHETATACOMANDATA add foreign key (IdComanda) references COMANDA(ID);

alter table INGHETATACOMANDATA add foreign key (IdInghetata) references INGHETATA(ID);

alter table COMANDA add foreign key (IdClient) references CLIENT(ID);

insert into CLIENT values(1, 'Belgun Andra', 'Str. Anestin Ion, nr. 12', '2003-07-13', 'Belgun_Andra@yahoo.com', '2022-01-01', 1)
,(2, 'Constantin Razvan', 'B-d Carol I, nr. 45', '1996-11-12', 'Constantin_Razvan@yahoo.com', '2022-05-10', 0)
,(3, 'Paun Sofia', 'Str. Avram Iancu, nr. 72', '1998-01-01', 'Paun_Sofia@yahoo.com', '2022-02-07', 1)
,(4, 'Oprea Gabriela', 'Str. Amaradiei, nr. 89', '2000-05-10', 'Oprea_Gabriela@yahoo.com', '2022-02-07', 0)
,(5, 'Cocirla Maria', 'Str. Cornesului, nr. 145', '2002-04-27', 'Cocirla_Maria@yahoo.com', '2021-07-29', 0)
,(6, 'Iliescu Mirko', 'Str. Cujmir, nr. 15', '2003-06-01', 'Iliescu_Mirko@yahoo.com', '2021-10-01', 0)
,(7, 'Novac Maya', 'Str. Fluturi, nr. 61', '1997-03-21', 'Novac_Maya@yahoo.com', '2021-06-01', 1)
,(8, 'Dima Bianca', 'Str. Fratii Buzesti, nr. 102', '1999-07-11', 'Dima_Bianca@yahoo.com', '2022-07-28', 0)
,(9, 'Ene Alexandra', 'Str. Imparatul Traian, nr. 51', '2001-05-21', 'Ene_Alexandra@yahoo.com', '2021-09-20', 0)
,(10, 'Troaca Sofia', 'Str. Caraiman, nr. 6', '2000-01-30', 'Troaca_Sofia@yahoo.com', '2022-12-15', 0)
,(11, 'Lia Sofia', 'Aleea 1 Alunului, nr.12', '2002-04-07', 'Lia_Sofia@yahoo.com', '2022-01-01', 1)
,(12, 'Vlad Andreea', 'Str. Carpenului, nr. 47', '1995-08-20', 'Vlad_Andreea@yahoo.com', '2022-04-30', 1)
,(13, 'Campeanu Patrick', 'Str. Castanilor, nr. 95', '1996-09-13', 'Campeanu_Patrick@yahoo.com', '2021-07-04', 0)
,(14, 'Cocioran Adda', 'Aleea 1 Bilteni, nr. 12', '1997-08-25', 'Cocioran_Adda@yahoo.com', '2021-11-15', 0)
,(15, 'Motruna Andrei', 'Str. Cerna, nr. 125', '2001-11-11', 'Motruna_Andrei@yahoo.com', '2022-01-31', 1)
,(16, 'Novac Albert', 'Aleea 1 Capsunilor, nr. 7', '2000-09-09', 'Novac_Albert@yahoo.com', '2021-07-08', 0)
,(17, 'Rus Adriana', 'Str. Milcov, nr. 63', '1998-12-15', 'Rus_Adriana@yahoo.com', '2021-08-22', 1)
,(18, 'Costea Anisia', 'Str. Miraslau, nr. 25', '2001-10-10', 'Costea_Anisia@yahoo.com', '2022-02-20', 0)
,(19, 'Badoi Irina', 'Aleea 1 cocorului, nr. 74', '1999-02-21', 'Badoi_Irina@yahoo.com', '2022-03-05', 1)
,(20, 'Steolea David', 'Str. Mircesti, nr. 81', '2000-12-13', 'Steolea_David@yahoo.com', '2021-10-09', 1)


insert into COMANDA values(1, 1, '2022-01-25', 1, 113.60)
,(2, 11, '2022-04-17', 3, 56.70)
,(3, 19, '2022-02-21', 2, 53.00)
,(4, 15, '2022-03-07', 6, 170.40)
,(5, 11, '2021-08-15', 2, 43.80)
,(6, 3, '2021-10-19', 2, 37.80)
,(7, 20, '2021-06-03', 3, 90.00)
,(8, 20, '2022-03-13', 5, 89.50)
,(9, 15, '2021-09-25', 10, 184.00)
,(10, 1, '2022-12-18', 4, 93.60)
,(11, 17, '2022-01-02', 10, 365.00)
,(12, 17, '2022-05-01', 2, 43.80)
,(13, 20, '2021-07-11', 5, 143.00)
,(14, 1, '2021-11-20', 12, 280.80)
,(15, 1, '2022-02-02', 3, 53.70)
,(16, 15, '2021-07-09', 8, 231.20)
,(17, 3, '2021-08-24', 5, 149.50)
,(18, 3, '2022-02-20', 2, 36.70)
,(19, 7, '2022-03-06', 4, 71.60)
,(20, 19, '2021-11-10', 10, 368.00)

insert into INGHETATA values(1, 'INGHETATA cu vanilie Carte d`Or', 'cutie 750ml', 18.90)
,(2, 'INGHETATA Magnum cu vanilie si migdale', 'pe bat 4x100ml', 21.90)
,(3, 'INGHETATA cu cacao si sirop de cacao Aloma', 'caserola 1000ml', 18.40)
,(4, 'INGHETATA mini Magnum cu aroma de zmeura', 'pe bat 6x60ml', 21.90)
,(5, 'INGHETATA cu iaurt si fructe de padure Carte d`Or', 'cutie 900ml', 23.40)
,(6, 'INGHETATA Siviero Maria vanilie din Madagascar', 'caserola 1000ml', 28.40)
,(7, 'INGHETATA cu ciocolata si alune Carte d`Or', 'cutie 750ml', 18.90)
,(8, 'INGHETATA la caserola Betty Ice cu fructe de padure', 'cutie 900ml', 29.90)
,(9, 'INGHETATA cu aroma de ciocolata neagra si caramel sarat Haagen Dazs', 'pahar 420ml', 36.80)
,(10, 'INGHETATA Ben&Jerry`s cu unt de arahide', 'cutie 465ml', 30.00)
,(11, 'INGHETATA cu ciocolata Carte d`Or', 'cutie 900ml', 23.40)
,(12, 'INGHETATA cu caramel sarat Haagen Dazs', 'cutie 460ml', 36.50)
,(13, 'INGHETATA cu praline Nirvana', 'cutie 470ml', 28.90)
,(14, 'INGHETATA Aloma Profiterol', 'cutie 900ml', 18.35)
,(15, 'INGHETATA Tutti Neapoletana Corso', 'caserola 2000ml', 17.90)
,(16, 'INGHETATA Tutti Caraibe Corso', 'caserola 2000ml', 17.90)
,(17, 'INGHETATA la caserola Betty Ice fara zahar cu ciocolata', 'caserola 1100ml', 22.40)
,(18, 'INGHETATA Siviero de ciocolata', 'caserola 1000ml', 28.40)
,(19, 'Pachet INGHETATA Oreo sandwich', 'cutie 6x55ml', 17.90)
,(20, 'INGHETATA cu bucatele de biscuiti si caramel Carte d`Or', 'cutie 900ml', 26.50)

insert into INGHETATACOMANDATA values(1, 1, 16, 4, 113.60)
,(2, 2, 20, 3, 56.70)
,(3, 3, 12, 2, 53.00)
,(4, 4, 13, 6, 170.40)
,(5, 5, 10, 2, 43.80)
,(6, 6, 5, 2, 37.80)
,(7, 7, 20, 3, 90.00)
,(8, 8, 19, 5, 89.50)
,(9, 9, 4, 10, 184.00)
,(10, 10, 11, 4, 93.60)
,(11, 11, 15, 10, 365.00)
,(12, 12, 13, 2, 43.80)
,(13, 13, 19, 8, 143.00)
,(14, 14, 8, 12, 280.80)
,(15, 15, 15, 3, 53.70)
,(16, 16, 11, 8, 231.20)
,(17, 17, 15, 5, 149.50)
,(18, 18, 3, 2, 36.70)
,(19, 19, 17, 4, 71.60)
,(20, 20, 20, 10, 368.00)

select distinct denumire from INGHETATA as i where ID = 
any ( select IdInghetata from INGHETATACOMANDATA where Cantitate < 3 ) 
or not exists (select IdInghetata from INGHETATACOMANDATA where i.ID = IdInghetata);

create view view1([Nume Client], [Data Abonare], Comanda, [Data Comanda], [Pret Total]) as
select Nume, DataAbonare, co.ID, DataComanda, PretTotal from CLIENT as cl inner join COMANDA as co on cl.ID = IdClient

select * from view1

alter table CLIENT
add inghetata_pref int

create procedure ProcProdFav
as
begin
	declare
		@k int = 1,
		@nrmax int,
		@fav int
	set nocount off
	Set @nrmax = (Select Top (1) ID from INGHETATA order by id Desc)

	while @k <= @nrmax
	begin
	select @fav = (select Top (1) IdInghetata 
				   from INGHETATACOMANDATA, COMANDA 
				   where IdClient = @k and COMANDA.ID = IdComanda
				   group by IdInghetata order by SUM(Cantitate) DESC)
	update CLIENT set inghetata_pref = @fav where ID = @k
	if (@fav > 0)
	PRINT 'CLIENTul cu ID-ul = ' + CAST(@k as nvarchar(5)) +' are ca produs favorit ' + CAST(@fav as nvarchar(5))
	else
	PRINT 'CLIENTul cu ID-ul = ' + CAST(@k as nvarchar(5)) +' nu are nici un produs favorit'
	set @k = @k + 1
	end
end

execute ProcProdFav

create procedure ProcProdFav2
@k int
as
begin
	declare
	@fav int
	set nocount off

	select @fav = (select Top (1) IdInghetata 
				   from INGHETATACOMANDATA, COMANDA 
				   where IdClient = @k and COMANDA.ID = IdComanda
				   group by IdInghetata order by SUM(Cantitate) DESC)
	update CLIENT set inghetata_pref = @fav where ID = @k
	if (@fav > 0)
		PRINT 'CLIENTul cu ID-ul = ' + CAST(@k as nvarchar(5)) +' are ca produs favorit ' + CAST(@fav as nvarchar(5))
	else
		PRINT 'CLIENTul cu ID-ul = ' + CAST(@k as nvarchar(5)) +' nu are nici un produs favorit'
end


CREATE TRIGGER mesaj_insert
ON COMANDA
FOR INSERT, UPDATE
as
declare
@IdClient int
begin
	select @IdClient = IdClient from inserted
	execute ProcProdFav2 @k = @IdClient 
end

insert into COMANDA values(21, 1, '2022-01-25', 1, 113.60)