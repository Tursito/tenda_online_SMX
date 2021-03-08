
<?php include("connexio.php"); ?>
<link rel="stylesheet" href="../css/style.css">
<?php include("nav.php");?>

<div class="small-container">
<div class="row">
<?php

$consulta = "SELECT * FROM `articulos`  ";

$resultado = mysqli_query( $conexion, $consulta );


while ($columna = mysqli_fetch_array( $resultado ))
   {
echo "<div class=\"col-3\">";


echo "<img src=\"";
echo $columna ['art_img'];
echo "\">";

echo "<h4>";
echo $columna ['art_nombre'];
echo "</h4>";

echo "<p>";
echo $columna ['art_precio']. "€";
echo "</p>";

// div col-4
echo "</div>";

   }
   ?>
</div>
</div>

<?php include("Footer.php"); ?>