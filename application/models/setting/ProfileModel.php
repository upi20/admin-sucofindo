<?php
defined('BASEPATH') or exit('No direct script access allowed');
class ProfileModel extends Render_Model
{
    public function getDataUser($user_id = null)
    {
        $result = null;
        if ($user_id) {
            $result = $this->db->get_where('cabangs', ['user_id' => $user_id])->row_array();
        } else {
            $result = $this->db->get_where('cabangs', ['user_id' => $this->session->userdata('data')['id']])->row_array();
        }
        return $result;
    }

    public function updateDataCabang($id, $data)
    {
        return $this->db
            ->set($data)
            ->where('id', $id)
            ->update('cabangs');
    }
}
