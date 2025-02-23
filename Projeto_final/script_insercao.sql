insert into tbEquipe(nomeEquipe, nomeTecnico) values 
('São Paulo', 'Luis Zubeldía'),
('Corinthians', 'Ramón Díaz'),
('Santos', 'Pedro Caixinha'),
('Palmeiras', 'Abel Ferreira'),
('Botafogo', 'Artur Jorge'),
('Flamengo', 'Filipe Luís'),
('Fluminense', 'Mano Menezes'),
('Vasco da Gama', 'Felipe Maestro'),
('Grêmio', 'Gustavo Quinteros'),
('Internacional', 'Roger Machado'),
('Atlético-MG', 'Cuca'),
('Cruzeiro', 'Fernando Diniz'),
('Bahia', 'Rogerio Ceni');

insert into tbEstadio(nome, capacidade, rua, bairro, cidade) values
('Morumbi', 66795, 'Praça Roberto Gomes Pedrosa', 'Morumbi', 'São Paulo'),
('Maracanã', 78838, 'R. Prof. Eurico Rabelo', 'Maracanã', 'Rio de Janeiro'),
('Vila Belmiro', 16798, 'Rua Princesa Isabel', 'Vila Belmiro', 'Santos'),
('Nilton Santos', 44661, 'R. José dos Reis', 'Engenho de Dentro', 'Rio de Janeiro'),
('Mineirão', 61927, 'Av. Antônio Abrahão Caram', 'São José', 'Belo Horizonte'),
('Arena MRV', 46000, 'Rua Cristina Maria de Assis', 'Califórnia', 'Belo Horizonte'),
('Neo Química Arena', 47605, 'Av. Miguel Ignácio Curi', 'Vila Carmosina', 'São Paulo'),
('Beira-Rio', 50842, 'Av. Padre Cacique', 'Praia de Belas', 'Porto Alegre'),
('Arena do Grêmio', 55662, 'Av. Padre Leopoldo Brentano', 'Farrapos', 'Porto Alegre'),
('Arena Fonte Nova', 50025, 'Ladeira da Fonte das Pedras', 'Nazaré', 'Salvador');

insert into tbCampeonato(nome, nomeOrganizador, dataInicioCamp, dataFimCamp) values
('Libertadores', 'CONMEBOL', '2025-02-05', '2025-11-29'),
('Campeonato Brasileiro', 'CBF', '2025-03-29', '2025-12-21'),
('Copa do Brasil', 'CBF', '2025-02-19', '2025-11-09'),
('Sulamericana', 'CONMEBOL', '2025-03-05', '2025-11-22');

insert into tbTorcedor (CPF, nome) values
('395.821.467-32', 'Carlos Mendes'),
('718.264.905-78', 'Fernanda Souza'),
('562.109.843-21', 'Ricardo Müller'),
('804.376.291-55', 'Julia Alves'),
('139.528.760-99', 'Thiago Pereira'),
('627.914.382-44', 'Amanda Ribeiro'),
('250.671.839-60', 'Lucas Martins');

insert into tbEmailTorcedor(idTorcedor, email) values
(1, 'carlosmendes.santos66@yahoo.com.br'),
(1, 'carlosms66@gmail.com'),
(2, 'nandasouzapr1@hotmail.com'),
(3, 'ricardo.muller07@gmail.com'),
(4, 'jualves21.02@gmail.com'),
(4, 'julia.alvesmartins2005@gmail.com'),
(5, 'thiagope.200392@outlook.com'),
(5, 'thiago92alves.pereira@gmail.com'),
(6, 'amanda03ribeiro09@gmail.com'),
(7, 'lucas.martinslm2004@gmail.com');

insert into tbTelefoneTorcedor(idTorcedor, telefone) values
(1, '11983476291'),
(2, '21967584930'),
(2, '21998234756'),
(3, '31945672890'),
(4, '35923784567'),
(5, '51978456239'),
(5, '51993284756'),
(6, '61984567213'),
(7, '71992837465'),
(7, '71967382941');

insert into tbFuncionario(CPF, nome, email, salario, idEstadio) values
('251.785.496-33', 'Carlos Silva', 'carlos.silva77@gmail.com', 2000, 2),
('537.924.881-45', 'Ana Souza', 'ana.souza98@hotmail.com', 1650, 3),
('174.368.102-76', 'Marcos Takahashi', 'marcos.takahashi21@outlook.com', 2050, 1),
('684.120.935-59', 'Juliana Costa', 'juliana.costa35@outlook.com', 2270, 1),
('491.623.758-20', 'Roberto Almeida', 'roberto.almeida99@yahoo.com.br', 1550, 7),
('832.174.659-61', 'Rafaela Rossi', 'rafaela.rossi43@gmail.com', 3000, 8),
('920.546.831-87', 'Ricardo Lima', 'ricardo.lima04@outlook.com', 3120, 6),
('621.553.099-96', 'Carolina Fonseca', 'carolinafsc32@gmail.com', 1820, 10),
('759.976.140-34', 'Juliano Vasques', 'juliano.vasques93@outlook.com', 2130, 9);

insert into tbTelefoneFuncionario(idFuncionario, telefone) values
(1, '21981074604'),
(1, '24924987434'),
(2, '13975079206'),
(3, '11937372067'),
(4, '11968403911'),
(4, '11973585148'),
(5, '11902774665'),
(6, '51935034449'),
(7, '31932678866'),
(8, '71947345507'),
(9, '51981328182'),
(9, '51991246719');

insert into tbSetor (id, nome, capacidade, preco) values 
(1, 'Arquibancada Inferior', 20000, 50), 
(2, 'Arquibancada Superior', 15000, 40), 
(3, 'Camarote VIP', 5000, 300.00),
(4, 'Arquibancada Leste', 25000, 60), 
(5, 'Arquibancada Oeste', 25000, 60), 
(6, 'Cadeiras Cobertas', 20000, 90), 
(7, 'Camarote Especial', 5000, 400);

insert into tbEstadioSetor (idEstadio, idSetor) values
(1, 1), (1, 2), (1, 3), (1, 6), (1, 7),
(2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6), (2, 7),
(3, 1), (3, 2), (3, 6),
(4, 1), (4, 2), (4, 3), (4, 5), (4, 7),
(5, 1), (5, 2), (5, 4), (5, 6), (5, 7),
(6, 1), (6, 2), (6, 3), (6, 5), (6, 7),
(7, 1), (7, 2), (7, 4), (7, 6), (7, 7),
(8, 1), (8, 3), (8, 5), (8, 6),
(9, 1), (9, 2), (9, 3), (9, 4), (9, 6),
(10, 1), (10, 2), (10, 4), (10, 5), (10, 6), (10, 7);

insert into tbJogo (idEstadio, timeCasa, timeVisitante, capacidadeMax, dataJogo, horaJogo, idCampeonato) values
(1, 1, 2, 50000, '2025-03-10', '19:00:00',1),
(3, 3, 4, 45000, '2025-03-11', '20:30:00',1),
(4, 5, 6, 60000, '2025-03-12', '21:00:00',2),
(2, 7, 8, 48000, '2025-03-13', '18:00:00',3),
(8, 9, 10, 55000, '2025-03-14', '19:30:00',2),
(6, 11, 12, 53000, '2025-03-15', '20:00:00',2),
(10, 13, 1, 40000, '2025-03-16', '21:45:00',3),
(7, 2, 3, 47000, '2025-03-17', '18:30:00',1),
(5, 4, 5, 49000, '2025-03-18', '19:15:00',4),
(2, 6, 7, 62000, '2025-03-19', '20:45:00',4);

insert into tbIngressos(tipo, Data_compra, idJogo, idTorcedor, idSetor) values
('Inteira', '2025-03-01', 1, 3, 3),
('Meia-entrada', '2025-03-03', 4, 1, 2),
('Inteira', '2025-03-10', 7, 4, 4),
('Inteira', '2025-02-28', 1, 1, 2),
('Meia-entrada', '2025-03-12', 8, 6, 5);

insert into tbVenda(idIngresso, forma, qtdParcelas, idSetor) values
(1, 'Crédito',2,1),
(2, 'Crédito',1,3),
(3, 'Débito',5,2),
(4, 'Pix',1,3),
(5, 'Débito',2,1);

#Selecionar nome do estádio onde na tabela tbEstadioSetor id == idEstadio -> nome na tabela setor para cada id pertencente na tabela tbEstadioSetor
select e.id, e.nome as 'Nome estádio', s.nome as 'Nome Setor', s.capacidade as 'Capacidade Setor',
s.preco as 'Preço Setor' from 
tbEstadio e inner join tbEstadioSetor es on e.id = es.idEstadio 
inner join tbSetor s where s.id = es.idSetor order by e.id; 

# Mostrar os jogos de cada equipe em cada campeonato (como id)
select j.timeCasa as "Time Visitante", j.timeVisitante as "Time Visitante" from tbJogo j;

# Mostra todos os jogos, suas equipes participantes, o nome do estádio, do campeonato e data e horário. Ordenado a partir do jogo mais recente
select j.id, eC.nomeEquipe as 'Time Casa', eV.nomeEquipe as 'Time Visitante', es.nome as 'Estádio', c.nome as 'Campeonato',
j.dataJogo as 'Data', j.horaJogo 'Horário'
from tbJogo j inner join tbEquipe eC on j.timeCasa = eC.id
inner join tbEquipe eV on j.timeVisitante = eV.id
inner join tbEstadio es on j.idEstadio = es.id
inner join tbCampeonato c on j.idCampeonato = c.id
order by j.dataJogo desc;

#Mostra quais times irão se enfrentar baseado no id de um jogo
select e.nomeEquipe as "Jogo" from tbEquipe e where e.id in(select timeCasa from tbJogo where id = 1)
union
select e.nomeEquipe from tbEquipe e where e.id in(select timeVisitante from tbJogo where id = 1);

#Mostra em quantos estadios diferentes cada time vai jogar
select e.nomeEquipe, count(distinct j.idEstadio) as totalEstadios
from tbJogo j
join tbEquipe e on j.timeCasa = e.id or j.timeVisitante = e.id
group by e.nomeEquipe
order by totalEstadios desc;

#Mostrar qual foi o último jogo de determinada equipe e em qual estádio seja como time casa ou time visitante
select e.id as idEquipe, e.nomeEquipe, e.nomeTecnico, j.dataJogo as 'Última Partida', es.nome as 'Estádio'
from tbJogo j inner join tbEquipe e on e.id = j.timeCasa or e.id = j.timeVisitante 
inner join tbEstadio es on es.id = j.idEstadio
where j.dataJogo = (select max(dataJogo) from tbJogo j where e.id = j.timeCasa or e.id = j.timeVisitante)
group by j.dataJogo, e.id, e.nomeEquipe, e.nomeTecnico, es.nome order by j.dataJogo desc;

# Mostra os estádios que tem a capacidade maior que pelo menos um estádio em que jogou o Corinthians
select id, nome from tbEstadio
where capacidade > some
(select es.capacidade from tbJogo j
inner join tbEstadio es on j.idEstadio = es.id
where j.timeCasa = 2 or j.timeVisitante = 2);
 
 #Ver tabela Torcedores: id, CPF, nome e os telefones e emails
select t.id, t.CPF, t.nome, te.email, tt.telefone from tbTorcedor t
join tbTelefoneTorcedor tt on t.id = tt.idTorcedor
join tbEmailTorcedor te on t.id = te.idTorcedor;

#Ver tabela Funcionário: id, CPF, nome, e-mail profissional e os telefones
select f.id, f.CPF, f.nome, f.email, tf.telefone from tbFuncionario f
join tbTelefoneFuncionario tf on f.id = tf.idFuncionario;

#Mostra estádios que não tem funcionários associados
select e.id, e.nome as 'Estádio' from tbEstadio e
left join tbFuncionario f on e.id = f.idEstadio where f.id is null;

#Mostra quantos jogos um estádio sediará por campeonato
select e.nome as "Nome Estadio", count(j.idEstadio) as "Quantidade de jogos" from tbJogo j 
inner join tbCampeonato c on j.idCampeonato = c.id
inner join tbEstadio e on j.idEstadio = e.id
where c.nome = "Libertadores"
group by e.nome
having count(j.idEstadio > 0);

#Mostra o nome, id, email e salario, junto com o estádio que estão trabalhando os colaboradores (Que recebem mais que a média dos trabalhadores)
select f.id, f.nome, f.email, f.salario, e.nome as Estadio from tbFuncionario f
inner join tbEstadio e on e.id = f.idEstadio
where f.idEstadio not in(8, 9, 10)
and f.salario > (select avg(salario) from tbFuncionario);

# Mostra o id do jogo, tipo e a data de compra de cada ingresso comprado por cada torcedor(mostra seu id, CPF e nome)
select t.id as idTorcedor, t.CPF, t.nome, i.idJogo, i.tipo as tipoIngresso, i.Data_compra as 'Data da compra' from tbTorcedor t
inner join tbIngressos i on t.id = i.idTorcedor
order by t.id;

# Mostra o id, o CPF e nome dos torcedores que não compraram nenhum ingresso
select t.id, t.CPF, t.nome from tbTorcedor t
left join tbIngressos i on t.id = i.idTorcedor where i.idTorcedor is null
order by t.id;