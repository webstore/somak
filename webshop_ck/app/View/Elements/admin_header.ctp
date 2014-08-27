<div class="header">
    <!-- header part -->
    <div class="logo">
        <img src="<?php echo $this->base;?>/images/main-logo.png">
    </div>
</div>    

<!-- Absolute Top Menu -->
<div class="topabsoulte">
    <a href="./edit_account.php" class="logout">Account bewerken</a>
    <a href="./newuser.php" class="logout">Add New User</a> 
    <?php echo $this->Html->link(__('Logout'), array('controller' => 'administrator', 'action' => 'logout',) ,array('class'=>'logout')) ?>
</div>
<div class="top"></div>

<!-- Top Menus -->
<div id="supertabs">
    <table style="border:0px;">
        <tbody>
            <tr id="topmenu_row">
                <td id="pagetd" class="selected-topmenu" style="border-color: white; border-width: 0px 0px 3px; border-style: solid;"><a href="<?php echo $this->base;?>/administrator/pages"><input type="button" value="Page Settings" id="super_page" class="logout"></a></td>
                <td id="widgtd" style="border-color: white;"><input type="button" value="Widgets &amp; Components" id="super_widget" class="logout"></td>
                <td id="mailtd" style="border-color: white;"><input type="button" value="Mailforms" id="super_mailform" class="logout"></td>
                <td id="othetd" style="border-color: white;"><input type="button" value="Other Settings" id="super_other" class="logout"></td>
            </tr>
        </tbody>
    </table>
</div>
 
<script>
    
    $(document).ready(function(){
        <?php
        $menu_pages = array('pages','siteheader');
        if(in_array($this->params['action'], $menu_pages)){?>
            $("#page_submenus").fadeIn(500);
            $("#page_submenus #tab_<?php echo $this->params['action']?>").css('background','#858584');
            $("#topmenu_row td").removeClass('selected-topmenu');
            $("#pagetd").addClass('selected-topmenu');            
        <?php
        }
        ?>
    })    
    
    /*$("#super_page").click(function(){
        $(".submenus").fadeOut(10);
        $("#page_submenus").fadeIn(500);
        $("#topmenu_row td").removeClass('selected-topmenu');
        $(this).parent("td").addClass('selected-topmenu');
    })

     $("#super_widget").click(function(){
        $(".submenus").fadeOut(10);
        $("#widgets_submenus").fadeIn(500);
        $("#topmenu_row td").removeClass('selected-topmenu');
        $(this).parent("td").addClass('selected-topmenu');
    })*/
</script>