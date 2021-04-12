<?php
defined('BASEPATH') or exit('No direct script access allowed');

class LoginModel extends Render_Model
{

    public function cekLogin($email, $password)
    {
        $query = $this->query(['user_email' => $email]);
        $return = null;

        if ($query->num_rows() == 1) {

            $cek = $this->b_password->verify($password, $query->result_array()[0]['user_password']);

            if ($cek == true) {
                $return['status'] = 0;
                $return['data']     = $query->result_array();
            } else {
                $return['status'] = 1;
                $return['data']     = null;
            }
        } else {
            $return['status']     = 2;
            $return['data']     = null;
        }

        return $return;
    }

    public function query($where)
    {
        return $this->db->select('a.id, a.user_nama, a.user_password, a.user_email, b.lev_nama, b.id as id_lev, c.id as id_jabatan, c.nama as jabatan_nama')
            ->join('levels as b', 'b.id = a.user_level')
            ->join('jabatans as c', ' c.id = a.id_jabatan')
            ->get_where('users as a', $where);
    }
}
