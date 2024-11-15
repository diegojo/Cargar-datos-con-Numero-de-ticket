$(document).ready(function(){  
	// code to get all records from table via select box
	$("#idatencion").change(function() {    
		var id = $(this).find(":selected").val();
		var dataString = 'empid='+ id;    
		$("#detalle").find('tbody').empty();
		$.ajax({
			url: 'datos.php',
			dataType: "json",
			data: dataString,  
			cache: false,
			success: function(employeeData) {
				let html = ``
				$.each(employeeData,function(i,j){
					html += `<tr>
					<td>${j.cantidad}</td>
					<td>${j.descripcion}</td>
					<td>${j.precio}</td>
					<td>${j.derechos_registrales}</td>
					<td>${j.subtotal}</td>
					<td>${j.kardex}</td>
							</tr>`
				})

				$("#detalle").find('tbody').append(html);
			   /*
				if(employeeData) {
					$("#heading").show();		  
					$("#no_records").hide();					
					$("#emp_nombre").text(employeeData.descripcion);
					$("#emp_edad").text(employeeData.precio);
					$("#emp_salario").text(employeeData.subtotal);
					$("#records").show();		 
				} else {
					$("#heading").hide();
					$("#records").hide();
					$("#no_records").show();
				}
				*/   	
			} 
		});
 	}) 
});
