<?php include("connexio.php"); ?>


<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="../css/contact-me.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet"> 
</head>

<body>
<?php include("nav.php"); ?>

    


<!--Formulario-->
  <div class="wrapper">
    <form class="form">
      <div class="pageTitle title">Contáctanos </div>
      <div class="secondaryTitle title">Por favor rellene este formulario para contactarnos.</div>
      <input type="text" class="name formEntry" placeholder="Nombre" />
      <input type="text" class="email formEntry" placeholder="Email"/>
      <textarea class="message formEntry" placeholder="Mensaje"></textarea>
      <input type="checkbox" class="termsConditions" value="Term">
      <label style="color: grey" for="terms"> Acepto los <span style="color: #0e3721">Terminos de uso</span>.</label><br>
      <button class="submit formEntry" onclick="thanks()">Enviar</button>
    </form>
  </div>



  <?php include("Footer.php"); ?>


</body>

</html>