<%-- 
    Document   : index
    Created on : Dec 2, 2020, 2:32:24 AM
    Author     : rohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student Details</title>
    </head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <body>
        <center class="container">
            <h2 class="text-primary">Insert Data</h2>
            <form action="CalculatePercentage.jsp">
                <table border="5" class="table table-dark">            
                    <tbody>
                        <tr>
                            <td>Enter Student Name :</td>
                            <td><input class="form-control" type="text" name="s_name" value="" /></td>
                        </tr>
                        <tr>
                            <td>Enter Student ID :</td>
                            <td><input class="form-control" type="text" name="s_id" value="" /></td>
                        </tr>
                        <tr>
                            <td>Enter Subject 1 Marks :</td>
                            <td><input class="form-control" type="text" name="s_marks1" value="" /></td>
                        </tr>
                        <tr>
                            <td>Enter Subject 2 Marks :</td>
                            <td><input class="form-control" type="text" name="s_marks2" value="" /></td>
                        </tr>
                        <tr>
                            <td>Enter Subject 3 Marks :</td>
                            <td><input class="form-control" type="text" name="s_marks3" value="" /></td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center"><input class="btn btn-primary form-control" type="submit" value="Insert" /></td>
                        </tr>
                    </tbody>
                </table>                                                   
            </form>
        </center>
    </body>
</html>
