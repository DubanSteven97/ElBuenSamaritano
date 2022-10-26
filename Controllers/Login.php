<?php
	class Login extends Controllers
	{
		public function __construct()
		{
			session_start();
			if(isset($_SESSION['login']))
			{
				header('Location: ' . BaseUrl(). '/dashboard');
			}
			parent::__construct();
		}
		public function login()
		{
			$data['page_tag'] ="Inicio de Sesión - El Buen Samaritano";
			$data['page_title'] = "Inicio de Sesión - El Buen Samaritano";
			$data['page_name'] = "login";
			$data['page_functions_js'] = "functions_login.js";
			$this->views->GetView($this,"login",$data);
		}

		public function LoginUser()
		{
			if($_POST)
			{
				if(empty($_POST['txtEmail']) || empty($_POST['txtPassword']))
				{
					$arrResponse = array('status' => false, 'msg' => 'Error de datos.');
				}else
				{
					$strUsuario = strtolower(StrClean($_POST['txtEmail']));
					$strPassword = hash("SHA256", $_POST['txtPassword']);
					$requestUser = $this->model->LoginUser($strUsuario, $strPassword);
					if(empty($requestUser))
					{
						$arrResponse = array('status' => false, 'msg' => 'Usuario o contraseña es incorrectos.');	
					}else
					{
						$arrData = $requestUser;
						if($arrData['status'] == 1)
						{
							$_SESSION['idUser'] = $arrData['idpersona'];
							$_SESSION['login'] = true;
							$_SESSION['timeout'] = true;
							$_SESSION['inicio'] = time();
							$arrData = $this->model->SessionLogin($_SESSION['idUser']);
							$_SESSION['userData'] = $arrData;
							$arrResponse = array('status' => true, 'msg' => 'ok');		
						}else{
							$arrResponse = array('status' => false, 'msg' => 'Usuario inactivo.');		
						}
					}
				}
				echo json_encode($arrResponse, JSON_UNESCAPED_UNICODE);
			}
			die();
		}
	}
?>