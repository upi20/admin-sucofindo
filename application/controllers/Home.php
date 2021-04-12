<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		// Cek session
		$this->sesion->cek_session();
	}
	public function index()
	{
		$this->load->view('home');
	}
}
