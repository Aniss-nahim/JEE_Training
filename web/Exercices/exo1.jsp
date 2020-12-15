<%-- 
    Exercice 1 : Rechercher une valeur dans un tableau de valeurs
--%>
<%@page	contentType="text/html"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%-- including header --%>
    <%@include file="../inc/head.jsp" %>  
    <body>
        <div class="my-3 container">
            <h2>Exercice 1</h2>
	<%! String[] tabValue = {"qcm123","ads234","qwerty456","azerty567","cap789","down345","top765","jungle432","fire876","hi234"};
            String searchedValue = "jungle432";
            int index;
            boolean found = false;
         %>
         <p class="lead">Recherche de : <%=searchedValue%></p>
            <ul id="listValues" class=""list-group>
           <%	int i =	0;
                while( !found && i < tabValue.length ){%>
                <li class="list-group-item d-flex justify-content-between"> <%=tabValue[i]%>
                     <span class="badge badge-secondary badge-pill"><%= i %></span>
                </li>
                    <% if( tabValue[i] == searchedValue ) {
                            found = true; index=i; %>
                    <%}
                    i++;
                 }%>
            </ul>
            <h2>
                <% if (found){%>
                <h3 class="text-success">"<%=searchedValue%>" Trouvé à l'index =<%=index%> </h3>
                <script type="text/javascript">
                    let found = document.getElementById('listValues');
                    found.lastElementChild.classList.add('active');
                </script>
                <% found=false; i=0;}else{%>
                <h3 class="text-danger"> Désolé, <%=searchedValue%> ne se trouve pas dans le tableau </h3>
                <%}%>
            </h2>
        </div>
        <%@include file="../inc/footer.jsp" %> 
    </body>
</html>