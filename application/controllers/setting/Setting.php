<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Setting extends CI_Controller
{
    function __construct()
    {
        parent::__construct();

        $this->sesion->cek_session();
    }
    public function index()
    {

        if ($this->session->userdata("data")['level'] == "Super Admin") {
            $this->load->view("setting/admin/index");
        } else if ($this->session->userdata("data")['level'] == "Admin Sekolah") {
            $this->load->view("setting/cabang/index");
        } else {
            redirect("login");
        }
    }
}
