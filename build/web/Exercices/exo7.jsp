<%-- 
    Document   : exo7
    Created on : Dec 15, 2020, 8:50:00 PM
    Author     : HP
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../inc/head.jsp" %>
    <% String bgColor = request.getParameter("bgColor");
       if(bgColor == null){
           bgColor = "white";
       }
    %>
    <body>
         <div class="my-3 container">
            <h2>Exercice 7</h2>
            <p class="lead">Change color with url, try ?bgColor=gray</p>
            <div class="row justify-centent-center align-items-center m-4" style="height: 60vh; background-color:<%= bgColor%> ">
                <div class="col-12">
                     <h3 class="text-center"><%= bgColor %> </h3>
                </div>
            </div>
         </div>
         <%@include file="../inc/footer.jsp" %> 
    </body>
</html>
