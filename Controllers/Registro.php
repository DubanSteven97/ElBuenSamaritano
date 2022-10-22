<?php
	class Registro extends Controllers{

		public function __construct()
		{
			parent::__construct();
		}

		public function Registro()
		{
			$data['variable'] = $this->model->GetValor();
			$this->views->getView($this,"registro",$data);
		}
	}
?>