<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Company extends Render_Controller
{
	public function index()
	{
		$this->load->view('company/company');
	}
}
