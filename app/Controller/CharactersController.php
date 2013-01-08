<?php
class CharactersController extends AppController {
    public $helpers = array('Html', 'Form');

    public function index() {
        $c = $this->Character->find('all');
        $this->set('characters', $c);
    }
}
?>