<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Profile extends Render_Controller
{

	function __construct()
	{
		parent::__construct();
		// Cek session
		$this->sesion->cek_session();
		$this->load->model('ProfileModel', 'profile');
	}

	public function index()
	{
		// id
		$id = $this->session->userdata()['data']['id'];

		// user
		$data['user'] = $this->profile->getDataUser($id);

		// perusahaan
		$data['perusahaans'] = $this->profile->getDataPerusahaans();
		$this->load->view('profile', $data);
	}

	public function getJabatan()
	{
		$id = $this->input->post('id_perusahaan');
		$this->output_json($this->profile->getDataJabatans($id));
	}
}
