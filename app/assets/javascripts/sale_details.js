JQuery ->
  $('#producto').parent().hide()
  $('#membrecia').parent().hide()
  $('#tipo_detalle').change ->
	tipo = $('#tipo_detalle :selected').text()
	if tipo == 'producto'
		$('#producto').parent().show()
		$('#membrecia').parent().hide()
	else
		$('#producto').parent().hide()
		$('#membrecia').parent().show()