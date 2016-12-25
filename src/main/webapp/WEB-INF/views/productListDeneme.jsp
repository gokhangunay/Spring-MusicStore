<%--
  Created by IntelliJ IDEA.
  User: gokhangunay
  Date: 23/10/2016
  Time: 18:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>Product Name</th>
                <th>Product Category</th>
                <th>Product Condition</th>
                <th>Product Price</th>
            </tr>
        </thead>
        <c:forEach items="${products}" var="product">
        <tr>
            <td>${product.productName}</td>
            <td>${product.productCategory}</td>
            <td>${product.productCondition}</td>
            <td>${product.productPrice}</td>
        </tr>
         </c:forEach>
    </table>
</body>
</html>
