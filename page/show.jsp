<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<html>
    <meta http-equiv="Content-Type"content="text/html;charset=utf-8"/>
    <head>
	<style>
	 /* unvisited link */
	 a:link {
	     color: #50FA7B;
	 }

	 /* visited link */
	 a:visited {
	     color:#50FA7B ;
	 }

	 /* mouse over link */
	 a:hover {
	     color: hotpink;
	 }

	 /* selected link */
	 a:active {
	     color: blue;
	 }
	 a{
	     font-size:100%;

	 }

	 div{
	     margin:0;
	     color:#FF79C6;
	     
	 }
	 table,table td,table th{
	     border:1px solid #D42BEB;
	     border-collapse:collapse;
	     table-layout:fixed;
	     word-break:break-all;
	     
	 }
	 html,body{
	     background-color:#282A36;
	     height:33%;
	 }
	 .input1{
	     text-align:center;
	     border:0px;
	     background-color:gray;
	     font-size:medium;
	     color:#FF79C6;
	     width:85%;
	 }
	 .input2{
	     width:40px;
	     height:25px;
	     background-color:gray;
	     font-size:medium;
	     color:#FF79C6;
	     border:1;
	 }
	 ::-webkit-input-placeholder { /* WebKit browsers */
	     color:#FF79C6;/*set placeholder's text color*/
	 }
	</style>
    </head>
    <body>
	<div style="margin-top:0;width:100%;">
	    <form action="/prj/wobbs/ShowSearchServlet" method="post">
		<a style="text-decoration:none;float:left;" title="返回" href="registe.html"><b>＜</b></a>
		<a style="text-decoration:none;padding-left:1.3%;" title="上一页" href="registe.html"><b>&lt;</b></a>
		<input class="input1" type="text" name="vcode" placeholder="输入页数进行跳转或者文字进行搜索" >
		<a style="float:right;text-decoration:none;" title="搜索" href="a.html"><b>Ⓠ</b></a>
		<a style="text-decoration:none;" title="下一页" href="registe.html"><b>&gt;</b></a>
		<a style="text-decoration:none;float:right;" title="放大" href="registe.html"><b>＞</b></a>
	    </form>

	    <div>
	    </div>

    </body>
</html>
