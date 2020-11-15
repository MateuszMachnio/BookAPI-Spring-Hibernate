<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Book List</title>
</head>
<body>

<table border="1">
    <thead>
    <tr>
        <th>title</th>
        <th>author</th>
        <th>szczegóły</th>
        <th>edycja</th>
        <th>usuwanie</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${books}" var="book">
        <tr>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td><a href="<c:url value="/admin/books/get/${book.id}"/>">szczegóły</a></td>
            <td><a href="<c:url value="/admin/books/edit/${book.id}"/>">edytuj</a></td>
            <td><a href="<c:url value="/admin/books/delete/${book.id}"/>">usuń</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<button type="button"><a href="<c:url value="/admin/books/add"/>">Dodaj książkę</a></button>
</body>
</html>
