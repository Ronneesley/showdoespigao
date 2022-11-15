<?php

//?usuario=bruno&senha=123 para testar via get no url errado
//?usuario=roni&senha=123

$usuario = $_REQUEST['usuario'];
$senha = $_REQUEST['senha'];

$usuarioBanco = "roni";
$senhaBanco = 123;

$correto = array('token' => 'L130', 'login' => true);
$errado = array('login' => false);


if ($usuario == $usuarioBanco and $senha == $senhaBanco){
  echo json_encode($correto);
}
else {
  echo json_encode($errado);
}


?>