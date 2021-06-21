<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Proposal extends Render_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->sesion->cek_session();
        $this->load->model("rab/ProposalModel", 'proposal');

        $this->cabangdetail = $this->db->get_where('cabangs', ['user_id' => $this->session->userdata('data')['id']])->row_array();
        $this->id_cabang                 = $this->cabangdetail['id'];
    }

    public function index()
    {
        if ($this->session->userdata("data")['level'] == "Admin Sekolah") {
            $data['id_cabang'] = $this->id_cabang;
            $this->load->view("rab/cabang/proposal", $data);
        } else {
            redirect("login");
        }
    }
}
