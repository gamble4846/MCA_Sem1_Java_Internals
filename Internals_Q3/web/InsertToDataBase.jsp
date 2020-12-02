<%-- 
    Document   : InsertToDataBase
    Created on : Dec 2, 2020, 5:07:45 AM
    Author     : rohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert To DataBase</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/internals", "root", "");
            Statement st=cn.createStatement();
            
            String StudID=request.getParameter("StudID");
            String FName=request.getParameter("FName");
            String LName=request.getParameter("LName");
            String DOB=request.getParameter("DOB");
            
            out.println(DOB);
            
            String qry="insert into students(StudID,FName,LName,DOB) values('"+StudID+"' , '"+FName+"' , '"+LName+"', '"+DOB+"')";
            
            int no=0;
            
            try
            {
                no = st.executeUpdate(qry);
            }
            catch(Exception e)
            {
                RequestDispatcher disp=request.getRequestDispatcher("Error.jsp?exception="+e);
                disp.forward(request, response);
            }
            
            if(no>0)
            {
                RequestDispatcher disp=request.getRequestDispatcher("InsertStudent.jsp");
                disp.forward(request, response);
            }
            else
            {
                out.println("An error occured!!");
            }
        %>
    </body>
</html>
