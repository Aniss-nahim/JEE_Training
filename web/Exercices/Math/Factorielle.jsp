<%-- 
    Document   : Factorielle
    Created on : Dec 14, 2020, 10:18:57 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <%@include file="../../inc/head.jsp" %>
    <body>
        <div class="container my-3">
            <h2>Random Math</h2>
            <p class="lead">Factorielle </p>
           <% int fact=1;%>
           <table class="table table-bordered">
               <tr>
                   <% for(int i=0; i<=10; i++){ %>
                       <td><%=i%></td>
                   <% }%>
               </tr>
               <tr>
                   <td><%= 1 %></td>
                   <td><%= 1 %></td>
                   <% for(int i=2; i<=10; i++){ %>
                       <td>
                           <% 
                               fact *=i;
                           %>
                           <%= fact%>
                       </td>
                   <% }%>
               </tr>
           </table>
        </div>
        <%@include file="../../inc/footer.jsp" %>
    </body>
</html>
