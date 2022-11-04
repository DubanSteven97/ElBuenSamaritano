let tableCategorias;
let rowTable;
let divLoading = document.querySelector("#divLoading");
document.addEventListener('DOMContentLoaded',function(){

	tableCategorias = $('#tableCategorias').dataTable({
		"aProcessing":true,
		"aServerSide":true,
		"language":{
			"url": "//cdn.datatables.net/plug-ins/1.10.20/i18n/Spanish.json"
		},
		"ajax":{
			"url":""+BaseUrl+"/Categorias/GetCategorias",
			"dataSrc":""
		},
		columns: [
            { "data": 'idcategoria' },
            { "data": 'nombre' },
            { "data": 'descripcion' },
            { "data": 'status' },
            { "data": 'options' }
        ],
        'dom': 'lBfrtip',
        'buttons': [
            {
            	"extend": "copyHtml5",
            	"text": "<i class='fas fa-copy'></i> Copiar",
            	"titleAttr": "Copiar",
            	"className": "btn btn-secondary"
            },{
            	"extend": "excelHtml5",
            	"text": "<i class='fas fa-file-excel'></i> Excel",
            	"titleAttr": "Exportar a Excel",
            	"className": "btn btn-success"
            },{
            	"extend": "pdfHtml5",
            	"text": "<i class='fas fa-file-pdf'></i> PDF",
            	"titleAttr": "Exportar a PDF",
            	"className": "btn btn-danger"
            },{
            	"extend": "csvHtml5",
            	"text": "<i class='fas fa-file-csv'></i> CSV",
            	"titleAttr": "Exportar a CSV",
            	"className": "btn btn-info"
            },
        ],
        "responsive":"true",
        "bDestroy":true,
        "iDisplayLength":10,
        "order":[[1,"asc"]]
	});


	if(document.querySelector("#foto")){
	    let foto = document.querySelector("#foto");
	    foto.onchange = function(e) {
	        let uploadFoto = document.querySelector("#foto").value;
	        let fileimg = document.querySelector("#foto").files;
	        let nav = window.URL || window.webkitURL;
	        let contactAlert = document.querySelector('#form_alert');
	        if(uploadFoto !=''){
	            let type = fileimg[0].type;
	            let name = fileimg[0].name;
	            if(type != 'image/jpeg' && type != 'image/jpg' && type != 'image/png'){
	                contactAlert.innerHTML = '<p class="errorArchivo">El archivo no es válido.</p>';
	                if(document.querySelector('#img')){
	                    document.querySelector('#img').remove();
	                }
	                document.querySelector('.delPhoto').classList.add("notBlock");
	                foto.value="";
	                return false;
	            }else{  
	                    contactAlert.innerHTML='';
	                    if(document.querySelector('#img')){
	                        document.querySelector('#img').remove();
	                    }
	                    document.querySelector('.delPhoto').classList.remove("notBlock");
	                    let objeto_url = nav.createObjectURL(this.files[0]);
	                    document.querySelector('.prevPhoto div').innerHTML = "<img id='img' src="+objeto_url+">";
	                }
	        }else{
	            alert("No selecciono foto");
	            if(document.querySelector('#img')){
	                document.querySelector('#img').remove();
	            }
	        }
	    }
	}

	if(document.querySelector(".delPhoto")){
	    let delPhoto = document.querySelector(".delPhoto");
	    delPhoto.onclick = function(e) {
	    	document.querySelector('#foto_remove').value=1;
	        removePhoto();
	    }
	}

	let formCategoria = document.querySelector("#formCategoria");
	formCategoria.onsubmit = function(e){
		e.preventDefault();
		let strNombre = document.querySelector("#txtNombre").value;
		let strDescripcion = document.querySelector("#txtDescripcion").value;
		let listStatus = document.querySelector("#listStatus").value;
		if(strNombre == '' || strDescripcion == '' || listStatus == '')
		{
			swal("Atención", "Todos los campos son obligatorios", "error");
			return false;
		}
		divLoading.style.display = "flex";
		let request = (window.XMLHttpRequest) ? XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP')
		let ajaxUrl = BaseUrl+'/Categorias/SetCategoria';
		let formData = new FormData(formCategoria);
		request.open("POST",ajaxUrl,true);
		request.send(formData);
		request.onreadystatechange = function(){
			if(request.readyState == 4 && request.status == 200){
				let objData = JSON.parse(request.responseText);
				if(objData.status)
				{
					if(rowTable == "")
					{
						tableCategorias.api().ajax.reload();
					}else{
						htmlStatus = listStatus == 1 ? 
						'<span class="badge badge-success">Activo</span>' :
						 '<span class="badge badge-danger">Inactivo</span>';
						rowTable.cells[1].textContent = strNombre;
						rowTable.cells[2].textContent = strDescripcion;
						rowTable.cells[3].innerHTML = htmlStatus;
						rowTable = "";
					}

					$('#modalFormCategoria').modal("hide");
					formCategoria.reset();
					swal("Categorias", objData.msg, "success");
					removePhoto();
				}else
				{
					swal("¡Error!", objData.msg, "error");
				}
			}
			divLoading.style.display = "none";
			return false;
		}

	}

},false);

function openModal()
{
	document.querySelector('#idCategoria').value = "";
	document.querySelector('.modal-header').classList.replace("headerUpdate", "headerRegister");
	document.querySelector('#btnActionForm').classList.replace("btn-info", "btn-primary");
	document.querySelector('#btnText').innerHTML = "Guardar";
	document.querySelector('#titleModal').innerHTML = "Nueva Categoria";
	document.querySelector('#formCategoria').reset();
	$('#modalFormCategoria').modal('show');
	rowTable = "";
	removePhoto();
}

function fntViewCategoria(idcategoria)
{
	let request = (window.XMLHttpRequest) ? XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP')
	let ajaxUrl = BaseUrl+'/Categorias/GetCategoria/'+idcategoria;
	request.open("GET",ajaxUrl,true);
	request.send();
	request.onreadystatechange = function(){
		if(request.readyState == 4 && request.status == 200){
			let objData = JSON.parse(request.responseText);
			if(objData.status)
			{	
				let estado = objData.data.status == 1 ?
				'<span class="badge badge-success">Activo</span>':
				'<span class="badge badge-danger">Inactivo</span>';
				document.querySelector("#celId").innerHTML = objData.data.idcategoria;
				document.querySelector("#celNombre").innerHTML = objData.data.nombre;
				document.querySelector("#celDescripcion").innerHTML = objData.data.descripcion;
				document.querySelector("#celEstado").innerHTML = estado;
				document.querySelector("#imgCategoria").innerHTML = '<img src="'+objData.data.url_portada+'"></img>';
				$('#modalViewCategoria').modal('show');
			}else
			{
				swal("¡Error!", objData.msg, "error");
			}
		}
	}
}

function fntEditCategoria(element, idcategoria)
{
	rowTable = element.parentNode.parentNode.parentNode;
	document.querySelector('.modal-header').classList.replace("headerRegister", "headerUpdate");
	document.querySelector('#btnActionForm').classList.replace("btn-primary", "btn-info");
	document.querySelector('#btnText').innerHTML = "Actualizar";
	document.querySelector('#titleModal').innerHTML = "Actualizar Categoria";

	let request = (window.XMLHttpRequest) ? XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP')
	let ajaxUrl = BaseUrl+'/Categorias/GetCategoria/'+idcategoria;
	request.open("GET",ajaxUrl,true);
	request.send();
	request.onreadystatechange = function(){
		if(request.readyState == 4 && request.status == 200){
			let objData = JSON.parse(request.responseText);
			if(objData.status)
			{
				document.querySelector("#idCategoria").value = objData.data.idcategoria;
				document.querySelector("#txtNombre").value = objData.data.nombre;
				document.querySelector("#txtDescripcion").value = objData.data.descripcion;
				document.querySelector("#foto_actual").value = objData.data.portada;
				document.querySelector('#foto_remove').value = 0;

				if(objData.data.status == 1)
				{
					document.querySelector("#listStatus").value = 1;
				}else
				{
					document.querySelector("#listStatus").value = 2;
				}
				$('#listStatus').selectpicker('render');

				if(document.querySelector("#img"))
				{
					document.querySelector("#img").src = objData.data.url_portada;
				}else
				{
					document.querySelector(".prevPhoto div").innerHTML = "<img id='img' src="+objData.data.url_portada+">";
				}

				if(objData.data.portada == 'portada_categoria.png')
				{
					document.querySelector('.delPhoto').classList.add('notBlock');
				}else
				{
					document.querySelector('.delPhoto').classList.remove('notBlock');
				}

				$('#modalFormCategoria').modal('show');
			}else
			{
				swal("¡Error!", objData.msg, "error");
			}
		}
	}
}

function fntDelCategoria(idcategoria)
{
	swal({
		title: "Eliminar Categoria",
		text: "¿Realente quiere eliminar el Categoria?",
		type: "warning",
		showCancelButton: true,
		confirmButtonText: "Si, eliminar",
		cancelButtonText: "No, cancelar",
		closeOnConfirm: false,
		closeOnCancel: true
	}, function(isConfirm){
		if(isConfirm)
		{
			divLoading.style.display = "flex";
			let request = (window.XMLHttpRequest) ? XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP')
			let ajaxUrl = BaseUrl+'/Categorias/DelCategoria/';
			let strData = "idCategoria="+idcategoria;
			request.open("POST",ajaxUrl,true);
			request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
			request.send(strData);
			request.onreadystatechange = function(){
				if(request.readyState == 4 && request.status == 200){
					let objData = JSON.parse(request.responseText);
					if(objData.status)
					{
						swal("¡Eliminar!", objData.msg, "success");
						tableCategorias.api().ajax.reload();
					}else
					{
						swal("¡Error!", objData.msg, "error");
					}
				}
				
				divLoading.style.display = "none";
				return false;
			}
		}
	});
}



function removePhoto(){
    document.querySelector('#foto').value ="";
    document.querySelector('.delPhoto').classList.add("notBlock");
    if(document.querySelector('#img'))
    {
    	document.querySelector('#img').remove();
    }
}
