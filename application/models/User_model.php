<?php
class User_model extends CI_Model{
    public function register($data){
        return $this->db->insert('users', $data);
    }

    public function login($email,$password){
        $this->db->where('email', $email);
        $user = $this->db->get('users')->row();
        if($user && password_verify($password, $user->password)){
            return $user;
        }
        return false;
    }
}