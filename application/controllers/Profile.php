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
		$id = $this->session->userdata()['data']['id'];
		$config['upload_path'] = './assets/img/users-profile/';
		$config['allowed_types'] = 'gif|jpg|png';
		$config['max_size']  = '2000';
		$file_name = $id . "_" . date("Y-m-d-H-i-s");
		$config['file_name'] = $file_name;

		$this->load->library('upload', $config);
		if (!$this->upload->do_upload('file')) {
			$status = "error";
			$msg = $this->upload->display_errors();
		} else {
			// hapus foto terdahulu
			$old_image = $this->profile->getDataUser($id)['user_photo'];
			// perhatikan garis miring sesuai os windos \ linux /
			$path = FCPATH . "assets\\img\\users-profile\\" . $old_image;
			if (file_exists($path)) {
				chmod($path, 0644);
				unlink($path);
			}

			// simpan nama foto kedalam database
			$this->db->where('id', $id);
			$dataupload = $this->upload->data();
			$this->db->update('users', ['user_photo' => $file_name . $dataupload['file_ext']]);

			$status = "success";
		}
		$this->output->set_content_type('application/json')->set_output(json_encode(['status' => $status]));
	}

	public function update()
	{
		$this->output_json($this->profile->update($this->input->post()));
	}
}
