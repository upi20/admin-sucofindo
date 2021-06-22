<?php
defined('BASEPATH') or exit('No direct script access allowed');
class DanaRabModel extends Render_Model
{
    // used
    public function getAllDataDetail($show = null, $start = null, $cari = null, $npsn = null)
    {
        if ($this->session->userdata('data')['level'] == 'Super Admin') {
            if ($npsn == null) {
                $exe = $this->db->query("SELECT sum(a.total_harga_ringgit) as total_ringgit, sum(a.total_harga_rupiah) as total_rupiah, a.id_cabang, b.kode, b.user_id, b.nama FROM rabs a join cabangs b on a.id_cabang = b.id WHERE a.status = '2'  GROUP BY a.id_cabang");
            } else {
                $exe = $this->getAllDataDetailAction($npsn);
            }
        } else {
            $exe = $this->getAllDataDetailAction($npsn);
        }
        return $exe;
    }

    // used
    private function getAllDataDetailAction($npsn)
    {
        $cek = $this->db->select('a.status')->join('cabangs b', 'a.id_cabang = b.id')->limit(1)->get_where('rabs a', ['b.kode' => $npsn])->row_array();
        if ($cek['status'] == 0 or $cek['status'] == 1 or $cek['status'] == 3) {
            $status = 2;
        } else {
            $status = $cek['status'];
        }
        return $this->db->select(' * , b.kode as npsn, b.nama as nama_cabang, a.nama as nama_aktifitas, a.status as statuss, a.kode as kodes,z.id as id_realisasi, a.id')
            ->from(' rabs  a')
            ->join(' realisasis z ', ' a.id = z.id_rab ', ' left ')
            ->join(' cabangs b', ' a.id_cabang = b.id ', ' left ')
            ->join(' aktifitas c', ' a.id_aktifitas = c.id ', ' left ')
            ->where(' b.kode ', $npsn)
            ->where(' a.status ', $status)
            ->order_by('a.kode', 'asc')
            ->get();
    }


    public function getAllDataDanaSisa($show = null, $start = null, $cari = null, $npsn = null)
    {
        if ($this->session->userdata('data')['level'] == 'Super Admin') {
            // if ($npsn == null) {
            // 	$exe = $this->db->select(' * , b.kode as npsn, b.nama as nama_cabang, a.nama as nama_aktifitas, a.status as statuss, a.kode as kodes,z.id as id_realisasi, a.id, z.sisa_ringgit, z.sisa_rupiah')
            // 		->from(' rabs  a')
            // 		->join(' realisasis z ', ' a.id = z.id_rab ', ' left ')
            // 		->join(' cabangs b', ' a.id_cabang = b.id ', ' left ')
            // 		->join(' aktifitas c', ' a.id_aktifitas = c.id ', ' left ')
            // 		// ->where('z.id is NOT NULL')
            // 		->where(' z.sisa_ringgit > 0')
            // 		->where(' a.status ', 2)
            // 		->order_by('b.kode', 'asc')
            // 		->order_by('a.kode', 'asc')
            // 		->get();
            if ($npsn == null) {
                $exe = $this->db->query("SELECT FORMAT(sum(a.sisa_ringgit),2) as sisa_ringgit, FORMAT(sum(a.sisa_rupiah),0) as sisa_rupiah, a.id_cabang, b.kode, b.user_id, b.nama FROM realisasis a join cabangs b on a.id_cabang = b.id WHERE a.sisa_ringgit > 0 GROUP BY a.id_cabang");
            } else {
                $exe = $this->getAllDataDanaSisaAction($npsn);
            }
        } else {
            $exe = $this->getAllDataDanaSisaAction($npsn);
        }

        return $exe;
    }

    private function getAllDataDanaSisaAction($npsn)
    {
        $cek = $this->db->select('a.status')->join('cabangs b', 'a.id_cabang = b.id')->limit(1)->get_where('rabs a', ['b.kode' => $npsn])->row_array();
        if ($cek['status'] == 0 or $cek['status'] == 1 or $cek['status'] == 3) {
            $status = 2;
        } else {
            $status = $cek['status'];
        }
        return $this->db->select(' * , b.kode as npsn, b.nama as nama_cabang, a.nama as nama_aktifitas, a.status as statuss, a.kode as kodes,z.id as id_realisasi, a.id, z.sisa_ringgit, z.sisa_rupiah')
            ->from(' rabs  a')
            ->join(' realisasis z ', ' a.id = z.id_rab ', ' left ')
            ->join(' cabangs b', ' a.id_cabang = b.id ', ' left ')
            ->join(' aktifitas c', ' a.id_aktifitas = c.id ', ' left ')
            ->where(' b.kode ', $npsn)
            ->where(' z.sisa_ringgit > 0')
            ->where(' a.status ', $status)
            ->get();
    }

    public function getDataKodeNPSN($id_cabang = null)
    {
        $exe = $this->db->select('a.kode, a.nama')->get_where('rabs a', ['a.id_cabang' => $id_cabang])->result_array();
        return $exe;
    }

    public function getAllData($show = null, $start = null, $cari = null, $npsn = null)
    {
        $exe                  = $this->db->select(' * , b.kode as npsn, b.nama as nama_cabang, a.nama as nama_aktifitas, a.status as statuss, a.kode as kodes,z.id as id_realisasi, a.id, z.sisa_ringgit, z.sisa_rupiah')
            ->from(' rabs  a')
            ->join(' realisasis z ', ' a.id = z.id_rab ', ' left ')
            ->join(' cabangs b', ' a.id_cabang = b.id ', ' left ')
            ->join(' aktifitas c', ' a.id_aktifitas = c.id ', ' left ')
            ->where(' b.kode ', $npsn)
            ->where('z.id', NULL)
            ->get();

        return $exe;
    }

    public function getTotalHarga($npsn)
    {
        $exe                  = $this->db->select_sum('total_harga_ringgit')
            ->from(' rabs a')
            ->join(' cabangs b', ' a.id_cabang = b.id ', ' left ')
            ->join(' aktifitas c', ' a.id_aktifitas = c.id ', ' left ')
            ->where(' b.kode ', $npsn)
            ->get()
            ->row_array();
        return $exe;
    }

    public function getTotalHargaRupiah($npsn)
    {
        $exe                  = $this->db->select_sum('total_harga_rupiah')
            ->from(' rabs a')
            ->join(' cabangs b', ' a.id_cabang = b.id ', ' left ')
            ->join(' aktifitas c', ' a.id_aktifitas = c.id ', ' left ')
            ->where(' b.kode ', $npsn)
            ->get()
            ->row_array();
        return $exe;
    }

    public function insert($id, $id_cabang, $nama, $keterangan, $harga_ringgit, $harga_rupiah, $tanggal, $gambar)
    {
        $sql = "INSERT INTO realisasis (id_rab, id_cabang, nama, keterangan, harga_ringgit, harga_rupiah, tanggal, gambar) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
        $q = $this->db->query($sql, [$id, $id_cabang, $nama, $keterangan, $harga_ringgit, $harga_rupiah, $tanggal, $gambar]);

        $return['id'] = $this->db->insert_id();
        return $return;
    }

    public function uploadImage()
    {
        $nama = $this->session->userdata('data')['nama'];
        $id = $this->session->userdata('data')['id'];

        $config['upload_path']          = './gambar/';
        $config['allowed_types']        = 'gif|jpg|png|jpeg|JPG|PNG|JPEG';
        $config['file_name']            = $id . ' ' . $nama . ' ' . md5(uniqid("mengikat ilmu dengan menulis", true));
        $config['overwrite']            = true;
        $config['max_size']             = 100000;
        $this->load->library('upload', $config);
        $this->upload->initialize($config);
        if ($this->upload->do_upload('file')) {
            return $this->upload->data("file_name");
        }
    }

    public function insertSisa($id_realisasi, $sisa_ringgit, $sisa_rupiah, $kategori, $id_rab, $jumlah_ringgit, $jumlah_rupiah, $keterangan)
    {
        $status = 1;
        $sql = "INSERT INTO pindah_danas (id_realisasi, sisa_ringgit, sisa_rupiah, kategori, id_rab, jumlah_ringgit, jumlah_rupiah, status, keterangan) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?);";
        $stok_selisih = 0;
        $q = $this->db->query($sql, [$id_realisasi, $sisa_ringgit, $sisa_rupiah, $kategori, $id_rab, $jumlah_ringgit, $jumlah_rupiah, $status, $keterangan]);

        $return['id'] = $this->db->insert_id();
        return $return;
    }

    public function getAllDataDanaKurang($npsn = null, $id_cabang = null)
    {
        $cek = $this->db->select('a.status')->join('cabangs b', 'a.id_cabang = b.id')->limit(1)->get_where('rabs a', ['a.id_cabang' => $id_cabang])->row_array();
        if ($cek['status'] == 0 or $cek['status'] == 1 or $cek['status'] == 3) {
            $status = 2;
        } else {
            $status = $cek['status'];
        }
        $this->db->select(' * ,z.id_cabang as asu, b.kode as npsn, b.nama as nama_cabang, a.nama as nama_aktifitas, a.status as statuss, a.kode as kodes,z.id as id_realisasi, a.id, z.sisa_ringgit, z.sisa_rupiah');
        $this->db->from(' rabs  a');
        $this->db->join(' realisasis z ', ' a.id = z.id_rab ', ' left ');
        $this->db->join(' cabangs b', ' a.id_cabang = b.id ', ' left ');
        $this->db->join(' aktifitas c', ' a.id_aktifitas = c.id ', ' left ');
        $this->db->where(' z.sisa_ringgit < 0');
        $this->db->where(' a.status ', $status);
        if ($npsn != null) {
            $this->db->where(' b.kode ', $npsn);
        }
        if ($id_cabang != null) {
            $this->db->where('z.id_cabang', $id_cabang);
        }

        $this->db->order_by('a.kode', 'asc');

        return $this->db->get();
    }

    // dana kurang ajax
    public function superAdminDanaKurang()
    {
        return $this->db->query("SELECT FORMAT(sum(a.sisa_ringgit),2) as sisa_ringgit, FORMAT(sum(a.sisa_rupiah),0) as sisa_rupiah, a.id_cabang, b.kode, b.user_id, b.nama FROM realisasis a join cabangs b on a.id_cabang = b.id WHERE a.sisa_ringgit < 0 GROUP BY a.id_cabang");
    }
}
