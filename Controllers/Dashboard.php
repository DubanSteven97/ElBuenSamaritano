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
			$data['page_title'] = "Dashboard <small>". NombreApp()."</smal>";
			$data['page_functions_js'] = "functions_dashboard.js";
			$this->views->GetView($this,"dashboard",$data);
		}
	}
?>