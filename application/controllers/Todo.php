<?php
class Todo extends CI_Controller {

    public function __construct(){
        parent::__construct();

        $this->load->helper('url');
        if(!$this->session->userdata('user_id')){
            redirect('auth/login');

        }
        $this->load->database();
    }

    public function index(){
        $user_id =$this->session->userdata('user_id');
        $query =$this->db->get_where('todos',['user_id'=>$user_id]);
        $data['todos']=$query->result();
        $this->load->view('todo_list', $data);
    }

    public function add(){
        $task = $this->input->post('task');
        if($task){
            $this->db->insert('todos', [
                'user_id' => $this->session->userdata('user_id'),
                'task' =>$task
            ]);
        }

        redirect('todo');
    }
}