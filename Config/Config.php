<?php


	$db = new PDO('mysql:host=localhost;dbname=elbuensamaritano', 'root', '');
	$query = $db->prepare("SELECT * FROM empresa WHERE idempresa = 1");
	$query->execute();
	$data = $query->fetchAll();

  





	const BASE_URL = "Http://localhost/ElBuenSamaritano";
	const BASE_URL_H = "localhost/ElBuenSamaritano";

	date_default_timezone_set('America/Bogota');

	const DB_HOST = "localhost";
	const DB_NAME = "elbuensamaritano";
	const DB_USER = "root";
	const DB_PASSWORD = "";
	const DB_CHARSET = "utf8";



	define('SPD', $data[0]["separador_decimales"]);
	define('SPM', $data[0]["separador_miles_millones"]);

	define('SMONEY', $data[0]["simbolo_moneda"]);
	define('CURRENCY', $data[0]["divisa"]);
	define('MONEDA', $data[0]["moneda"]);
	
	define('NOMBRE_REMITENTE', $data[0]["nombre_remitente"]);
	define('EMAIL_REMITENTE', $data[0]["correo_remitente"]);
	define('NOMBRE_EMPRESA', $data[0]["nombre_empresa"]);
	define('NOMBRE_APP', $data[0]["nombre_aplicacion"]);
	define('WEB_EMPRESA', $data[0]["sitio_web"]);

	define('direccion', $data[0]["direccion"]);
	define('TELEFONO_EMPRESA', $data[0]["telefono"]);
	define('EMAIL_PEDIDOS', $data[0]["correo_pedidos"]);
	define('EMAIL_EMPRESA', $data[0]["correo_empresa"]);


	const CAT_SLIDER = "1,2,3";
	const CAT_BANNER = "4,5,8";

	const KEY = 'jusebema';
	const METHODENCRIPT = "AES-128-ECB";

	const COSTOENVIO = 500;
	const VALORIVA = 19;


	$query->closeCursor(); 
	$query = null; 
	$db = null;
?>