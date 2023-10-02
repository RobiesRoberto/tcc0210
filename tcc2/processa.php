<?php
include_once("conexao.php");

$nome_u = filter_input(INPUT_POST, 'nome_u', FILTER_SANITIZE_SPECIAL_CHARS);
$senha_u = filter_input(INPUT_POST, 'email_u', FILTER_SANITIZE_SPECIAL_CHARS);
$email_u = filter_input(INPUT_POST, 'email_u', FILTER_SANITIZE_EMAIL);
$endereço_u = filter_input(INPUT_POST, 'endereço_u', FILTER_SANITIZE_SPECIAL_CHARS);
$telefone_u = filter_input(INPUT_POST, ' telefone_u', FILTER_SANITIZE_NUMBER_INT);
$cidade_u = filter_input(INPUT_POST, 'cidade_u', FILTER_SANITIZE_SPECIAL_CHARS);
$cep_u = filter_input(INPUT_POST, 'cep_u', FILTER_SANITIZE_NUMBER_INT);
$estado_u = filter_input(INPUT_POST, 'estado_u', FILTER_SANITIZE_SPECIAL_CHARS);
$datanascimento_u = filter_input(INPUT_POST, 'datanascimento_u', FILTER_SANITIZE_NUMBER_INT);

$result_usuarios = "INSERT INTO usuarios (nome_u, senha_u, email_u,endereço_u, telefone_u, 
    cidade_u, cep_u, estado_u, datanascimento_u, datacadastro_u) VALUES ('$nome_u', '$senha_u', 
    '$email_u', '$endereço_u', '$telefone_u', '$cidade_u', '$cep_u', '$estado_u', 
    '$datanascimento_u', NOW())";
$resultado_usuario = mysqli_query($conn, $result_usuarios); 

if(mysqli_insert_id($conn)){
    header("location: login.php");
};
?>