<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends Render_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('loginModel', 'login');
	}

	public function index()
	{
		$this->sesion->cek_login();
		$this->load->view('login');
	}

	public function doLogin()
	{
		$email 	= $this->input->post('email');
		$password 	= $this->input->post('password');

		$login 		= $this->login->cekLogin($email, $password);

		if ($login['status'] == 0) {
			// Set session value
			$session = [
				'status' => true,
				'data' => [
					'id' => $login['data'][0]['id'],
					'nama' => $login['data'][0]['user_nama'],
					'email' => $login['data'][0]['user_email'],
					'level' => $login['data'][0]['lev_nama'],
					'level_id' => $login['data'][0]['id_lev'],
					'jabatan' => $login['data'][0]['jabatan_nama'],
					'jabatan_id' => $login['data'][0]['id_jabatan'],
					'id_perusahaan' => $login['data'][0]['id_perusahaan'],
					'user_photo' => $login['data'][0]['user_photo'],
				]
			];
			$this->session->set_userdata($session);
		} else if ($login['status'] == 1) {
			$this->output_json(['status' => 1]);
		} else {
			$this->output_json(['status' => 2]);
		}
		$this->output_json($login['status']);
	}

	public function logout()
	{
		$session = array('status', 'data');
		$this->session->unset_userdata($session);
		redirect('login', 'refresh');
	}
}
