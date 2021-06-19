<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Info extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model("InfoModel", 'info');
	}

	public function index()
	{
		$data['info'] = $this->info->getList();
		$this->load->view('info', $data);
	}
}
