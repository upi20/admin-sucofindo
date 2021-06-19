<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Setting extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        if (!isset($this->session->userdata("data")['nama'])) {
            redirect('login');
        }
    }
    public function index()
    {

        if ($this->session->userdata("data")['nama'] == "Admin Pusat") {
            $this->load->view("setting/admin/index");
        }
    }
}
