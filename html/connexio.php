<?php
$usuario = "root";
$contrasena = "Adrian16";  // en mi caso tengo contraseña pero en casa caso introducidla aquí.
$servidor = "localhost";
$basededatos = "Tendaonline";
$conexion = mysqli_connect( $servidor, $usuario, $contrasena  ) or die ("No se ha podido conectar al servidor de Base de datos");

$db = mysqli_select_db( $conexion, $basededatos );
?>