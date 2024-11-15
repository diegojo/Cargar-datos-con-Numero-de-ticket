<?php
include_once("conexion.php");
if($_REQUEST['empid']) {
	$sql = "SELECT *, a.idatencion, ca.descripcion, ca.precio, ca.subtotal, ca.derechos_registrales, ca.kardex, ca.idatencion from atencion as a 
		    LEFT JOIN carrito_atencion as ca on a.idatencion = ca.idatencion  
			WHERE ca.idatencion='".$_REQUEST['empid']."'  ORDER BY a.idatencion asc ";
	$resultset = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));
	
	$data = array();
	while( $rows = mysqli_fetch_assoc($resultset) ) {
		

      $data[] = $rows;
	}
	echo json_encode($data);
} else {
	echo 0;	
}
?>
