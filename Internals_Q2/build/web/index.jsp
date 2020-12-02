<%-- 
    Document   : index
    Created on : Dec 2, 2020, 3:58:27 AM
    Author     : rohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
    </head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <body>
        <center class="container">
            <h2 class="text-primary">Calculator</h2>
            <form action="CalculateAnswer.jsp">
                <table border="5" class="table table-dark">            
                    <tbody>
                        <tr>
                            <td><input class="form-control" type="number" name="number_1" value="" /></td>
                            <td>
                                <select id="operation" name="operation" class="form-control">
                                    <option value="+">+</option>
                                    <option value="-">-</option>
                                    <option value="*">*</option>
                                    <option value="/">/</option>
                                    <option value="%">%</option>
                                </select>
                            </td>
                            <td><input class="form-control" type="number" name="number_2" value="" /></td>
                        </tr>
                        <tr><td colspan="3" align="center"><input class="btn btn-primary form-control" type="submit" value="Calculate" /></td></tr>
                    </tbody>
                </table>
            </form>
        </center>
    </body>
</html>
