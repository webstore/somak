<div class="main">
    <a name="info"></a>
    <?php echo  $this->element('admin_header');?>
    <!-- Tinmce -->
    <script type="text/javascript" src="../js/tinymce/jscripts/tiny_mce/tiny_mce.js"></script>
    <script type="text/javascript" src="../js/tinymce/examples/lists/image_list.js"></script>
    <script type="text/javascript">
        tinyMCE.init({
                // General options
                mode : "exact",
                elements : "elm2,elm3,elm4",
                theme: "advanced",
                relative_urls: false,
                plugins: "jbimages,autolink,lists,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,wordcount,advlist,autosave,visualblocks",
                // Theme options
                theme_advanced_buttons1: "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,styleselect,formatselect,fontselect,fontsizeselect",
                theme_advanced_buttons2: "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,|,|,image,jbimages,|,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
                theme_advanced_buttons3: "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
                theme_advanced_buttons4: "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak,restoredraft,visualblocks",
                theme_advanced_toolbar_location: "top",
                theme_advanced_toolbar_align: "left",
                theme_advanced_statusbar_location: "bottom",
                theme_advanced_resizing: true,
                // Example content CSS (should be your site CSS)
                //content_css : "css/content.css",

                // Drop lists for link/image/media/template dialogs
                template_external_list_url: "lists/template_list.js",
                external_link_list_url: "lists/link_list.js",
                external_image_list_url: "lists/image_list.js",
                media_external_list_url: "lists/media_list.js",
                // Style formats
                style_formats: [
                    {title: 'Bold text', inline: 'b'},
                    {title: 'Red text', inline: 'span', styles: {color: '#ff0000'}},
                    {title: 'Red header', block: 'h1', styles: {color: '#ff0000'}},
                    {title: 'Example 1', inline: 'span', classes: 'example1'},
                    {title: 'Example 2', inline: 'span', classes: 'example2'},
                    {title: 'Table styles'},
                    {title: 'Table row 1', selector: 'tr', classes: 'tablerow1'}
                ],
                // Replace values for the template plugin
                template_replace_values: {
                    username: "Some User",
                    staffid: "991234"
                }
            });
    </script>
    <!-- Tinmce -->
    <div id="tabs" class="ui-tabs ui-widget ui-widget-content ui-corner-all">

        <?php echo  $this->element('admin_menu');?> 
        
        <!-- Page contents -->
        <div id="area">
            <!--- ADD THE PAGE START ---->
            <p>&nbsp;</p>
            <div id="firstpage_content" class="steps">
                <h3>STAP 1: Maak uw website pagina's. </h3> 
                <p>&nbsp;</p>
                <?php echo $this->Form->create('Webpage',array('class'=>'form-horizontal','inputDefaults'=>array('label'=>false)));?>
                    <label name="fileNameLabel" id="fileNameLabel">Voeg een nieuwe pagina toe aan de website:</label>

                    <?php echo $this->Form->input('page_label',array('class'=>'custom-input',));?>

                    <?php echo $this->Form->hidden('webpage_action',array('value'=>'add'))?>

                    <?php echo $this->Form->submit('Pagina toevoegen',array('class'=>'custom-button'))?>

                <?php echo $this->Form->end();?>
                <p>&nbsp;</p>
                <div class="clear"></div>
                
                
                
                <!--- DELETE ---->
                <?php echo $this->Form->create('Webpage',array('class'=>'form-horizontal','inputDefaults'=>array('label'=>false)));?>
                    <label name="fileNameLabel" id="fileNameLabel">Pagina wissen van de website:</label>

                    <?php echo $this->Form->select('id', $webpageDropDown, array('empty'=>false,'class'=> 'custom-input2'));?>

                    <?php echo $this->Form->hidden('webpage_action',array('value'=>'delete'))?>

                    <?php echo $this->Form->submit('Pagina verwijderen',array('class'=>'custom-button'))?>

                <?php echo $this->Form->end();?>
                    <p>&nbsp;</p>
                <div class="clear"></div>
                
                
                
                <!--- UPDATE THE PAGE CONTENT START ---->
                <?php echo $this->Form->create('Webpage',array('class'=>'form-horizontal','inputDefaults'=>array('label'=>false)));?>
                
                    <?php echo $this->Form->hidden('webpage_action',array('value'=>'update'))?>
                
                    <?php echo $this->Form->hidden('webnpagid',array('class'=>'meta_input','required'=>false, 'id'=>'WebPageId_edit'));?>
                
                    <h3>STAP 2: Inhoud toevoegen aan uw pagina's.</h3>

                    <div style="margin-top:20px;">
                        <div data-tip="Load Page - Tooltip">
                            <label name="fileNameLabel" id="fileNameLabel"> Kies de pagina die u wilt bewerken:	 </label> 
                            
                            <?php echo $this->Form->select('id', $webpageDropDown, array('empty'=>'-- Kiezen --','class'=> 'custom-input2','id'=>'webpage_2'));?>
                            <!--<input type="button" value="Laad de inhoud" onclick="tinyMCE.get('elm2').show(); return false;" class="custom-button"><br><br>-->
                            <input type="button" value="Laad de inhoud" onclick="loadWebpage($('#webpage_2').val());" class="custom-button"><br><br>
                        </div>

                        <div style="display:none;" id="update_content">
                            <!-------------------- META TITLE - META DESCRIPTION for this page ------------------------------------->
                            <div data-tip="Pagina titel" class="metas">
                                <span> Page Title: </span>
                                <?php echo $this->Form->input('page_label',array('class'=>'meta_input',  'id'=>'WebPageLabel_edit'));?>
                                <div><?php echo $this->Form->error('WebPageLabel_edit');?></div>
                            </div>
                            <br><br>
                            <div data-tip="Meta title - Vul hier de meta titel in voor deze pagina. Deze titel wordt getoont in Google" class="metas">
                                <span> Meta Title: </span>
                                <?php echo $this->Form->input('meta_t',array('class'=>'meta_input','required'=>false));?>
                                <div><?php echo $this->Form->error('meta_t');?></div>
                            </div>
                            <br><br>
                            <div data-tip="Meta description - Vul hier uw Meta omschrijving in deze moet niet dezelfde zijn als de gewonen beschrijving	
                                 " class="metas">
                                <span> Meta Description: </span>                            
                                <?php echo $this->Form->input('meta_d',array('class'=>'meta_input','required'=>false,'style'=>'height:18px;resize:none;overflow:hidden'));?>
                            </div>
                            <br><br>
                            <div data-tip="Meta keywords - Vul hier uw Meta zoekwoorden in	 door een komma gescheiden	
                                 " class="metas">
                                <span> Meta Keywords: </span>
                                 <?php echo $this->Form->input('meta_k',array('class'=>'meta_input','required'=>false));?>
                            </div>

                            <!------------------------- TinyMCE editor. --- Begins here! ---------------->
                            <div style="margin:20px; float:left; width:90%;" >
                                <?php echo $this->Form->textarea('text',array('id'=>'elm2','class'=>'meta_input','required'=>false));?>
                            </div>

                            <table width="50%" cellspacing="0" cellpadding="5px" border="0" style="margin:20px;" class="atable">
                                <tbody>
                                    <tr>
                                        <td style="min-width:300px;">
                                            <span data-tip="Wilt u dat deze pagina getoont word als uw homepage. Dit kan maar voor 1 pagina gelden" style="float:left;">
                                            Dit is de HOME pagina?&nbsp;
                                            </span>
                                            <?php echo $this->Form->checkbox('is_home', array('hiddenField' => true));?>
                                        </td>
                                        <td style="max-width:500px;">
                                            <div data-tip="Choose the language of the page._NL" class="metas">

                                            </div>	
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <div data-tip="Pagina Url - dit is het gedeelte wat achter uw domeinnaam komt	 www.domeinnaam.nl/pagina.html" class="metas">
                                <span style="width:300px; float:left;"> URL of the page: (Ex: home.html, contact.html)</span>                            
                                <?php echo $this->Form->input('urlinput',array('class'=>'meta_input','style'=>'width:620px',));?>
                                <?php echo $this->Form->hidden('template',array('class'=>'meta_input','value'=>'NA'));?>
                            </div>


    <!--                        <div style="display:table; margin:30px 0px;" data-tip="Laad widget		
                                 ">
                                <label> Kies een template voor deze pagina		
                                </label>
                                <select name="templateSelector" id="templateSelector" class="custom-input2" style="float:left;">	
                                    <option value="">--Kiezen		
                                        --</option>
                                    <option value="Product Page">Product Page</option><option value="Category Page">Category Page</option><option value="Home Page">Home Page</option><option value="Default Page">Default Page</option><option value="Three Column Page">Three Column Page</option>							</select>
                                <input type="text" readonly="" style="width:200px; margin-left:30px; border-radius:12px;" value="" name="templateSelector_input" id="templateSelector_input" class="meta_input">
                            </div>-->
                            <?php echo $this->Form->submit('Pagina verwijderen',array('class'=>'custom-button'))?>
                        </div>
                    </div>
                <?php echo $this->Form->end();?>
                 

            </div> 
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        </div>
        <!-- Page contents -->
    </div>
    
    <div class="bot"></div>

</div>