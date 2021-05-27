<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Activity extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Company/ActivityModel', 'company');
    }

    public function index()
    {
        $data['activity'] = $this->company->activityArea();
        $this->load->view('company/activity', $data);
    }
}
