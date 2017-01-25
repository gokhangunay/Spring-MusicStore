<%--
  Created by IntelliJ IDEA.
  User: gokhangunay
  Date: 19/10/2016
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Müzik Ürünleri Mağazası</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">

    <!-- Carousel CSS -->
    <link href="<c:url value="/resources/css/carousel.css"/>" rel="stylesheet">

    <!-- My core CSS -->
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
</head>

<body> <%-- Body tagi burada acilir. Footer da kapanir.--%>

    <%@include file="/WEB-INF/views/template/navbar.jsp"%>  <%-- Burada navigasyon bar eklenir. --%>