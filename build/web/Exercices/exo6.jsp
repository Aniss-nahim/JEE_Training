<%-- 
    Document   : exo6
    Created on : Dec 15, 2020, 7:19:59 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../inc/head.jsp" %>
    <body>
        <%! String randomColor(){
           java.util.Random rand = new java.util.Random();
           int red = (int) (rand.nextFloat()*255);
           int green = (int) (rand.nextFloat()*255);
           int blue = (int) (rand.nextFloat()*255);
           return "#"+Integer.toString(red, 16)+Integer.toString(green,	16)+Integer.toString(blue, 16);
        } 
        %>
        <div class="container my-3">
            <h1>Exercice 6</h1>
            <p class="lead">Random Background color</p>
            <button id="randColor" class="btn btn-outline-primary btn-block">Change color</button>
            <% String color = randomColor(); %>
            <div class="row justify-centent-center align-items-center m-4" style="height: 60vh; background-color:<%= color%> ">
                <div class="col-12">
                    <h3 class="text-center"> <%= color %></h3>
                </div>
            </div>
        </div>
        <%@include file="../inc/footer.jsp" %>
        <script type="text/javascript">
           const btn = document.getElementById('randColor');
           btn.addEventListener('click', function(){
              location.replace(location.href);
           });
        </script>
    </body>
</html>