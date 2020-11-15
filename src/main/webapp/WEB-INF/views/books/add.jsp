<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add book</title>
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>
<form:form modelAttribute="book">
    <h3>Dodawanie książki</h3>

    <table>
        <tr>
            <td><form:label path="isbn">ISBN: </form:label></td>
            <td><form:input path="isbn"/></td>
            <td><form:errors path="isbn" cssClass="error"/></td>
        </tr>

        <tr>
            <td><form:label path="title">Tytuł: </form:label></td>
            <td><form:input path="title"/></td>
            <td><form:errors path="title" cssClass="error"/></td>
        </tr>

        <tr>
            <td><form:label path="author">Autor: </form:label></td>
            <td><form:input path="author"/></td>
            <td><form:errors path="author" cssClass="error"/></td>
        </tr>

        <tr>
            <td><form:label path="publisher">Wydawca: </form:label></td>
            <td><form:input path="publisher"/></td>
            <td><form:errors path="publisher" cssClass="error"/></td>
        </tr>

        <tr>
            <td><form:label path="type">Typ: </form:label></td>
            <td><form:input path="type"/></td>
            <td><form:errors path="type" cssClass="error"/></td>
        </tr>
    </table>
    <br />

    <form:button value="Anuluj"><a href="<c:url value="/admin/books/all"/>">Powrót</a></form:button>
    <input type="submit" value="Dodaj książkę">
</form:form>
</body>
</html>
