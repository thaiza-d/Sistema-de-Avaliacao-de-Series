-- Criando a pasta com o título "notas"
create database notas
default character set utf8mb4
default collate utf8mb4_general_ci;

-- Para selecionar a pasta que irá utilizar
use notas;

-- Criando a tabela de usuários
create table usuarios (
id int not null auto_increment primary key,
nome varchar(50),
email varchar (50)
) default charset utf8mb4;

-- Reorganizando adicionando a coluna nascimento na tabela
alter table usuarios
add column nascimento date;

-- Reorganizando adicionando a coluna sexo na tabela
alter table usuarios
add column sexo enum('M', 'F');

-- Mudando a posição da coluna email
alter table usuarios
modify column email varchar(50) after sexo;

-- Preenchendo a tabela usuários
insert into usuarios values
(default, 'Ana Souza', '2007-01-01', 'F', 'anaxxxxxx@xxx.com'),
(default, 'Carlos Alberto', '1995-02-02', 'M', 'carlosxxxx@xxx.com'),
(default, 'Marcia Silva', '2000-03-03', 'F', 'marciaxxxx@xxx.com'),
(default, 'João Rocha', '2005-04-04', 'M', 'joaoxxxxx@xxx.com'),
(default, 'Pedro Oliveira', '1999-05-05', 'M', 'pedroxxxx@xxx.com'),
(default, 'Bruno Costa', '1988-10-23', 'M', 'brunoxxxx@xxx.com'),
(default, 'Henrique Dias', '1985-05-06', 'M', 'henriquexxxx@xxx.com'),
(default, 'Felipe Souza', '2000-04-20', 'M', 'felipexxxx@xxx.com'),
(default, 'Fabiana Martins', '1987-05-23', 'F', 'fabianaxxxx@xxx.com'),
(default, 'Mariana Ribeiro', '1996-11-15', 'F', 'marianaxxxx@xxx.com'),
(default, 'Priscila Gomes', '2010-04-21', 'F', 'priscilaxxxx@xxx.com'),
(default, 'Lucas Fernandes', '1992-06-15', 'M', 'lucasxxxx@xxx.com'),
(default, 'Tatiane Lopes', '1994-12-10', 'F', 'tatianexxxx@xxx.com'),
(default, 'Renan Moreira', '1998-08-08', 'M', 'renanxxxx@xxx.com'),
(default, 'Camila Duarte', '1989-03-12', 'F', 'camilaxxxx@xxx.com'),
(default, 'Juliana Cardoso', '1993-07-30', 'F', 'julianaxxxx@xxx.com'),
(default, 'André Lima', '2001-09-17', 'M', 'andrexxxx@xxx.com'),
(default, 'Vanessa Brito', '1997-01-22', 'F', 'vanessaxxxx@xxx.com'),
(default, 'Roberta Teixeira', '1986-02-28', 'F', 'robertaxxxx@xxx.com'),
(default, 'Eduardo Pinto', '1990-11-09', 'M', 'eduardoxxxx@xxx.com'),
(default, 'Daniela Souza', '1995-05-13', 'F', 'danielaxxxx@xxx.com');

-- Seleciona tudo da tabela usuarios e exibe
select * from usuarios;

-- Criando tabela de séries
create table series (
id int not null auto_increment primary key,
nome varchar(50),
plataforma varchar(50),
ano_lancamento int
) default charset utf8mb4;

-- Reorganizando adicionando a coluna genero na tabela
alter table series
add column genero varchar(50);

-- Inserindo os dados na tabela
insert into series values
(default, 'Modern Family', 'Star+', 2009, 'Comédia'),
(default, 'Breaking Bad', 'Netflix', 2008, 'Drama'),
(default, 'Friends', 'HBO Max', 1994, 'Comédia'),
(default, 'Stranger Things', 'Netflix', 2016, 'Ficção Científica'),
(default, 'The Office', 'Prime Video', 2005, 'Comédia'),
(default, 'Ted Lasso', 'Apple TV+', 2020, 'Comédia/Drama'),
(default, 'Game of Thrones', 'HBO Max', 2011, 'Fantasia/Drama'),
(default, 'Severance', 'Apple TV+', 2022, 'Suspense/Drama'),
(default, 'How I Met Your Mother', 'Star+', 2005, 'Comédia'),
(default, 'The Last of Us', 'HBO Max', 2023, 'Drama/Pós-apocalíptico');

-- Seleciona tudo da tabela series e exibe
select * from series;

-- Criando a tabela de avaliações das séries de acordo com os usuários
create table avaliacoes (
id int not null auto_increment primary key,
id_usuarios int,
id_series int,
nota int check (nota >= 0 and nota <= 10),
comentario text,
foreign key (id_usuarios) references usuarios (id),
foreign key (id_series) references series (id)
) default charset utf8mb4;

-- Preenchendo a tabela de avaliações
insert into avaliacoes values
(default, 1, 1, 10, 'Muito divertida! Assisti com minha mãe.'),
(default, 2, 3, 10, 'A melhor série da minha vida!'),
(default, 3, 4, 9, 'Uma obra-prima, pena que demoram para lançar novas temporadas.'),
(default, 4, 7, 7, 'Esperava mais do final.'),
(default, 6, 8, 10, 'Meu Deus, essa série é maravilhosa!.'),
(default, 7, 5, 6, 'Engraçada, mas a primeira temporada e as últimas deixaram a desejar!'),
(default, 8, 6, 10, 'Ted Lasso é incrível. Comfort puro.'),
(default, 10, 9, 7, 'A história é boa, mas o final foi muito cansativo.'),
(default, 11, 5, 8, 'Já assisti 3 vezes! Não canso.'),
(default, 12, 7, 8, 'Vale a pena, mas é denso.'),
(default, 1, 2, 9, 'Breaking Bad é intensa, gostei muito.'),
(default, 1, 4, 8, 'Muito criativa, prende bastante.'),
(default, 2, 1, 10, 'Modern Family é leve e engraçada.'),
(default, 3, 9, 8, 'Legalzinha, mas prefiro outras comédias.'),
(default, 3, 5, 6, 'The Office não é muito meu estilo.'),
(default, 4, 1, 9, 'Assisti com a família, dei boas risadas.'),
(default, 5, 3, 10, 'Friends é tudo pra mim.'),
(default, 5, 6, 8, 'Gostei da mensagem de Ted Lasso.'),
(default, 6, 4, 10, 'Uma das melhores séries já feitas.'),
(default, 6, 3, 9, 'Friends marcou minha adolescência.'),
(default, 7, 9, 9, 'How I Met Your Mother me fez rir muito.'),
(default, 8, 9, 7, 'Tem seus altos e baixos, mas é boa.'),
(default, 9, 4, 10, 'Stranger Things me prende muito!'),
(default, 10, 1, 10, 'Todas as temporadas são ótimas'),
(default, 10, 10, 9, 'The Last of Us é intensa e bem produzida.');

-- Seleciona tudo da tabela avaliações e exibe
select * from avaliacoes;

-- Exibir o nome de cada usuário que avaliou com a sua respectiva nota, nome da série e comentário
select 
usuarios.nome as nome_usuario,
series.nome as nome_series,
avaliacoes.nota,
avaliacoes.comentario
from avaliacoes
join usuarios on avaliacoes.id_usuarios = usuarios.id
join series on avaliacoes.id_series = series.id;

-- Selecionando séries com notas maiores que 8
select
usuarios.nome as nome_usuario,
series.nome as nome_series,
avaliacoes.nota
from avaliacoes
join usuarios on avaliacoes.id_usuarios = usuarios.id
join series on avaliacoes.id_series = series.id
where avaliacoes.nota >= 8;

-- Avaliação de uma série específica
select
usuarios.nome as nome_usuarios,
series.nome as nome_series,
avaliacoes.nota
from avaliacoes
join series on avaliacoes.id_series = series.id
join usuarios on avaliacoes.id_usuarios = usuarios.id
where series.nome = 'Modern Family';

-- Selecionando por sexo masculino
select 
usuarios.nome as nome_usuarios,
usuarios.sexo,
series.nome as nome_series,
avaliacoes.nota
from avaliacoes
join usuarios on avaliacoes.id_usuarios = usuarios.id
join series on avaliacoes.id_series = series.id
where usuarios.sexo = 'M';

-- Seleciona por sexo feminino
select
usuarios.nome as nome_usuarios,
usuarios.sexo,
series.nome as nome_series,
avaliacoes.nota
from avaliacoes
join usuarios on avaliacoes.id_usuarios = usuarios.id
join series on avaliacoes.id_series = series.id
where usuarios.sexo = 'F';

-- Realizando a média das notas
select 
series.nome as nome_series,
round(avg(avaliacoes.nota), 2) as media_nota, -- Arredondando para duas casas decimais após a vírgula
count(avaliacoes.id) as total_avaliacoes
from avaliacoes
join series on avaliacoes.id_series = series.id
group by series.nome
order by media_nota desc; -- Ordena a média do maior para o menor
