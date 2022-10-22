<?php
	
	const BASE_URL = "Http://localhost/ElBuenSamaritano";
	const BASE_URL_H = "localhost/ElBuenSamaritano";

	date_default_timezone_set('America/Bogota');

	const DB_HOST = "localhost";
	const DB_NAME = "db_tiendavirtual";
	const DB_USER = "root";
	const DB_PASSWORD = "root";
	const DB_CHARSET = "utf8";

	const SPD = ",";
	const SPM = ".";

	const SMONEY = "$";
	const CURRENCY = "USD";
	const MONEDA = "COP";

	const URLPAYPAL = "https://api-m.sandbox.paypal.com";
	const IDCLIENTEPAYPAL = "AcC2eApkOGCPo2k03LryQEkZJXIGEzC_UD-Xh8AedUUmLOIImINbEMkChJjAaexBTLgvRXb0IkUMlLET";
	const SECRETCLIENTEPAYPAL = "EO0IGxZBSKMHrrWJdsQysPwLDShcZkdU9xSH536bIdz_u2HuCPD5uz7JojS-YOkXF7oi_NhLlupNrybJ";
	const URLGETPAYMENTPP = URLPAYPAL."/v2/payments/captures/";
	const URLGETORDENPP =URLPAYPAL."/v2/checkout/orders/";
	const URLREENVOLSOPP = "/refund";

	const URLMERCADOPAGO = "https://api.mercadopago.com";
	const ACCESSTOKENMERCADOPAGO = "TEST-530799249801378-101016-f19e98f43d54b91941e72dc3ea42ad11-383773505";
	const KEYPUBLICMERCADOPAGO = "TEST-eac798f6-f505-491b-9bc3-f35cbfbb4bd8";
	const IDAPPMERCADOPAGO = "4889927137089308";
	const SECRETAPPMERCADOPAGO = "R3FI1VJetdTT84vfuY888xeNzEVdOmZf";
	const URLGETPAYMENTMP = URLMERCADOPAGO."/v1/payments/";
	const URLGETORDENMP = URLMERCADOPAGO."/merchant_orders/";
	const URLREENVOLSOMP = "/refunds";


	const KEYTASACAMBIO = "Z1rthZIKB8xx7we6m44l4ImeXXoxQAVg";

	const NOMBRE_REMITENTE = "Tienda Virtual";
	const EMAIL_REMITENTE = "sebastianbm97@gmail.com";
	const NOMBRE_EMPRESA = "TIENDA VIRTUAL JSBM";
	const WEB_EMPRESA = "www.jscode.com";

	const DIRECCION_EMPRESA = "Calle Siempre Viva 123, Bogotá DC, Colombia";
	const TELEFONO_EMPRESA = "+(57)320 3997016";
	const EMAIL_PEDIDOS = "sebastianbm97@gmail.com";
	const EMAIL_EMPRESA = "sebastianbm97@gmail.com";

	const CAT_SLIDER = "1,2,3";
	const CAT_BANNER = "4,5,8";

	const KEY = 'jusebema';
	const METHODENCRIPT = "AES-128-ECB";

	const COSTOENVIO = 500;
	const VALORIVA = 19;

?>