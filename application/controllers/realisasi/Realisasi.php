<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Realisasi extends Render_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->sesion->cek_session();
        $this->cabangdetail = $this->db->get_where('cabangs', ['user_id' => $this->session->userdata('data')['id']])->row_array();
        $this->id_cabang                 = $this->cabangdetail['id'];
        $this->load->model("realisasi/DanaRabModel", 'realisasi');
    }

    public function index()
    {

        if ($this->session->userdata("data")['level'] == "Super Admin") {
            $this->load->view("realisasi/admin/index");
        } else if ($this->session->userdata("data")['level'] == "Admin Sekolah") {
            $get_status = $this->db->select('a.fungsi, a.status, b.nama, b.id as id_cabang, b.kode')
                ->join('cabangs b', 'b.id = a.id_cabang')
                ->get_where('rabs a', ['b.user_id' => $this->session->userdata('data')['id']])
                ->row_array();
            if ($get_status == null) {
                $this->load->model("rab/ClcModel", 'clc');
                $getCabang = $this->clc->getIdCabang();

                $get_status = [
                    'fungsi' => '0',
                    'status' => null,
                    'id_cabang' => $getCabang['id_cabang'],
                    'nama' => $getCabang['nama'],
                    'kode' => $getCabang['kode']
                ];
            }

            $status = $get_status['status'];
            $cabang = $get_status['nama'];
            $data['status'] = $status;
            $data['npsn'] = $get_status['kode'];
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
            $this->load->view("realisasi/cabang/index", $data);
        } else {
            redirect("login");
        }
    }

    public function ajax_data()
    {
        $npsn     = $this->input->post('npsn');
        $start     = $this->input->post('start');
        $draw     = $this->input->post('draw');
        $length = $this->input->post('length');
        $cari     = $this->input->post('search');
        if (isset($cari['value'])) {
            $_cari = $cari['value'];
        } else {
            $_cari = null;
        }
        $data     = $this->realisasi->getAllDataDetail($length, $start, $_cari, $npsn)->result_array();
        $count     = count($data);

        array($cari);
        $this->output_json(array('recordsTotal' => $count, 'recordsFiltered' => $count, 'draw' => $draw, 'search' => $_cari, 'data' => $data));
    }

    public function insertUpload()
    {
        $this->output_json(['name' => $this->realisasi->uploadImage()]);
    }

    public function insert()
    {
        $result = true;
        $datas = json_decode($this->input->post('data'));
        $total_rupiah = $datas->rupiah;
        $total_ringgit = $datas->ringgit;
        for ($i = 0; $i < count($datas->id_rab); $i++) {
            // Input values
            $id             = $datas->id_rab[$i];
            $id_cabang         = $datas->id_cabang;
            $nama             = $datas->nama;
            $keterangan     = $datas->keterangan;
            $harga_rupiah     = ((count($datas->id_rab) - 1) == $i) ? $total_rupiah  : $datas->rupiah_rab[$i];
            $harga_ringgit     = ((count($datas->id_rab) - 1) == $i) ? $total_ringgit  : $datas->ringgit_rab[$i];
            $tanggal         = $datas->tanggal;
            $gambar            = $datas->gambar;

            // Check values
            if (empty($nama)) $this->output_json(['message' => 'Nama tidak boleh kosong']);

            $r = true;
            $r = $this->realisasi->insert($id, $id_cabang, $nama, $keterangan, $harga_ringgit, $harga_rupiah, $tanggal, $gambar);

            // hitung harga real
            $total_rupiah -= $harga_rupiah;
            $total_ringgit -= $harga_ringgit;

            if ($r !== FALSE) {
                $get_saldo = $this->db->get_where('saldos', ['id_cabang' => $datas->id_cabang])->row_array();
                $total_saldo_ringgit = $get_saldo['total_ringgit'];
                $total_saldo_rupiah = $get_saldo['total_rupiah'];

                $update_saldo['total_ringgit'] = $total_saldo_rupiah - $harga_ringgit;
                $update_saldo['total_rupiah'] = $total_saldo_rupiah - $harga_rupiah;
                $this->db->where('id_cabang', $datas->id_cabang);
                $this->db->update('saldos', $update_saldo);

                //update sisa
                $data_sisa['sisa_ringgit'] = ((count($datas->id_rab) - 1) == $i) ? $datas->sisa_ringgit : 0;
                $data_sisa['sisa_rupiah'] = ((count($datas->id_rab) - 1) == $i) ? $datas->sisa_rupiah : 0;

                $this->db->where('id', $r['id']);
                $this->db->update('realisasis', $data_sisa);
            } else {
                $result = false;
            }
        }

        // //update saldo
        // $get_saldo = $this->db->get_where('saldos', ['id_cabang' => $id_cabang])->row_array();
        // $data['total_ringgit'] = $get_saldo['total_ringgit'] - $harga_ringgit;
        // $data['total_rupiah'] = $get_saldo['total_rupiah'] - $harga_rupiah;

        // $this->db->where('id_cabang', $id_cabang);
        // $this->db->update('saldos', $data);


        $this->output_json(
            [
                'result' => $result
            ]
        );
    }

    function getDetailRealisasi()
    {
        $id = $this->input->post('id');
        $get = $this->db->select('a.*, b.kode, b.nama as nama_aktifitas, b.total_harga_ringgit, b.total_harga_rupiah, c.kode as npsn, b.kode as kode')
            ->join('rabs b', 'b.id = a.id_rab')
            ->join('cabangs c', 'b.id_cabang = c.id')
            ->get_where('realisasis a', ['a.id' => $id])
            ->row_array();
        $this->output_json($get);
    }
}
