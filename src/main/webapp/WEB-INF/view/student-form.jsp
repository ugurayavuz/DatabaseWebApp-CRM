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
    Country:
    <form:select path="country">
<%--      <form:option value="Turkey" label="Turkey"/>--%>
<%--      <form:option value="Brazil" label="Brazil"/>--%>
<%--      <form:option value="France" label="France"/>--%>
<%--      <form:option value="Germany" label="Germany"/>--%>
<%--      <form:option value="India" label="India"/>--%>
      <form:options items="${student.countryOptions}"/>
    </form:select>
    <br><br>
      Favourite Language:

      <form:radiobuttons path="favouriteLanguage" items="${student.favouriteLanguageOptions}"/>
      <br><br>
      Linux <form:checkbox path="operatingSystem" value="Linux"/>
      Mac OS <form:checkbox path="operatingSystem" value="Mac OS"/>
      Windows <form:checkbox path="operatingSystem" value="Windows"/>

      <input type="submit" value="Submit"/>

  </form:form>

</body>
</html>
