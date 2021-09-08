<%--
  Created by IntelliJ IDEA.
  User: ykb
  Date: 8.09.2021
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Customer Registration Form</title>
    <style>
      .error{
        color:red;
      }
    </style>
</head>
<body>

Fill out the form. Asterisk(*) means required.

  <form:form action="processForm" modelAttribute="customer">
    First name: <form:input path="firstName"/>
    <br><br>
    Last name (*): <form:input path="lastName"/>
    <form:errors path="lastName" cssClass="error"/>
    <br><br>
    <input type="submit" value="Submit">
  </form:form>

</body>
</html>
