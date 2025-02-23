create database BdEstadio;
use BdEstadio;

create table tbTorcedor(
	id int primary key auto_increment,
    CPF varchar(14) unique,
	nome varchar(50)
);

create table tbEmailTorcedor(
	idTorcedor int,
    email varchar(50),
    foreign key (idTorcedor) references tbTorcedor(id)
);

create table tbTelefoneTorcedor(
	idTorcedor int,
    telefone varchar(15),
    foreign key (idTorcedor) references tbTorcedor(id)
);

create table tbEquipe(
	id int primary key auto_increment,
    nomeEquipe varchar(50),
    nomeTecnico varchar(50)
);

create table tbEstadio(
	id int primary key auto_increment,
	nome varchar(50),
    capacidade int,
	rua varchar(50),
    bairro varchar(50),
    cidade varchar(50)
);

create table tbCampeonato(
	id int primary key auto_increment,
    nome varchar(50),
    nomeOrganizador varchar(50),
    dataInicioCamp date,
    dataFimCamp date
);

create table tbJogo(
	id int primary key auto_increment,
	timeCasa int,
    timeVisitante int,
    capacidadeMax int,
    dataJogo date,
    horaJogo time
);

create table tbIngressos(
	id int primary key auto_increment,
    preco int,
    tipo varchar(30),
    Data_compra date
);

create table tbSetor(
	id int primary key auto_increment,
    nome varchar(50),
    capacidade int,
    preco int
);

create table tbVenda(
	id int primary key auto_increment,
	qtdParcelas int,
    idSetor int,
    forma varchar(50)
);

create table tbPagParcela(
	id int primary key auto_increment,
    dataPag time,
    valorParcela float,
    descricao varchar(50)
);

create table tbFuncionario(
	id int primary key auto_increment,
    CPF varchar(14) unique,
    nome varchar(50),
    email varchar(50),
    salario int
);

create table tbTelefoneFuncionario(
	idFuncionario int,
    telefone varchar(15),
    foreign key (idFuncionario) references tbFuncionario(id)
);

create table tbEstadioSetor(
	idEstadio int,
    idSetor int
)ENGINE=InnoDB;

alter table tbIngressos add column idSetor int, add column idTorcedor int, add column idJogo int, 
add foreign key (idSetor) references tbSetor(id), add foreign key (idTorcedor) references tbTorcedor(id),
add foreign key (idJogo) references tbJogo(id);

alter table tbVenda add column idIngresso int,
add foreign key (idIngresso) references tbIngressos(id);

alter table tbFuncionario add column idEstadio int,
add foreign key (idEstadio) references tbEstadio(id);

alter table tbJogo add column IdEstadio int, add column idCampeonato int,
add foreign key (idEstadio) references tbEstadio(id), 
add foreign key (idCampeonato) references tbCampeonato(id),
add foreign key (timeCasa) references tbEquipe(id), 
add foreign key (timeVisitante) references tbEquipe(id);

alter table tbEstadioSetor add foreign key(idEstadio) references tbEstadio(id) on delete set null;
alter table tbEstadioSetor add foreign key(idSetor) references tbSetor(id) on delete set null;

alter table tbVenda add foreign key (idSetor) references tbSetor(id);

DELIMITER $$

CREATE TRIGGER trg_pos_venda
AFTER INSERT ON tbVenda
FOR EACH ROW
BEGIN
    DECLARE parcela_valor DECIMAL(10, 2);
    DECLARE i INT DEFAULT 1;
    DECLARE valor_total DECIMAL(10,2);

    -- Buscar o preço do setor correspondente à venda
    SELECT s.preco 
    INTO valor_total
    FROM tbSetor s 
    WHERE s.id = NEW.idSetor
    LIMIT 1;

    -- Evitar divisão por zero
    IF NEW.qtdParcelas > 0 THEN
        SET parcela_valor = valor_total / NEW.qtdParcelas;

        -- Loop para inserir parcelas
        WHILE i <= NEW.qtdParcelas DO
            INSERT INTO tbPagParcela (dataPag, descricao, valorParcela)
            VALUES (CURDATE(), CONCAT('Parcela ', i, ' de ', NEW.qtdParcelas), parcela_valor);

            SET i = i + 1;
        END WHILE;
    END IF;
END $$

DELIMITER ;