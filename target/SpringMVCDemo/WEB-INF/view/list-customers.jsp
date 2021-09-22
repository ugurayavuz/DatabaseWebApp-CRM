<%--
  Created by IntelliJ IDEA.
  User: ykb
  Date: 20.09.2021
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer List</title>

    <link type="text/css"
        rel="stylesheet"
        href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
        <div id="wrapper">
            <div id="header">
                <h2>CRM - Customer Relationship Manager</h2>
            </div>
        </div>
        <div id="container">
            <div id="content">

<%--                Put new button: Add Customer--%>

                <input type="button" value="Add Customer"
                       onclick="window.location.href='showFormForAdd'; return false;"
                       class="add-button"
                />

<%--                Add our html table here--%>
                <table>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                    </tr>
<%--                    loop over and print our customers--%>
                    <c:forEach var="tempCustomer" items="${customers}">
                        <tr>
                            <td>${tempCustomer.firstName}</td>
                            <td>${tempCustomer.lastName}</td>
                            <td>${tempCustomer.email}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
</body>
</html>
