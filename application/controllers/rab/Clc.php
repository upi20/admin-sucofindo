<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Clc extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->sesion->cek_session();
        $this->load->model("rab/ClcModel", 'clc');
    }
    public function index()
    {

        if ($this->session->userdata("data")['level'] == "Admin Sekolah") {
            $get_status = $this->db->select('a.fungsi, a.status, b.nama, b.id as id_cabang')
                ->join('cabangs b', 'b.id = a.id_cabang')
                ->get_where('rabs a', ['b.user_id' => $this->session->userdata('data')['id']])
                ->row_array();
            if ($get_status == null) {
                $getCabang = $this->clc->getIdCabang();
                $get_status = [
                    'fungsi' => '0',
                    'status' => null,
                    'id_cabang' => $getCabang['id_cabang'],
                    'nama' => $getCabang['nama'],
                ];
            }

            $status = $get_status['status'];
            $cabang = $get_status['nama'];
            if ($status == 0) {
                $status = 'Proses';
            } elseif ($status == 1) {
                $status = 'Ajukan';
            } elseif ($status == 2) {
                $status = 'Terima';
            } elseif ($status == 3) {
                $status = 'Tolak';
            } elseif ($status == 4) {
                $status = 'Dicairkan';
            } else {
                $status = '';
            }
            $data['fungsi'] = $get_status['fungsi'];
            $data['id_cabang'] = $get_status['id_cabang'];
            $data['title']                     = "RAB CLC $cabang - (Status: $status)";
            $this->load->view("rab/cabang/clc", $data);
        } else {
            redirect("login");
        }
    }

    public function ajax_data()
    {
        $status = $this->input->post('status');
        $start     = $this->input->post('start');
        $draw     = $this->input->post('draw');
        $length = $this->input->post('length');
        $cari     = $this->input->post('search');
        if (isset($cari['value'])) {
            $_cari = $cari['value'];
        } else {
            $_cari = null;
        }
        $data     = $this->clc->getAllData($length, $start, $_cari, $status)->result_array();
        $count     = $this->clc->getAllData(null, null, $_cari, $status)->num_rows();

        array($cari);

        echo json_encode(array('recordsTotal' => $count, 'recordsFiltered' => $count, 'draw' => $draw, 'search' => $_cari, 'data' => $data));
    }
}
