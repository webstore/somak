<?php

/**
 * Description of AdminastratorController
 *
 * @author somak
 */
App::uses('AppController', 'Controller');

class AdministratorController extends AppController {

    //put your code here
    public $modelAdmin, $modelWebPage;
    public $loginUser;
    
    //public $helpers = array('Html','Form','Session');
    
    public function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow('login');
        $this->Auth->authenticate = array(
            'all' => array('userModel' => 'Admin'),
            'Form',
            'Basic',
        );
         
        $this->Auth->loginRedirect = array('controller'=>'administrator', 'action'=>'index');
        $this->Auth->logoutRedirect = array('controller'=>'administrator', 'action'=>'login');
        $this->layout = 'admin_layout';
        $this->initModels();      
    }
    
    public function initModels(){
        
        $this->loadModel('Admin');
        $this->loadModel('Webpage');
        $this->modelAdmin = $this->Admin;                
        $this->modelWebPage = $this->Webpage;
        
    }

    /** Login page * */
    public function login() {
        
        if ($this->request->is('post')) {
             
            if ($this->Auth->login()) {
                $this->loginUser = AuthComponent::user();
                $this->redirect($this->Auth->redirect());
            } 
            else {
                $this->Session->setFlash(__('Invalid username or password'));
            }
        }
        
    }   
    
    /** Logout page * */
    public function logout() {
        $this->redirect($this->Auth->logout());
    }
        
    
    public function index(){
    } 
   
    public function pages(){
        $webpageDropDown = $this->modelWebPage->fetchWebPagesDropDown();
        $this->set('webpageDropDown', $webpageDropDown);
        
        if ($this->request->is('post')) {
            
            $this->modelWebPage->postData = $this->request->data;
            
            switch ($this->request->data['Webpage']['webpage_action']) {
                
                case 'add':
                    $lastInsertedId = $this->modelWebPage->addpage();
                    if($lastInsertedId!=false) 
                        $this->Session->setFlash(__('Record has been created'));
                break;
                
                
                case 'update':
                    if($this->modelWebPage->updatePage())
                        $this->Session->setFlash(__('Record updated successfully'));
                    else
                        $this->Session->setFlash(__('Unable to update records'));
                break;
            
                                
                case 'delete':
                    $this->modelWebPage->delete($this->request->data('Webpage.id'));
                    $this->Session->setFlash(__('Record deleted successfully'));
                break;
                
            }                
            
            
//            if($this->request->data['Webpage']['webpage_action']=='add') {
//                
//                $lastInsertedId = $this->modelWebPage->addpage();
//                
//                if($lastInsertedId!=false){
//                    $this->Session->setFlash(__('Record has been created'));
//                    
//                }        
//            }
                
//            
//            if($this->request->data['Webpage']['webpage_action']=='delete') {
//                
//                $this->modelWebPage->delete($this->request->data('Webpage.id'));
//                
//                $this->Session->setFlash(__('Record deleted successfully'));
//            }
            
            $this->redirect('pages#info');
        }
        
    }
    
    public function ajaxloadpage(){
        
        if ($this->request->is('post')) {
            
            $pageRs = $this->modelWebPage->fetchWebPageById($this->request->data['webpage_id']);
            
            if(isset($pageRs['Webpage']) && !empty($pageRs['Webpage'])) 
                echo json_encode($pageRs['Webpage']);            
        }
        exit();
    }   
    
    
    
    public function siteheader(){
     
        $this->loadModel('WebpagesSetting');
        
        $settingRS = $this->WebpagesSetting->find('first');
        
        if (empty($this->data)) {
            $this->data = $settingRS;
        }
        
        if ($this->request->is('post')) {
            
            switch ($this->request->data['WebpagesSetting']['page_action']) {
                case 'header':
                    
                    //$this->WebpagesSetting->set($this->request->data);
                    
                    if($this->WebpagesSetting->save($this->request->data))                     
                        $this->Session->setFlash(__('Record has been saved'));
                    else
                        $this->Session->setFlash(__('Unable to save'));
                    
                break;
            }                           
            $this->redirect('siteheader');
        }        
    }
    
    
    public function ajaxlogoUploader() {
        $returnLogoName = '';
        
        if(isset($_FILES["file"]["tmp_name"]) && !empty($_FILES["file"]["tmp_name"])){
            
            $tmp_name = $_FILES["file"]["tmp_name"];
            
            $fileInfo = (pathinfo($_FILES["file"]["name"]));

            if (isset($fileInfo['extension'])) {

                $extenstion = $fileInfo['extension'];
                $searchArr = array(',', ' ', '.');
                $replaceArr = array('', '_', '_');

                $name = str_replace($searchArr, $replaceArr, $_FILES["file"]["name"]);
                
                $refinedName = WWW_ROOT . 'uploads' . DS ."site_logo.$extenstion";
                
                if (move_uploaded_file($tmp_name,  $refinedName)) {
                    $returnLogoName = "site_logo.$extenstion";
                }
                
            }

        }
        
        echo $returnLogoName;
        exit();
    }

}
