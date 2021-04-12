<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ProfileModel extends Render_Model
{
    public function getDataUser($id)
    {
        $this->db->select('a.id, a.user_nama, a.id_jabatan, a.user_tanggal_lahir, a.user_alamat, a.user_photo, a.user_phone, a.mulai_bekerja,  b.nama as jabatan_nama, b.id_perusahaan');
        $this->db->from('users as a');
        $this->db->join('jabatans as b', 'a.id_jabatan = b.id', 'left');
        $this->db->where(['a.id' => $id]);
        return $this->db->get()->row_array();
    }

    public function getDataPerusahaans()
    {
        $this->db->select('a.id, a.nama');
        $this->db->from('perusahaans as a');

        return $this->db->get()->result_array();
    }

    public function getDataJabatans($id_perusahaan = null)
    {
        $this->db->select('a.id, a.nama');
        $this->db->from('jabatans as a');
        if ($id_perusahaan) $this->db->where(['id_perusahaan' => $id_perusahaan]);
        return $this->db->get()->result_array();
    }
}
