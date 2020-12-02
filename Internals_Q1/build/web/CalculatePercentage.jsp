<%-- 
    Document   : CalculatePercentage
    Created on : Dec 2, 2020, 2:39:56 AM
    Author     : rohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CalculatePercentage</title>
    </head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <body>
        <% 
            String s_name=request.getParameter("s_name");
            String s_id=request.getParameter("s_id");
            float s_marks1;
            float s_marks2;
            float s_marks3;
            
            try{
                s_marks1= Float.parseFloat(request.getParameter("s_marks1"));
            }
            catch(Exception e)
            {
                s_marks1=0f;
            }
            
            try{
                s_marks2= Float.parseFloat(request.getParameter("s_marks2"));
            }
            catch(Exception e)
            {
                s_marks2=0f;
            }
            
            try{
                s_marks3= Float.parseFloat(request.getParameter("s_marks3"));
            }
            catch(Exception e)
            {
                s_marks3=0f;
            }
            
            float totalmarks = s_marks1 + s_marks2 + s_marks3;
            float percentage = totalmarks / 3;
        %>
        <center class="container">
            <h2 class="text-primary">Result</h2>
            <table border="5" class="table table-dark">            
                <tbody>
                    <tr>
                        <td>Student Name</td>
                        <td><%=s_name%></td>
                    </tr>
                    <tr>
                        <td>Student ID :</td>
                        <td><%=s_id%></td>
                    </tr>
                    <tr>
                        <td>Subject 1 Marks :</td>
                        <td><%=s_marks1%></td>
                    </tr>
                    <tr>
                        <td>Subject 2 Marks :</td>
                        <td><%=s_marks2%></td>
                    </tr>
                    <tr>
                        <td>Subject 3 Marks :</td>
                        <td><%=s_marks3%></td>
                    </tr>
                    <tr>
                        <td>Total Marks</td>
                        <td><%=totalmarks%></td>
                    </tr>
                    <tr>
                        <td>Percentage</td>
                        <td><%=percentage%></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><a href="index.jsp">Try Again</a></td>
                    </tr>
                </tbody>
            </table>
        </center>
    </body>
</html>
