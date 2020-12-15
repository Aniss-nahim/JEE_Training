<%-- 
    Document   : exo8
    Created on : Dec 15, 2020, 9:06:27 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <%@include file="../inc/head.jsp" %>
    <body>
        <div class="my-3 container">
            <h2>Exercice 8</h2>
            <p class="lead">Factorielle </p>
           <% 	int Factoriel[]	= new int[20];
                Factoriel[0] = 1;
           %>
           <table class="table table-bordered table-responsive">
               <tr>
                   <% for(int i=0; i<=15; i++){ %>
                       <td><%=i%></td>
                   <% }%>
               </tr>
               <tr>
                   <td><%= 1 %></td>
                   <td><%= 1 %></td>
                   <% for(int i=1; i<15; i++){ %>
                       <td>
                           <% 
                               Factoriel[i] = i * Factoriel[i-1];
                           %>
                           <%= Factoriel[i]%>
                       </td>
                   <% }%>
               </tr>
           </table>
        </div>
        <%@include file="../inc/footer.jsp" %> 
    </body>
</html>
