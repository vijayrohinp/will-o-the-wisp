<%@page language="java" import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="java.util.*" %>

<%
  String sys_no,name;int score=0,c=0;
  String ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,ans11,ans12,ans13,ans14,ans15;
  int a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15;
  a1=a2=a3=a4=a5=a6=a7=a8=a9=a10=a11=a12=a13=a14=a15=0;
  Connection conn=null;
  Statement stmt=null;
  ResultSet rs=null;
 ResultSet rs1=null;
  Class.forName("com.mysql.jdbc.Driver");
  conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp","root","ccwisp");

      //DATABASE NAME-----------------------------------------------

  if(request.getParameter("action")!=null) {
   //sys_no=request.getParameter("sys_no");
   name=request.getParameter("text3");
   ans1=request.getParameter("q1");

   if(ans1.equals("D"))   //ANSWERS NEEDED TO BE CHANGED FOR DIFFERENT SETS HERE------
     a1=1;
    else 
     a1=0;
   
   ans2=request.getParameter("q2");
   if(ans2.equals("A"))
     a2=1;
    else 
     a2=0;

   ans3=request.getParameter("q3");
   if(ans3.equals("C"))
     a3=1;
    else 
     a3=0;


   ans4=request.getParameter("q4");
   if(ans4.equals("C"))
     a4=1;
    else
     a4=0;


   ans5=request.getParameter("q5");
   if(ans5.equals("B"))
     a5=1;
    else 
     a5=0;

ans6=request.getParameter("q6");
   if(ans6.equals("A"))
     a6=1;
    else 
     a6=0;


ans7=request.getParameter("q7");
   if(ans7.equals("A"))
     a7=1;
    else
     a7=0;


ans8=request.getParameter("q8");
   if(ans8.equals("A"))
     a8=1;
    else 
     a8=0;

ans9=request.getParameter("q9");
   if(ans9.equals("A"))
     a9=1;
    else
     a9=0;

ans10=request.getParameter("q10");
   if(ans10.equals("D"))
     a10=1;
    else 
     a10=0;


ans11=request.getParameter("q11");
   if(ans11.equals("C"))
     a11=1;
    else 
     a11=0;

ans12=request.getParameter("q12");
   if(ans12.equals("D"))
     a12=1;
    else 
     a12=0;

ans13=request.getParameter("q13");
   if(ans13.equals("C"))
     a13=1;
    else 
     a13=0;

ans14=request.getParameter("q14");
   if(ans14.equals("D"))
     a14=1;
    else 
     a14=0;

ans15=request.getParameter("q15");
   if(ans15.equals("C"))
     a15=1;
    else 
     a15=0;

    score=a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12+a13+a14+a15;
   stmt=conn.createStatement();
   rs1=stmt.executeQuery("SELECT score FROM will WHERE phno1='"+name+"'"); //TABLE NAME-----------------
       //stmt.close();
  int n;
       while(rs1.next()){
         n = rs1.getInt(1);
         if(n==-1){
           stmt=conn.createStatement();
           int result=stmt.executeUpdate("UPDATE will SET score='"+score+"' where phno1='"+name+"'");     //TABLE NAME-----------------
           stmt.close();}
       }
stmt=conn.createStatement();
   rs1=stmt.executeQuery("SELECT * FROM will WHERE phno1='"+name+"'");

   //TABLE NAME-----------------

%>
 <html>
 <body bgcolor="#E3E4FA">
 <center>
<br><br><br><br><br><br>
YOU HAVE SUCCESSFULLY COMPLETED THE TEST.<br><br>
RESULTS WILL BE ANNOUNCED IN A WHILE.
    </center><br /><br />
   </body>
   </html>
  <%} else {%>
<html>
 <body bgcolor="#E3E4FA">
 <center>
<br><br><br><br><br><br>
<b>SORRY YOUR SESSION TIMED OUT!!!</b>
    </center><br /><br />
   </body>
   </html>
  <%}%>