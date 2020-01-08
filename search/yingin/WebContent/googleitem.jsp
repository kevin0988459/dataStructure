<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>GoogleSearch</title>
<link rel="stylesheet" href="animate.css" type="text/css">
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.6.1.min.js"></script>
</head>
<div> <h1><%%></h1></div>
<div style="text-align:center;"><img src="https://i.imgur.com/FfzXArX.png"width="300" height="200"></div>
<body>
<%
String[][] orderList = (String[][])  request.getAttribute("query");
String[][] orderList1= (String[][])  request.getAttribute("relative");
String keywordlist = request.getParameter("keyword");
for(int i =0 ; i < orderList.length;i++){%>
	<blockquote><a href='<%= orderList[i][1] %>'><%= orderList[i][0] %></a><br><h style="font-size:10px ;"><%= orderList[i][1] %></h><br><br></blockquote>
<%
}
%>
<hr size="5" align="center" noshade width="90%" color="#ff8000">
<div><blockquote> <h1><font color="#ff8000" size = 4><%=keywordlist%></font><font size =4 >的相關搜尋</font></h1></blockquote></div>
<% for(int i =0 ; i < orderList1.length;i++){%>
<blockquote><a href='<%= orderList1[i][1] %>'><%= orderList1[i][0] %></a><br><br></blockquote>
<%
}
%>
<div id='loading'>正在載入頁面資料...</div>
<script>
$(window).load(function(){
        $('#loading').hide(1000);
        });
</script>
</body>
</html>