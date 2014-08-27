<?php
 

/**
 * Description of Webpagesetting
 *
 * @author somak
 */
App::uses('AppModel', 'Model');

class WebpagesSetting extends AppModel {  
    
    public $validate = array(
         
        'header_text' => array(
            'notEmpty' => array(
                'rule' => array('notEmpty')
            ),
        ),
         
    );
    
}
