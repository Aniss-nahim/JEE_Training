<%-- 
    Document   : exo3
    Created on : Dec 14, 2020, 8:38:54 PM
    Author     : HP
--%>

<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../inc/head.jsp" %>
    <body>
        <div class="my-3 container">
            <h2>Exercice 3</h2>
            <p class="lead">Fiche employé </p>
            <%! 
                String	nom	= new String("Ali Hassan");
                Integer	cnss	= new Integer(111223333);
                Double	salaire	= new Double(65432.10);
                Vector	employe	= new Vector();
            %>
            <% 
                employe.addElement(nom); 
                employe.addElement(cnss);
                employe.addElement(salaire);
            %>
            <div class="row">
                <div class="col-sm-4">
                    <div class="card" style="width: 18rem;">
                        <div class="card-header">
                          Employe
                        </div>
                        <ul class="list-group list-group-flush">
                          <li class="list-group-item">Nom : <%= employe.elementAt(0)%></li>
                          <li class="list-group-item">CNSS : <%= employe.elementAt(1)%></li>
                          <li class="list-group-item">Salaire : <%= employe.elementAt(2)%></li>
                        </ul>
                      </div>
                </div>
            </div>
        </div>
        <%@include file="../inc/footer.jsp" %>
    </body>
</html>
