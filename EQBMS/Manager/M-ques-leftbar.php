<!--
	作者：彭均莹
    任务：管理员-题型管理-左边框
    开发时间：2015/11/19 
    修改时间：
-->
<div id="leftbar">
    <div class="lefthead">   
        <span>题型管理</span>
    </div>
    <ul>
        <li>
        <div class="ques-type" id="single-choice">
            <span>单选题</span>
            <span id="ques-set"><i class="icon icon-plus-sign"></i></span></div>
            <ul class="ques-list">
                <li>单选题（默认）</li>
                <li>程序单选题</li>
            </ul>
        
        </li>
    	<li>
        <div class="ques-type" id="multiple-choice">
            <span>多选题</span>
            <span id="ques-set"><i class="icon icon-plus-sign"></i></span></div>
            <ul class="ques-list">
                <li>多选题（默认）</li>
                <li>多项选择题</li>
            </ul>
        
        </li>
    	<li>
        <div class="ques-type" id="short-answer">
            <span>简答题</span>
            <span id="ques-set"><i class="icon icon-plus-sign"></i></span></div>
            <ul class="ques-list">
                <li>简答题（默认）</li>
                <li>论述题</li>
            </ul>
        
        </li>
        <li>
        <div class="ques-type" id="judgment-ques">
            <span>判断题</span>
            <span id="ques-set"><i class="icon icon-plus-sign"></i></span></div>
            <ul class="ques-list">
                <li>判断题（默认）</li>
                <li>是非题</li>
                <li>对错题</li>
            </ul>
        
        </li>
    </ul>
</div>

<script type="text/javascript">
$(document).ready(function(e) {
	//显示编辑添加
    $("#single-choice").hover(
	function(e){
		$("#single-choice .icon").show();},
	function(e){
		$("#single-choice .icon").hide();});
		
	$("#multiple-choice").hover(
	function(e){
		$("#multiple-choice .icon").show();},
	function(e){
		$("#multiple-choice .icon").hide();});
		
	$("#short-answer").hover(
	function(e){
		$("#short-answer .icon").show();},
	function(e){
		$("#short-answer .icon").hide();});
		
	$("#judgment-ques").hover(
	function(e){
		$("#judgment-ques .icon").show();},
	function(e){
		$("#judgment-ques .icon").hide();});
		
		
	//子菜单显示
	$("#leftbar ul li").children("ul").hide();
	$("#leftbar").find("li:has(ul)").children(".ques-type").click(function(){
		if($(this).next("ul").is(":hidden"))
		{
			$(this).next("ul").slideDown("slow");
			if($(this).parent("li").siblings("li").children("ul").is(":visible"))
			{
				$(this).parent("li").siblings("li").find("ul").slideUp("1000");
			}
			return false;
		}
		else
		{
			$(this).next("ul").slideUp("normal");
			return false;
		}
	});
	
	
});
</script>