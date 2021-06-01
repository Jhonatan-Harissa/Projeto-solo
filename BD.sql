create database fred_mercury;
use fred_mercury;

create table music (
    idMusica int primary key auto_increment,
    nomeMusica varchar(80) not null
);

create table  login(
	idlogin int primary key auto_increment,
    login varchar(50) unique,
    senha varchar(50) not null,
    email varchar(80) not null,
    fkLogin int,
    foreign key(fkLogin) references music(idMusica)
);

insert into login values
	(null,'FredMercury','cantor','Fred.Mercury@gmail.com',1),
    (null,'BrianMay','guitarrista','Brian.May@gmail.com',2),
    (null,'JohnDeacon','baixista','John.Deacon@gmail.com',3),
    (null,'RoggerMeddows','baterista','Rogger.Meddows@gmail.com',4);
    
insert into music values
	(null,'Bohemian Rhapsody'),
    (null,'Don t Stop Me Now'),
    (null,'Radio Ga Ga'),
    (null,'We Are the Champions');
    
    select * from music;
    select * from login;
    