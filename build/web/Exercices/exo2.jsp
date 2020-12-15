<%-- 
    Document   : exo2
    Created on : Dec 14, 2020, 8:01:22 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../inc/head.jsp" %>
    <body>
        <div class="my-3 container">
            <h2>Exercice 2</h2>
            <%! String articales[] = {"toaster", "CD", "Disque dur", "Ordinateur"};
                double prix[] = {19.99, 12.99, 500.00, 6700.00};
                int quantite[] = {2, 10, 12, 6};
                double prixTotal;
                double total = 0;
                
            %>
                <p class="lead">Tableau des commandes</p>
        </div>
        <div class="container">
            <table class="table table-bordered">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Article</th>
                    <th scope="col">Prix unitaire</th>
                    <th scope="col">Quantité</th>
                    <th scope="col">Total</th>
                  </tr>
                </thead>
                <tbody>
                <% for(int i=0; i<articales.length; i++){ 
                   prixTotal = quantite[i] * prix[i];
                   total += prixTotal; 
                %>
                    <tr>
                        <th scope="row"><%= i %></th>
                        <td><%= articales[i] %></td>
                        <td><%= prix[i] %></td>
                        <td><%= quantite[i] %></td>
                        <td><%=  prixTotal %></td>
                     </tr>
                <%}%>
                </tbody>
            </table>
                <div class="row justify-content-end">
                     <div class="col-2 alert alert-success" role="alert">
                        Total <%= total %> DH
                     </div>
                </div>
        </div>
        <%@include file="../inc/footer.jsp" %>
    </body>
</html>
