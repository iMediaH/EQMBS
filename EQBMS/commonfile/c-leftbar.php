<div id="leftbar">
    	<div class="lefthead">   
        	<span >我的课程</span>
            <div class="icon-2x icon-plus-sign" id="my_head" ></div>
            </div>
            
       <!-- ********************head index 1**************************-->    
       
       <!-- ********************leftbody**************************-->      
                <ul id="leftbody">
                
                <li>
                <input type="text" name="left" id="leftadd" value=""/>
                <div class="icon-2x icon-plus-sign" id="ADD1" ></div>
                
 			<ul id="leftaddchild">
            
               <li id="del">
               <input type="text" name="left" id="leftdel" value=""/>
                <div class="icon-2x icon-remove-sign" id="DEL1" ></div>
                </li>
                
                <li id="del">
               <input type="text" name="left" id="leftdel" value=""/>
                <div class="icon-2x icon-remove-sign" id="DEL1" ></div>
                </li>
                
			</ul>
            </li>	
            
            
            </ul>
          
            
        	
        <!-- ********************leftbody**************************-->  
         </div>
<script>
$(document).ready(function(e) {
/*/*	$(".lefthead span").focus(function(){
		$(".icon-plus-sign").hide();
		
		});*/
    $("#bodybox #leftbar .lefthead .icon-plus-sign").click(function(){
		$("#bodybox #leftbar .leftbody .leftbody1").css('display','block');
		});
	$("#bodybox #leftbar .leftbody1 .icon-plus-sign").click(function(){
		//$("#bodybox #leftbar .leftbody  .leftbody2").css('display','inline');
	/*	var str="<input type='text' name='left' id='leftText2' value=''/> <div class='icon-2x icon-remove-sign' id='my_body_2'></div>";
		$(" #bodybox #leftbar .leftbody  .leftbody2").append(str);*/
		$("#bodybox #leftbar .leftbody .leftbody2").css('display','block');
		});
	
	$("#bodybox #leftbar .leftbody2 icon-remove-sign").click(function(){
		$("#bodybox #leftbar .leftbody .leftbody2").css('display','none');
		});//出现none不能使用*/
	$("#leftbody").hide();
	//$("#leftbody:eq(0)").css('background','#CCC');
	$(".lefthead #my_head ").click(function(){
		$("#leftbody").show();
		$("#leftaddchild").hide();
		});	
	$("#leftbody #ADD1").click(function(){
		$(this).next().show();
		});
	$("#leftaddchild #del #DEL1").click(function(){
		//e.preventDefault();
		$(this).parent().remove();	
		});
});
</script>         
    	