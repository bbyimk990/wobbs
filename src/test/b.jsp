<%@ page language='java' contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
	<style>
	 <style>	 a:link {	     color:#175199; }	 a:visited {	     color:#1a1a1a;	 }	 a:hover {	     color: #175199;	 }	 a:active {	     color:#4285f4;	 }	 a{	     text-decoration:none;	     font-size:109%;	 }	 html,body{	     background-color:#ffffff;	     width:99%;	     height:98%;	     overflow-x:hidden;	 }	 ::-webkit-scrollbar{	     width:6px;	     border-radius:8px;	     background-color:#FBBC05;	 }	 ::-webkit-scrollbar-track{    border-radius:8px;	 }	 ::-webkit-scrollbar-thumb{	     border-radius:8px;	     -webkit-box-shadow:inset 0 0 3px rgba(0,0,0,.3);	     background-color:#EA4335;	 }	 img.title{	     display:none;	 }	</style>
	</style>
	<script>
	 function  clickLike(likeId,dissId){
	     if(document.getElementById(likeId).title=='我觉得OK'){
		 if(document.getElementById(dissId).title=='取消Diss'){
		     document.getElementById('diss').value='-1';
		     document.getElementById(dissId).title='我觉得不行';
		     document.getElementById(dissId).style.color='#d9edff';
		 }
		 document.getElementById('like').value='1';
		 document.getElementById('clickForm').submit();
		 document.getElementById('like').value='0';
		 document.getElementById('diss').value='0';
		 document.getElementById(likeId).title='取消赞';
		 document.getElementById(likeId).style.color='#0084ff';
	     }else{
		 document.getElementById('like').value='-1';
		 document.getElementById('clickForm').submit();
		 document.getElementById('like').value='0';
		 document.getElementById(likeId).title='我觉得OK';
		 document.getElementById(likeId).style.color='#d9edff';
	     }
	 }
	 function clickDiss(likeId,dissId){
	     if(document.getElementById(dissId).title=='我觉得不行'){
		 if(document.getElementById(likeId).title=='取消赞'){
		     document.getElementById('like').value='-1';
		     document.getElementById(likeId).title='我觉得OK';
		     document.getElementById(likeId).style.color='#d9edff';
		 }
		 document.getElementById('diss').value='1';
		 document.getElementById('clickForm').submit();
		 document.getElementById('diss').value='0';
		 document.getElementById('like').value='0';
		 document.getElementById(dissId).title='取消Diss';
		 document.getElementById(dissId).style.color='#0084ff';
	     }else{
		 document.getElementById('diss').value='-1';
		 document.getElementById('clickForm').submit();		 		 		 document.getElementById('diss').value='0';
		 document.getElementById(dissId).title='我觉得不行';
		 document.getElementById(dissId).style.color='#d9edff';
	     }
	 }
	 function clickReplyDiv(replyDivId){
	     if(document.getElementById(replyDivId).style.display=='none'){
		 document.getElementById(replyDivId).style.display='block';
	     }else{
		 document.getElementById(replyDivId).style.display='none';
	     }
	 }
	 function clickShare(shareId){
	     document.getElementById(shareId).value=1;
	     document.getElementById('clickForm').submit();
	     document.getElementById(shareId).value=0;
	 }
	 function clickFavorite(favoriteId){
	     document.getElementById(favoriteId).value=1;
	     document.getElementById('clickForm').submit();
	     document.getElementById(favoriteId).value=0;
	 }
	 function clickImg(imgId){
	     if(document.getElementById(imgId).style.width!='100%'){
		 document.getElementById(imgId).title=document.getElementById(imgId).style.width;
		 document.getElementById(imgId).style.width='100%';
	     }else{
		 document.getElementById(imgId).width=document.getElementById(imgId).title;
	     }
	 }

	<a href='javascript:' onclick='clickImg("img");'>
	    <img src='/prj/wobbs/avatar/default' width='50px;' id="img"></img></a>
	<div id='auxiliaryDiv' name='auxiliaryDiv'><form action='/prj/wobbs/InPostClickServlet' id='clickForm' name='clickForm'><input type='hidden' name='like' id='like' value=0><input type='hidden' name='diss' id='diss' value=0><input type='hidden' name='share' id='share' value=0><input type='hidden' name='favorite' id='favorite' value=0><input type='hidden' name='report' id='report' value=0><input type='hidden' name='reply' id='reply' value><input type='hidden' name='POSTID' id='POSTID' value="+postId+"></form></div>
	<a href='javascript:' onclick='clickLike("like1","diss1")' id='like1' name='diss1' title='我觉得OK' style='font-size:200%;color:#d9edff;'>▲</a>
	<a href='javascript:' style='font-size:200%;color:#d9edff;' style='font-size:200%;color:#d9edff;' onclick='clickDiss("like1","diss1")' id='diss1' name='diss1' title='我觉得不行'>▼</a>
	<a href='javascript:' onclick='clickReplyDiv("replyDiv")' >评论</a>
	<div id='replyDiv' name='replyDiv' style='display:none'>
	    <form action='/prj/wobbs/ReplyPostServlet' method='post' name='publishForm' id='publishForm' target='_blank'>
	    <textarea rows='6' width='70%;'></textarea>
	    <button >
	    </form>
	</div>

    </body>
</html>


