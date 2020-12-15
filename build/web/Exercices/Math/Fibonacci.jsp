<%-- 
    Document   : Fibonacci
    Created on : Dec 14, 2020, 10:15:56 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/head.jsp" %>
    <body>
        <div class="container my-3">
            <h2>Random Math</h2>
            <p class="lead">Suite de Fibonacci </p>
            <% int fb0=0, fb1=1, fbn;%>
            <table class="table table-bordered">
                <tr>
                    <% for(int i=0; i<=10; i++){ %>
                        <td><%=i%></td>
                    <% }%>
                </tr>
                <tr>
                    <td><%= fb0 %></td>
                    <td><%= fb1 %></td>
                    <% for(int i=2; i<=10; i++){ %>
                        <td>
                            <% 
                                fbn = fb0 + fb1;
                                fb0 = fb1; fb1= fbn;
                            %>
                            <%= fbn%>
                        </td>
                    <% }%>
                </tr>
            </table>
        </div>
        <%@include file="../../inc/footer.jsp" %>
    </body>
</html>
