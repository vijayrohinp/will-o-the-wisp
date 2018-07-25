<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page language="java" import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Results</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body bgcolor="#CBE32D">
<h1 style="color:#005A31"><center>Top 20 List of KRYPT ARENA</center></h1>
<%
int count=1;
String query="select * from will order by score desc limit 20";
Connection conn=null;
Statement stmt=null;
ResultSet rs=null;
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp","root","ccwisp");
 stmt=conn.createStatement();
 stmt.execute(query);
  rs=stmt.getResultSet();
  %>
    <table padding="20px" border="1" align="center" width="500px">
  <tr><th>SNo</th><th>Name1</th><th>Name2</th><th>phno1</th><th>phno2</th><th>score</th></tr>
  <%
  while(rs.next()){
	  String name1=rs.getString("name1");
    String name2=rs.getString("name2");
	  String phone1=rs.getString("phno1");
	  String phone2=rs.getString("phno2");
    String score=rs.getString("score");
	  %>
		<tr><td><%=count++ %></td><td><%=name1 %></td><td><%=name2 %></td><td><%=phone1 %></td><td><%=phone2 %></td><td><%=score %></td></tr>
	  
	  <%
  }

%>
</table>
</body>
</html>