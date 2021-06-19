<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Rab extends CI_Controller
{
    function __construct()
    {
        $this->sesion->cek_session();
    }
    public function index()
    {

        if ($this->session->userdata("data")['nama'] == "Admin Pusat") {
            $this->load->view("rab/admin/index");
        }
    }
}
