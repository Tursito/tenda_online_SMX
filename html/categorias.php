
<?php include("connexio.php"); ?>

  <link rel="stylesheet" href="../css/style.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet"> 

<body>

<?php include("nav.php"); ?>
    
    <div class="small-container">
<div class="row">
    <?php
$consulta = "SELECT * FROM articulos where art_sec_id=" . $_GET["sec"] . " order by art_id";
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

echo "</div>";

   }

?>
</div>
</div>

<?php include("Footer.php");?>
</body>
</html>



 