<?php
class Auth extends CI_Controller{

    public function __construct(){
        parent::__construct();
        $this->load->model('User_model');
        $this->load->helper('url');
    }

    public function register(){
        if($this->input->post()){
            $data = [
                'name' =>$this->input->post('name'),
                'email' =>$this->input->post('email'),
                'password' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
                'phone' =>$this->input->post('phone'),
            ];
            $this->User_model->register($data);
            redirect('auth/login');
        }
        $this->load->view('register');
    }

    public function login(){
       if($this->input->post()){
        $email=$this->input->post('email');
        $password=$this->input->post('password');
        $user = $this->User_model->login($email,$password);
        if($user){
            $this->session->set_userdata('user_id', $user->id);
            redirect('todo');

        }else{
            echo "Login Failed";
        }
    }
    $this->load->view('login');
    }

    public function logout(){
        $this->session->unset_userdata('user_id');
        redirect('auth/login');
    }
}