create database Futebol;
use Futebol;

create table Torcedor(
	id INT auto_increment,
    CPF INT,
    Nome char(50),
    Email char(50),
    primary key(id)
)ENGINE=InnoDB;

alter table Torcedor modify id int auto_increment unique;

create table Telefone(
	Telefone char(11)
)ENGINE=InnoDB;

alter table Telefone add column Id_Torcedor INT;
alter table Telefone add foreign key(Id_Torcedor) references Torcedor(id);

create table Ingressos(
	ID INT,
    Tipo char,
    Id_torcedor int,
    Id_jogo int,
    Id_Setor int
)ENGINE=InnoDB;

alter table Ingressos modify column ID int auto_increment;


create table Venda(
	ID int not null auto_increment,
    Valor_total int,
    Forma_de_Pagamento char,
    ID_Pagamento int,
    primary key(ID)
)ENGINE=InnoDB;

create table Venda_Ingressos(
	ID_Venda int,
    ID_Ingresso int
)ENGINE=InnoDB;

create table Pagamento(
	ID int unique auto_increment,
    Descricao varchar(200)
)ENGINE=InnoDB;


create table Jogo(
	ID int unique auto_increment,
    Time_casa char(100),
    Time_Visitante char(100),
    Horario_Jogo datetime,
    Capacidade_Max int,
    ID_Estadio int,
    primary key(ID)
)ENGINE=InnoDB;

create table Equipe(
	ID int unique auto_increment,
    Nome_Time varchar(100),
    Técnico int,
    primary key(ID)
)ENGINE=InnoDB;

create table Campeonato(
	ID int unique auto_increment,
    Data_Camp date,
    Nome_Camp varchar(100),
    Organizador varchar(100),
    primary key(ID)
)ENGINE=InnoDB;

create table Jogo_Time(
	ID_Jogo int,
    ID_Equipe int
)ENGINE=InnoDB;

alter table Jogo_Time add foreign key(ID_Jogo) references Jogo(ID);
alter table Jogo_Time add foreign key(ID_Equipe) references Equipe(ID);

create table Jogo_Campeonato(
	ID_Jogo int,
    ID_Campeonato int
)ENGINE=InnoDB;

alter table Jogo_Campeonato add foreign key(ID_Jogo) references Jogo(ID);
alter table Jogo_Campeonato add foreign key(ID_Campeonato) references Campeonato(ID);

create table Estadio(
	ID int,
    Nome_Est varchar(100),
    Capacidade_Total int,
    Endereco varchar(200),
    primary key(ID)
)ENGINE=InnoDB;

create table Funcionario(
	ID_Func int unique auto_increment,
    ID_Estadio int,
    Nome_Funcionario varchar(100),
    Salario int
)ENGINE=InnoDB;

alter table Funcionario add foreign key(ID_Estadio) references Estadio(ID);

create table Setor(
	ID int unique auto_increment,
    Preco_Base int,
    Nome varchar(100),
    ID_Estadio int,
    primary key(ID)
)ENGINE=InnoDB;  

alter table Setor add foreign key(ID_Estadio) references Estadio(ID);