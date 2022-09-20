<<<<<<< HEAD
<?php

$perguntas = array(
array('descricao' => 'Qual a capital dos Estados Unidos?', 
'opcoes' => ['Nova Iorque', 'Los Angeles', 'Washington', 'Miami'],
 'correta' => 3),

 array('descricao' => 'De quem e a famosa frase Penso, logo existo?', 
 'opcoes' => ['Platao', 'Galileu Galilei', 'Descartes', 'Socrates'],
  'correta' => 3),

  array('descricao' => 'Qual o livro mais vendido no mundo a seguir a Biblia?', 
'opcoes' => ['O Senhor dos Aneis', 'Dom Quixote', 'O Pequeno Principe', 'Um Conto de Duas Cidades'],
 'correta' => 2),

 array('descricao' => 'Atualmente, quantos elementos quimicos a tabela periodica possui?', 
'opcoes' => ['113', '119', '105', '118'],
 'correta' => 3),

 array('descricao' => 'Quanto tempo a luz do Sol demora para chegar a Terra?', 
'opcoes' => ['8 minutos', '12 minutos', '15 minutos', '12 segundos'],
 'correta' => 1),

 array('descricao' => 'Qual a nacionalidade de Che Guevara?', 
'opcoes' => ['Cubana', 'Argentina', 'Panamenha', 'Peruana'],
 'correta' => 2),

 array('descricao' => 'Qual personagem folclorico costuma ser agradado pelos cacadores com a oferta de fumo?', 
'opcoes' => ['Caipora', 'Saci', 'Boitata', 'Negrinho do Pastoreio'],
 'correta' => 1),

 array('descricao' => 'Qual a montanha mais alta do Brasil?', 
'opcoes' => ['Pico Maior de Friburgo', 'Pico da Bandeira', 'Pico da Neblina', 'Monte Roraima'],
 'correta' => 3),

 array('descricao' => 'Que lider mundial ficou conhecida como Dama de Ferro?', 
'opcoes' => ['Dilma Rousseff', 'Hillary Clinton', 'Angela Merkel', 'Margaret Thatcher'],
 'correta' => 4),

 array('descricao' => 'Quem foi o primeiro homem a pisar na Lua? Em que ano aconteceu?', 
'opcoes' => ['Neil Armstrong, em 1969', 'Yuri Gagarin, em 1961', 'Buzz Aldrin, em 1969', 'Charles Conrad, em 1969'],
 'correta' => 1),

array('descricao' => 'Quando foi criado o primeiro smartphone da historia?', 
    'opcoes' => ['1994', '1997', '2000', '2004'],
     'correta' => 1)
);

$pergunta = $perguntas[array_rand($perguntas)];
echo json_encode($pergunta);
=======
<?php

$perguntas = array(
array('descricao' => 'Qual a capital dos Estados Unidos?', 
'opcoes' => ['Nova Iorque', 'Los Angeles', 'Washington', 'Miami'],
 'correta' => 3),

 array('descricao' => 'De quem e a famosa frase Penso, logo existo?', 
 'opcoes' => ['Platao', 'Galileu Galilei', 'Descartes', 'Socrates'],
  'correta' => 3),

  array('descricao' => 'Qual o livro mais vendido no mundo a seguir a Biblia?', 
'opcoes' => ['O Senhor dos Aneis', 'Dom Quixote', 'O Pequeno Principe', 'Um Conto de Duas Cidades'],
 'correta' => 2),

 array('descricao' => 'Atualmente, quantos elementos quimicos a tabela periodica possui?', 
'opcoes' => ['113', '119', '105', '118'],
 'correta' => 3),

 array('descricao' => 'Quanto tempo a luz do Sol demora para chegar a Terra?', 
'opcoes' => ['8 minutos', '12 minutos', '15 minutos', '12 segundos'],
 'correta' => 1),

 array('descricao' => 'Qual a nacionalidade de Che Guevara?', 
'opcoes' => ['Cubana', 'Argentina', 'Panamenha', 'Peruana'],
 'correta' => 2),

 array('descricao' => 'Qual personagem folclorico costuma ser agradado pelos cacadores com a oferta de fumo?', 
'opcoes' => ['Caipora', 'Saci', 'Boitata', 'Negrinho do Pastoreio'],
 'correta' => 1),

 array('descricao' => 'Qual a montanha mais alta do Brasil?', 
'opcoes' => ['Pico Maior de Friburgo', 'Pico da Bandeira', 'Pico da Neblina', 'Monte Roraima'],
 'correta' => 3),

 array('descricao' => 'Que lider mundial ficou conhecida como Dama de Ferro?', 
'opcoes' => ['Dilma Rousseff', 'Hillary Clinton', 'Angela Merkel', 'Margaret Thatcher'],
 'correta' => 4),

 array('descricao' => 'Quem foi o primeiro homem a pisar na Lua? Em que ano aconteceu?', 
'opcoes' => ['Neil Armstrong, em 1969', 'Yuri Gagarin, em 1961', 'Buzz Aldrin, em 1969', 'Charles Conrad, em 1969'],
 'correta' => 1),

array('descricao' => 'Quando foi criado o primeiro smartphone da historia?', 
    'opcoes' => ['1994', '1997', '2000', '2004'],
     'correta' => 1)
);

$pergunta = $perguntas[array_rand($perguntas)];
echo json_encode($pergunta);
>>>>>>> 516c32167591efba8d4228acdbbea635153a0fdb
