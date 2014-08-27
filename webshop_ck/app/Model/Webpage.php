<?php

App::uses('AppModel', 'Model');

class Webpage extends AppModel {

    public $postData;
    
    public $validate = array(
         
        'page_label' => array(
            'page_labelRule-1' => array(
                'rule'    => array('notEmpty'),
                'message' => 'Empty value not allowed',
             ),
            
            'page_labelRule-2' => array(
                'rule'    => 'isUnique',
                'message' => 'Already has this record',
                'on' => 'create', // here
            ),
            
            /*'page_labelRule-3' => array(
                'rule' => 'alphaNumeric',
                'message' => 'Only alphabets and numbers allowed',
            ),*/
        ),
        
        'urlinput' => array(
            'notEmpty' => array(
                'rule' => array('notEmpty'),
                'message' => 'Please provide the URL',
            ),
        ),
        
        'template' => array(
            'notEmpty' => array(
                'rule' => array('notEmpty')
            ),
        ),
         
    );

    
    public function addpage(){
        $this->set($this->postData);
        if ($this->save()) {
            return $this->getLastInsertId();
        }
        else{
             
            return false;
        }
    }
    
    
    
    public function fetchWebPagesDropDown() {
        
        //$this->find('list',array('fields'=>array('id','page_label'),'conditions'=>$conditions));
        $webPageRS = $this->find('list',array('fields'=>array('id','page_label')));
        
        foreach ($webPageRS as $id=>$value) {
            $options[$id] = $value;
        }
        return $options;        
       
    }
    
    
    public function fetchWebPageById($id) {        
        return $this->read(null, $id);       
    }
    
    
    
    public function updatePage(){
        $this->read(null, $this->postData['Webpage']['id']);
        $this->set($this->postData);
        if($this->save()) 
            return true;         
        else
            return false;
    }
}
