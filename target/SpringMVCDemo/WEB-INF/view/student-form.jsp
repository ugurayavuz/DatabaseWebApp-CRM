<%--
  Created by IntelliJ IDEA.
  User: ykb
  Date: 7.09.2021
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Student Registration Form</title>
</head>
<body>

  <form:form action="processForm" modelAttribute="student">
    First name: <form:input path="firstName"/>
    <br><br>
    Last name: <form:input path="lastName"/>
    <br><br>
    <input type="submit" value="Submit"/>
  </form:form>

</body>
</html>
