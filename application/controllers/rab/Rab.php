<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Rab extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->sesion->cek_session();
    }
    public function index()
    {

        if ($this->session->userdata("data")['level'] == "Super Admin") {
            $this->load->view("rab/admin/index");
        } else if ($this->session->userdata("data")['level'] == "Admin Sekolah") {
            $cabangdetail = $this->db->get_where('cabangs', ['user_id' => $this->session->userdata('data')['id']])->row_array();
            $data['id_cabang']                 = $cabangdetail['id'];
            $this->load->view("rab/cabang/index", $data);
        } else {
            redirect("login");
        }
    }
}
