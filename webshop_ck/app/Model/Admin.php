<?php
App::uses('AppModel', 'Model');

class Admin extends AppModel {
    
     public $validate = array(
        'username' => array(
            'notEmpty' => array(
                'rule' => array('notEmpty')
            ),
        ),
        'password' => array(
            'notEmpty' => array(
                'rule' => array('notEmpty')
            ),
        ),
        
        
        'password' => array(
            'confirmPassValues' => array(
                'rule' => array('confirmPassValues', 'confirm_password' ),
                'message' => 'Password and confirm password did not match' 
            ),
        ),
        
        'email' => array(
            'email' => array(
                'rule' => array('email')
            ),
        ),
    );
    
     
     
      public function beforeSave($options = array()) {
        parent::beforeSave();
        if (!empty($this->data['User']['password'])) {
            $this->data['User']['password'] = AuthComponent::password($this->data['User']['password']);
        }
        return true;
    }
}

