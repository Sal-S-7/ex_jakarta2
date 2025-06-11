<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/includes/header.jsp" %>

<h1>Liste des personnes</h1>

<table class="styled-table">
    <tr>
        <th>Nom</th>
        <th>Prénom</th>
        <th>Âge</th>
    </tr>
    <c:forEach var="personne" items="${listePersonnes}">
        <tr>
            <td>${personne.nom}</td>
            <td>${personne.prenom}</td>
            <td>${personne.age}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
