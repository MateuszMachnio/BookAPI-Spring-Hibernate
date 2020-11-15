<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Book details</title>
</head>
<body>
<h3>Szczegóły książki:</h3>
<form:form modelAttribute="book">
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
</form:form>

<button type="button"><a href="<c:url value="/admin/books/all"/>">Powrót</a></button>
</body>
</html>
