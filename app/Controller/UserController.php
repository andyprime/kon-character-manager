<?php

class UserController extends AppController {

    public $helpers = array('Html', 'Form');


    public function all() {
        $this->set('users', $this->User->find('all'));   
    }
}

?>