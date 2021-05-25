<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Company extends CI_Controller
{

	public function index()
	{
		$this->load->view('company/company');
	}

	public function activity()
	{
		$this->load->view('company/activity');
	}

	public function reporting()
	{
		$this->load->view('company/reporting');
	}

	public function kpi()
	{
		$this->load->view('company/kpi');
	}
}
