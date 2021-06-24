<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Activity extends Render_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Company/ActivityModel', 'activity');
    }

    public function index()
    {
        $data['activity'] = $this->activity->activityArea();
        $this->load->view('company/activity', $data);
    }

    public function detail($id = null)
    {
        if ($id) {
            $data['detail'] = $this->activity->detailActivity($id);

            if ($data['detail']) {
                $this->load->view('company/activity-detail.php', $data);
            } else {
                redirect('company/activity');
            }
        } else {
            redirect('company/activity');
        }
    }

    public function changeStatus()
    {
        $id = $this->input->post("id");
        $selection = $this->input->post("selection");
        $keterangan = $this->input->post("keterangan");
        $notes = $this->input->post("notes");
        $id_wmp = $this->activity->getIdWmp($id);
        $id_wmp = $id_wmp ? $id_wmp['id'] : null;
        $ket = "";
        $note = "";


        if ($selection == "acc") {
            $ket  = 'Diterima';
            $note = $keterangan;
        } else if ($selection == "reject") {
            $ket  = 'Ditolak';
            $note = $keterangan . "__" . $notes;
        } else if ($selection == "cancel") {
            $note = $keterangan;
            $ket  = 'Diproses';
        }

        $result = $this->activity->changeStatus($id, $id_wmp, $note, $ket);

        $this->output_json($keterangan);
    }
}
