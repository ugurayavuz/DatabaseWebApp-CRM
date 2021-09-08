<%--
  Created by IntelliJ IDEA.
  User: ykb
  Date: 7.09.2021
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer Confirmation</title>
</head>
<body>

The student is confirmed: ${student.firstName} ${student.lastName}
<br><br>
First name: ${student.firstName}
<br><br>
Last name: ${student.lastName}
<br><br>
Country: ${student.country}
<br><br>
Favourite Language: ${student.favouriteLanguage}
<br><br>
Operating Systems:
<ul>
    <c:forEach var="temp" items="${student.operatingSystem}">
        <li>${temp}</li>
    </c:forEach>

</ul>

</body>
</html>
