<?php
defined('BASEPATH') or exit('No direct script access allowed');
class ClcModel extends Render_Model
{
    public function getAllData($show = null, $start = null, $cari = null)
    {

        if ($this->session->userdata('data')['level'] == 'Super Admin') {
            $where = array();
        } elseif ($this->session->userdata('data')['level'] == 'Admin Sekolah') {
            $where = array(
                'b.user_id' => $this->session->userdata('data')['id']
            );
        }

        if ($cari != null) {
            $where = array(
                'b.id' => $cari
            );
        }

        $exe = $this->db->select(' * ,b.nama as nama_cabang, a.nama as nama_aktifitas, a.status as statuss, a.kode as kodes, a.id')
            ->from(' rabs a')
            ->join(' cabangs b', ' a.id_cabang = b.id ', ' left ')
            ->join(' aktifitas c', ' a.id_aktifitas = c.id ', ' left ')
            ->where($where)
            ->get();

        return $exe;
    }

    public function getIdCabang()
    {
        $id_user =  $this->session->userdata('data')['id'];
        $result = $this->db->select("id as id_cabang, nama")->from("cabangs")->where(['user_id' => $id_user])->get()->row_array();
        return isset($result['id_cabang']) ? $result : ['id_cabang' => 0, 'nama' => ''];
    }
}
