<?
App::uses('AuthComponent', 'Controller/Component');

class User extends AppModel {
    public $primaryKey = 'user_id';

    public function beforeSave($options = array()) {
        if (isset($this->data[$this->alias]['password'])) {
            $this->data[$this->alias]['password'] = AuthComponent::password($this->data[$this->alias]['password']);
        }
        return true;
    }
}

?>