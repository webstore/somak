<div class="main">
    <?php echo  $this->element('admin_header');?>
    <!-- Page contents -->
    <div id="tabs" class="ui-tabs ui-widget ui-widget-content ui-corner-all">
       
        <?php echo  $this->element('admin_menu');?> 
        <link href="<?php echo $this->base;?>/js/ajaxUpload/uploadfile.min.css" rel="stylesheet">
        <script src="<?php echo $this->base;?>/js/ajaxUpload/jquery.uploadfile.min.js"></script>
        
        <div id="" style="">
            <div id="header" class="content ui-tabs-panel ui-widget-content ui-corner-bottom">
                
                <div id="firstpage_content" class="myform steps">
                    <?php echo $this->Form->create('WebpagesSetting',array('class'=>'form-horizontal','inputDefaults'=>array('label'=>false),'type'=>'post'));?>
                        
                        <?php echo $this->Form->hidden('page_action',array('class'=>'meta_input2','value'=>'header'));?>
                        
                        <h3>STAP 3: Het aanpassen van uw header: </h3>
                         
                        <p>&nbsp;</p>
                        <?php echo $this->Form->hidden('id',array('class'=>'meta_input2','type'=>'text'));?>
                        <div class="metas" data-tip="Header hoogte - Hier veranderd u de hoogte van de header ">
                            <label style="width:190px;"> Header Hoogte : </label>
                            <?php echo $this->Form->input('header_height',array('class'=>'meta_input2','placeholder'=>'(Ex: 200)','type'=>'text'));?>
                        </div>
                        <p>&nbsp;</p>
                        
                        <div data-tip="Header Tekst - Hier veranderd u de tekst van de header" class="metas">
                            <label style="width:190px;"> Header tekst: </label> 
                            <?php echo $this->Form->input('header_text',array('class'=>'meta_input2',));?>
                            
                        </div>
                        <p>&nbsp;</p>
                        
                        <div data-tip="Google Analytics - Tooltip_NL" class="metas">
                            <label style="width:190px;"> Google Analytics Co: </label> 
                            <?php echo $this->Form->textarea('google_analytics',array('class'=>'meta_input_textarea',));?>
                        </div>
                        
                        <div class="orangespacer"></div>
                        
                        <label class="otherlabel"> Upload uw logo voor de website:</label>
                        
                        <p>&nbsp;</p>
                        <div data-tip="Header Tekst - Hier veranderd u de tekst van de header" class="metas">
                            <label style="width:190px;"> Logo: </label> 
                            <!--<input type="text" name="header_text" id="header_text" value="" class="meta_input2">-->
                            <div id="singleupload1">Upload</div>
                            <?php echo $this->Form->hidden('header_img',array('class'=>'meta_input2','id'=>'header_img'));?>
                            <div id="logo_info" class="logoupload">
                                <?php
                                if(isset($this->data['header_img']['header_image']) && !empty($this->data['header_img']['header_image'])){ ?> 
                                    <div><img src="<?php echo $this->base?>/upload/<?php $this->data['header_img']['header_image']?>" width="130"/></div>
                                <?php
                                }
                                ?>
                            </div>
                            <br>
                        </div>
                         
                        
                        <input type="submit" value="Header Bijwerken" name="save" style="margin:20px;" class="custom-button">
                        
                     <?php echo $this->Form->end();?>
                </div>
                <div class="clear"></div>
                 
            </div>   
            
        </div>
    </div>
    <div class="bot"></div>
    <script>
    $(document).ready(function()
    {
        //Source: http://hayageek.com/docs/jquery-upload-file.php
        $("#singleupload1").uploadFile({
            url:"<?php echo $this->base;?>/administrator/ajaxlogoUploader",
            multiple:false,
            allowedTypes:"png,gif,jpg,jpeg",
            showStatusAfterSuccess:false,
            showAbort:false,
            showDone:false,
            dragDropStr: "<span><b>Browse logo</b></span>",
            onSuccess:function(files,data,xhr){
                if(data.length > 0) {
                    $("#header_img").val(data);
                    $("#logo_info").html("");
                    $("#logo_info").html("<div class='logoupload'><img src='<?php echo $this->base?>/uploads/"+data+"' width='130'></div>");
                }
            }

        });
    });
    </script>
</div>