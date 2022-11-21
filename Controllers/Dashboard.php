<?php
	class Dashboard extends Controllers
	{
		public function __construct()
		{
			SessionStart();
			parent::__construct();
			session_regenerate_id(true);
			if(empty($_SESSION['login']))
			{
				header('Location: ' . BaseUrl(). '/login');
			}
			GetPermisos('Dashboard');
		}
		public function dashboard()
		{
			$data['page_id'] = 2;
			$data['page_tag'] ="Dashboard";
			$data['page_name'] = "dashboard";
			$data['page_title'] = "Dashboard <small> ". NombreApp()."</smal>";
			$data['page_functions_js'] = "functions_dashboard.js";
			$data['usuarios'] = $this->model->CanUsuarios();
			$data['clientes'] = $this->model->CanClientes();
			$data['productos'] = $this->model->CanProductos();
			$data['pedidos'] = $this->model->CanPedidos();
			$data['lastOrders'] = $this->model->LastOrders();

			$anio = date('Y');
			$mes = date('m');

			$data['pagosMes'] = $this->model->SelectPagosMes($anio,$mes);
			//dep($data['pagosMes']);exit();

			$this->views->GetView($this,"dashboard",$data);
		}
	}
?>