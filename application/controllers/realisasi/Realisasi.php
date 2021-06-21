<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Realisasi extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->sesion->cek_session();
    }
    public function index()
    {

        if ($this->session->userdata("data")['level'] == "Super Admin") {
            $this->load->view("realisasi/admin/index");
        } else if ($this->session->userdata("data")['level'] == "Admin Sekolah") {
            $this->load->view("realisasi/cabang/index");
        } else {
            redirect("login");
        }
    }
}