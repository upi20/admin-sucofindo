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

	public function imgUpload()
	{
		$config['upload_path'] = './assets/';
		$config['allowed_types'] = 'gif|jpg|png';
		$config['max_size']  = '1000';
		$config['max_width']  = '1024';
		$config['max_height']  = '768';

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('file')) {
			$status = "error";
			$msg = $this->upload->display_errors();
		} else {
			$dataupload = $this->upload->data();
			$status = "success";
			$msg = $dataupload['file_name'] . " berhasil diupload";
		}
		$this->output->set_content_type('application/json')->set_output(json_encode(array('status' => $status, 'msg' => $msg)));

		// $this->output_json();
	}
}
