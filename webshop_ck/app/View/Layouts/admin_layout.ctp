<?php

/**
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */
 
?>
<!DOCTYPE html>
<html>
    <head>
	<?php echo $this->Html->charset(); ?>
        <title>Webshop Admin</title>
        

	<?php
            //echo $this->Html->meta('icon');
            //echo $this->Html->css('bootstrap.min.css');
            echo $this->Html->css('style_admin.css');
            echo $this->Html->css('jquery-ui-1.8.16.custom.css');
            echo $this->fetch('meta');
            echo $this->fetch('css');
            echo $this->fetch('script');
            echo $this->Html->script('script_admin'); // Include jQuery library
	?>
         
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    </head>
    <body>

        <div id="content">
            <input type="hidden" id="base_url" value="<?php echo $this->base;?>" />
            <?php echo $this->fetch('content'); ?>
        </div>



        <div class="footer-outer">
            <div class="footer-inner">
                <div class="footer"><p>&copy; All right reserved.</p></div>
            </div>
        </div>	
        <style>
            .cake-sql-log {
                background: #fff;
            }
            .cake-sql-log td {
                padding: 4px 8px;
                text-align: left;
                font-family: Monaco, Consolas, "Courier New", monospaced;
            }
            .cake-sql-log caption {
                color:#fff;
            }
            .cake-sql-log table tr td {
                padding: 6px;
                text-align: left;
                vertical-align: top;
                border-bottom:1px solid #269abc;
            }
             
        </style>
        <div style="clear:both;">
            <?php echo $this->element('sql_dump'); ?>
        </div>
    </body>
    
</html>
