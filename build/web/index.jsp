<!DOCTYPE html>
<html>
    <%@include file="./inc/head.jsp" %>
    <body>
        <div class="my-4 container">
            <h1>Tp JSP</h1>
        </div>
        <div class="container">
            <div class="row justify-centent-center align-items-center" style="height: 60vh">
                <% for(int i=1; i<10; i++){%>
                    <div class="col-sm-2 mb-3">
                        <a class="btn btn-outline-primary" href="Exercices/exo<%= i%>.jsp">Exercice <%= i%></a>
                    </div>
               <%}%>
            </div>
             <hr>
             <div class="row justify-content-between">
                 <p class="lead">Etudient : Aniss Nahim </p>
                 <p class="lead">© 2020</p>
             </div>
        </div>
           
    </body>
</html>
