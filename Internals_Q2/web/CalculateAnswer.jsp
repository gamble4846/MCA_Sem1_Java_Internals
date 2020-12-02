<%-- 
    Document   : CalculateAnswer
    Created on : Dec 2, 2020, 4:04:52 AM
    Author     : rohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculation</title>
    </head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <body>
        <% 
            float number_1 = 0;
            float number_2 = 0;
            float answer = 0;
            
            String Operation = request.getParameter("operation");
            
            try
            {
                number_1 = Float.parseFloat(request.getParameter("number_1")); 
            }
            catch(Exception e)
            {
                number_1=0f;
            }
            
            try
            {
                number_2 = Float.parseFloat(request.getParameter("number_2")); 
            }
            catch(Exception e)
            {
                number_2=0f;
            }
            
            /*switch(Operation)
            {
                case "+":
                    answer = number_1 + number_2;
                    break;
                case "-":
                    answer = number_1 - number_2;
                    break;
                case "*":
                    answer = number_1 * number_2;
                    break;
                case "/":
                    answer = number_1 / number_2;
                    break;
                case "%":
                    answer = number_1 % number_2;
                    break;
            }*/
            
            if(Operation.equals("+"))
                answer = number_1 + number_2;
            else if(Operation.equals("-"))
                answer = number_1 - number_2;
            else if(Operation.equals("*"))
                answer = number_1 * number_2;
            else if(Operation.equals("/"))
                answer = number_1 / number_2;
            else if(Operation.equals("%"))
                answer = number_1 % number_2;
        %>
        
        
        <center class="container">
        <h2 class="text-primary">Answer</h2>
            <table border="5" class="table table-dark">            
                <tbody>
                    <tr>
                        <td>
                            <h3>
                            <span class="text-primary"><%=number_1%></span>

                            <span class="text-danger"><%=Operation%></span>

                            <span class="text-primary"><%=number_2%></span>

                            <span class="text-danger">=</span>

                            <span class="text-success"><%=answer%></span>
                            </h3>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><a href="index.jsp">Try Again</a></td>
                    </tr>
                </tbody>
            </table>
        </center>
    </body>
</html>
