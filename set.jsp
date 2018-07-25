<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page language="java" import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sets</title>
</head>
<body>
<%
int value;
String name,phno,id;int C=0,no=0;
Connection conn=null;
  Statement stmt=null;
  ResultSet rs=null;
  Class.forName("com.mysql.jdbc.Driver");
  conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp","root","ccwisp");

phno=request.getParameter("id1");
try{
String qr="select * from will where phno1='"+phno+"'";
stmt=conn.createStatement();
rs=stmt.executeQuery(qr);
}
catch(Exception e){

}


if(!rs.next())
{
String test=request.getParameter("in");
if(test.equals("")){
	RequestDispatcher ds=request.getRequestDispatcher("refresh.html");
	
}else{
	request.setAttribute("in", "");
	int a=(int)(Math.random()*10);
	//if(a>5){
		//value=3;
	//}else{
		//value=2;
	//}
	switch(a)
	{
	case 1: value=1;
	break;
	case 2: value=2;
	break;
	case 3: value=3;
	break;
	case 4: value=4;
	break;
	case 5: value=5;
	break;
	case 6: value=6;
	break;
	case 7: value=7;
	break;
	case 8: value=8;
	break;
	case 9: value=9;
	break;
	case 10: value=10;
	break;
	default:value=11;
	}
	RequestDispatcher ds=request.getRequestDispatcher("set"+value+".jsp");
	ds.forward(request, response);
	
}
}
else{
RequestDispatcher ds=request.getRequestDispatcher("refresh.html");
ds.forward(request,response);
}

%>
</body>
</html>