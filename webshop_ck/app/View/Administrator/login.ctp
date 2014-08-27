<div class="wrapper">
    <div class="header-main">
        <div class="header">
            <div class="logo"><a title="Facebook Shopper" href="#url">Facebook Shopper</a></div>
        </div>
    </div>
    <div align="center"><div class="login-info"><?php echo $this->Session->flash(); ?></div></div>
    <div class="login-outer">   

        <div class="login-inner">

            <div class="login">                
                <div class="log-title"><img alt="" src="../images/login-form.png"></div>
                
                <?php echo $this->Form->create('Admin',array('class'=>'form','inputDefaults'=>array('label'=>false)));?>
                
                    <div class="user"><?php echo $this->Form->input('username',array('class'=>'','placeholder'=>'username'));?></div>
                    <div class="">
                        <?php echo $this->Form->input('password',array('class'=>'form-control'));?></div>
                    <div class="log-btn"><input type="submit" value="Inloggen" name=""></div>
                    <div class="forget"><a href="./forgot_pass.php">Wachtwoord vergeten? </a></div>
               
                <?php echo $this->Form->end();?>
            </div>
        </div>

    </div>
    <div class="push"></div>
</div>