<%-- 
    Document   : ViewAllStudent
    Created on : Dec 2, 2020, 5:29:09 AM
    Author     : rohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Students</title>
    </head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/internals", "root", "");
            Statement st=cn.createStatement();
            String qry="select * from students";
            ResultSet rs=st.executeQuery(qry);    
        %>
        
        
        <center class="container">
            <h2 class="text-primary">View All Student</h2>
                <table border="5" class="table table-dark">
                    <thead>
                        <tr>
                            <th>Student ID</th>
                            <th>First Name</th>
                            <th>Second Name</th>
                            <th>Date of Birth</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                        while(rs.next())
                        {
                            String StudID=rs.getString(5);
                            String FName=rs.getString(1);
                            String LName=rs.getString(2);
                            String DOB=rs.getString(3);                             
                        %>

                        <tr>
                            <td><%=StudID%></td>
                            <td><%=FName%></td>
                            <td><%=LName%></td>
                            <td><%=DOB%></td>
                            <td><a href="DeleteStudent?StudID=<%=StudID%>">Delete</a></td>
                        </tr>

                        <%   
                             }
                        %>
                        
                        <tr>
                            <td colspan = "5">
                                <form action="index.jsp">
                                    <input class="btn btn-danger form-control" type="submit" value="Back"/>
                                </form>
                            </td>
                        </tr>
                    </tbody>
                </table>
        </center>
    </body>
</html>
