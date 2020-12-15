<%-- 
    Document   : exo5
    Created on : Dec 14, 2020, 10:09:39 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <%@include file="../inc/head.jsp" %>
    <body>
        <div class="my-3 container">
            <h2>Exercice 5</h2>
            <p class="lead">Random math page</p>
            <% if(Math.random()> .5){%>
		<jsp:forward page="Math/Fibonacci.jsp"/>
            <%}else{%>
                <jsp:forward page="Math/Factorielle.jsp"/>
            <%}%>
        </div>
        <%@include file="../inc/footer.jsp" %>
    </body>
</html>
