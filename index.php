<?php 
include_once("conexion.php");
?>
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Carga de datos con Select PHP & MySQL | BaulPHP</title>

<!-- Bootstrap core CSS -->
<link href="dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="assets/sticky-footer-navbar.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<!-- Select 2 -->
<link rel="stylesheet" type="text/css" href="select2/css/select2.css">
<script src="select2/jquery-3.1.1.min.js"></script>
<script src="select2/js/select2.js"></script>
<script type="text/javascript" src="js/getData.js"></script>
</head>

<body>
<!-- Begin page content -->

<div class="container">
  <div class="row">
    <div class="col-12 col-md-10"> 
      <!-- Contenido -->
        <div class="container">
          <div class="page-header">
              <h4>
                <select id="idatencion" name="idatencion" class="form-control" style="width:100%">
                  <option  >Selecionar Ticket</option>
                  <?php
                    $sql = "SELECT *  from atencion ORDER BY idatencion DESC ";
                    $resultset = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));
                    while( $rows = mysqli_fetch_assoc($resultset) ) { 
                  ?>
                  <option value="<?php echo $rows["idatencion"]; ?>"><?php echo $rows["idatencion"]; ?></option>
                  <?php }	?>
                </select>
              </h4>	
          </div>	
		    <div id="display">
			    <div class="row" id="heading" >
            <table class="table" id="detalle">
              <thead class="thead-dark">
                <tr>
                  <th scope="col">Cantidad</th>
                  <th scope="col">Servicio</th>
                  <th scope="col">Precio</th>
                  <th scope="col">Derechos Registrales</th>
                  <th scope="col">Subtotal</th>
                  <th scope="col">Kardex</th>
                </tr>
              </thead>
              <tbody>

              </tbody>
            </table>   
          </div>           		
          <div class="row" id="no_records">

          </div>		
        </div>
      <!-- Fin Contenido --> 
    </div>
  </div>
  <!-- Fin row --> 
  
</div>
<!-- Fin container -->

    <!-- SELECT2  -->
    <script type="text/javascript">
    $(document).ready(function(){
        $('#idatencion').select2();
    });
    </script>

<!-- Bootstrap core JavaScript
    ================================================== --> 

<!-- Placed at the end of the document so the pages load faster -->
</body>
</html>