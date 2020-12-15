<%-- 
    Document   : exo9
    Created on : Dec 15, 2020, 9:06:38 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../inc/head.jsp" %>
    <body>
       <div class="my-3 container">
            <h2>Exercice 9</h2>
            <p class="lead">Suite de Fibonacci </p>
            <% int fb0=0, fb1=1, fbn;%>
            <table class="table table-bordered">
                <tr>
                    <% for(int i=0; i<20; i++){ %>
                        <td><%=i%></td>
                    <% }%>
                </tr>
                <tr>
                    <td><%= fb0 %></td>
                    <td><%= fb1 %></td>
                    <% for(int i=2; i<20; i++){ %>
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
        <%@include file="../inc/footer.jsp" %> 
    </body>
</html>
