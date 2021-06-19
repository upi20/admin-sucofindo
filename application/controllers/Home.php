<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		// Cek session
		$this->sesion->cek_session();
		$this->load->model("HomeModel", 'home');
	}
	public function index()
	{
		$data = null;
		$this->load->view('dashboard/admin/index', $data);
	}
}
