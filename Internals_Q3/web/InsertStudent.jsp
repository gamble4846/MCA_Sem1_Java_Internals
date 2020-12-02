<%-- 
    Document   : InsertStudent
    Created on : Dec 2, 2020, 4:31:58 AM
    Author     : rohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Student</title>
    </head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <body>
        <center class="container">
            <h2 class="text-primary">Insert Student</h2>
                <table border="5" class="table table-dark">            
                    <tbody>
                        <form action="InsertToDataBase.jsp">
                        <tr>
                            <td class="form-group">
                                <label for="StudID">Student ID</label>
                                <input class="form-control" type="text" name="StudID" value="" id="StudID" placeholder="Enter Student ID"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="form-group">
                                <label for="FName">First Name</label>
                                <input class="form-control" type="text" name="FName" value="" id="FName" placeholder="Enter First Name"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="form-group">
                                <label for="LName">Last Name</label>
                                <input class="form-control" type="text" name="LName" value="" id="LName" placeholder="Enter Last Name"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="form-group">
                                <label for="DOB">Date of Birth</label>
                                <input class="form-control" type="date" name="DOB" value="" id="DOB"/>
                            </td>
                        </tr>
                        <tr><td colspan="3" align="center"><input class="btn btn-primary form-control" type="submit" value="Insert" /></td></tr>
                        </form>
                        <tr>
                            <td colspan="3" align="center">
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
