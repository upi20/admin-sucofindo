<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Reporting extends Render_Controller
{
    public function index()
    {
        $this->load->view('company/kpi');
    }
}
