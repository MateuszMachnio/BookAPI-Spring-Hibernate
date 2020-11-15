<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Delete book</title>
</head>
<body>
<h3>Czy na pewno chcesz usunąć tą książkę?</h3>
<form:form modelAttribute="book" method="post" action="/admin/books/delete">
    <form:hidden path="id" />

    <table>
        <tr>
            <td><form:label path="isbn">ISBN: </form:label></td>
            <td><form:input path="isbn" disabled="true"/></td>
        </tr>
        <tr>
            <td><form:label path="title">Tytuł: </form:label></td>
            <td><form:input path="title" disabled="true"/></td>
        </tr>
        <tr>
            <td><form:label path="author">Autor: </form:label></td>
            <td><form:input path="author" disabled="true"/></td>
        </tr>
        <tr>
            <td><form:label path="publisher">Wydawca: </form:label></td>
            <td><form:input path="publisher" disabled="true"/></td>
        </tr>
        <tr>
            <td><form:label path="type">Typ: </form:label></td>
            <td><form:input path="type" disabled="true"/></td>
        </tr>
    </table>
    <br />

    <form:button><a href="<c:url value="/admin/books/all"/>">Powrót</a></form:button>
    <input type="submit" value="Usuń">
</form:form>
</body>
</html>
