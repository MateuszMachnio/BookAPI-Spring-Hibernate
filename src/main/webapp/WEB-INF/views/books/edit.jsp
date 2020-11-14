<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit book</title>
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>
<form:form modelAttribute="book" method="post" action="/admin/books/edit">
    <form:hidden path="id" />

    <form:label path="isbn">ISBN: </form:label>
    <form:input path="isbn"/>
    <form:errors path="isbn" element="div" cssClass="error"/>
    <br />

    <form:label path="title">Tytuł: </form:label>
    <form:input path="title"/>
    <form:errors path="title" element="div" cssClass="error"/>
    <br />

    <form:label path="author">Autor: </form:label>
    <form:input path="author"/>
    <form:errors path="author" element="div" cssClass="error"/>
    <br />

    <form:label path="publisher">Wydawca: </form:label>
    <form:input path="publisher"/>
    <form:errors path="publisher" element="div" cssClass="error"/>
    <br />

    <form:label path="type">Typ: </form:label>
    <form:input path="type"/>
    <form:errors path="type" element="div" cssClass="error"/>
    <br />

    <input type="submit" value="Edytuj">
</form:form>
</body>
</html>
