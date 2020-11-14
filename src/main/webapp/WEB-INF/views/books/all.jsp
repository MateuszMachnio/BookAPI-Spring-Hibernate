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
        <th>isbn</th>
        <th>title</th>
        <th>author</th>
        <th>publisher</th>
        <th>type</th>
        <th>edycja</th>
        <th>usuwanie</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${books}" var="book">
        <tr>
            <td>${book.isbn}</td>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td>${book.publisher}</td>
            <td>${book.type}</td>
            <td><a href="<c:url value="/admin/books/edit/${book.id}"/>">edytuj</a></td>
            <td><a href="<c:url value="/admin/books/delete/${book.id}"/>">usuń</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
