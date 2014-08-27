<div class="tab-menucont">
    <!-- Pages Menu --->
    <ul id="page_submenus"  class="submenus" style="background:#EEEEEE;display:none;">
        <li id="tab_pages" class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active" style="display: list-item;">
            <a href="<?php echo $this->base;?>/administrator/pages"><span>1</span>Pagina's</a>
        </li>       
        <li id="tab_siteheader" class="ui-state-default ui-corner-top" style="display: list-item;">
            <a href="<?php echo $this->base;?>/administrator/siteheader"><span>2</span>Header</a>
        </li>                
        <li id="tab_footer" class="ui-state-default ui-corner-top" style="display: list-item;">
            <a href="#myfooter"><span>4</span>Footer</a>
        </li>  
        <li id="tab_menu" class="ui-state-default ui-corner-top" style="display: list-item;">
            <a href="#mymenu"><span>3</span>Menu</a>
        </li>
    </ul>
    <!-- Pages Menu --->


    <ul id="widgets_submenus" class="submenus" style="background:#EEEEEE;display:none;">
        <li id="tab_theme" class="ui-state-default ui-corner-top" style="display: list-item;"><a href="#mytheme"><span>5</span>Theme</a></li>
        <li id="tab_slider" class="ui-state-default ui-corner-top" style="display: list-item;"><a href="#bannerslider"><span>1</span>Slider		
            </a></li>
        <li id="tab_widgets" class="ui-state-default ui-corner-top" style="display: list-item;"><a href="#widgets"><span>3</span>Widgets</a></li>
        <li id="tab_widgetpages" class="ui-state-default ui-corner-top" style="display: list-item;"><a href="#templates"><span>4</span>Templates and Default Pages</a></li>
    </ul>
</div>


<div align="center" class="flashinfo"><?php echo $this->Session->flash(); ?></div>