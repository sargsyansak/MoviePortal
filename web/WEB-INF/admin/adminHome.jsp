<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>AdminHome</title>
</head>
<body>
<form action="/user/addMovie" method="post" enctype="multipart/form-data">
    Name: <input type="text" name="name"><br>
    Description:<input type="text" name="description"><br>
    Year:<input type="text" name="year"><br>
    Director:<input type="text" name="director"><br>
    image: <input type="file" name="picUrl"/><br>
    Genre: <br> <c:forEach var="genre" items="${allGenre}">
   ${genre.name} <input type="checkbox" value="${genre.name}" name="genre"> <br>
</c:forEach>
    <input type="submit" name="AddMovie">

</form>

<form action="/user/addGenre" method="post"><br><br>
    Name: <input type="text" name="name"><br>
    <input type="submit" name="AddGenre">


</form>
</body>
</html>
