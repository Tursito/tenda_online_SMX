
<?php include("connexio.php"); ?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RedStore</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet"> 
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
<?php include("nav.php"); ?>  
    <div class="row">
        <div class="col-2">
    <h1>Give Your Workout<br> A New Style!</h1>
    <p>Donde estan los pibes que ahora gritan el macaco aguante <br> Donde estan los rochos que van pa delante</p>
    <a href=""class="btn">Dale pa</a>    
    </div>
        <div class="col-2">
    <img src="../images/image1.png" width="600px">
        </div>
    </div>
    </div>
</div>
  <div class="categories">
      <div class="small-container">
        <div class="row">
<?php

$consulta = "SELECT `sec_img`,sec_id FROM `categoria`";
$resultado = mysqli_query( $conexion, $consulta );
while ($columna = mysqli_fetch_array( $resultado ))
   {
    echo "<div class=\"col-3\">";
    echo "<a href=\"categorias.php?sec=". $columna['sec_id'] . "\">";
    echo "<img src=\"";
    echo $columna ['sec_img'];
    echo "\">";
    echo "</a>";
    echo "</div>";
   }
?>
        </div>
      </div>
  </div>
<h2 class ="title">Productos destacados</h2>
<div class="small-container">
<div class="row">
    

<!-- Productos destacados -->
  <?php

$consulta = "SELECT * FROM `articulos` WHERE `art_destacados` = 1 ";

$resultado = mysqli_query( $conexion, $consulta );


while ($columna = mysqli_fetch_array( $resultado ))
   {
echo "<div class=\"col-4\">";


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
</div>

<?php include("Footer.php");?>
</body>
</html>