<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Profile extends Render_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->sesion->cek_session();
        $this->load->model("setting/ProfileModel", 'profile');
    }

    public function index()
    {
        if ($this->session->userdata("data")['level'] == "Admin Sekolah") {
            $data['user_id'] = $this->session->userdata('data')['id'];
            $this->load->view("setting/cabang/profile", $data);
        } else {
            redirect("login");
        }
    }

    public function ajax_data()
    {
        $id_user = $this->input->post("user_id");
        $this->output_json($this->profile->getDataUser($id_user));
    }

    public function update()
    {
        $data = [];
        $id = $this->input->post("id");
        foreach ($this->input->post() as $k => $val) {
            if ($k != 'id') {
                $data[$k] = $val;
            }
        }

        $result = $this->profile->updateDataCabang($id, $data);
        $this->output_json($result);
    }
}
