<%--
  Created by IntelliJ IDEA.
  User: gokhangunay
  Date: 14/11/2016
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->
<html>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Ürün Kontrol Sayfası</h1>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Resim</th>
                <th>Adı</th>
                <th>Kategorisi</th>
                <th>Ürün Durumu</th>
                <th>Fiyat</th>
                <th>Detay</th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                             style="width:100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} TL</td>
                    <td>
                        <a href="<spring:url value="/productList/viewProductDetail/${product.productId}"/>">
                            <span class="glyphicon glyphicon-info-sign"/>
                        </a>
                        <a href="<spring:url value="/admin/productInventory/deleteProduct/${product.productId}"/>">
                            <span class="glyphicon glyphicon-remove-circle"/>
                        </a>
                        <a href="<spring:url value="/admin/productInventory/editProduct/${product.productId}"/>">
                            <span class="glyphicon glyphicon-edit"/>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <a href="<spring:url value="/admin/productInventory/addProduct"/>" class="btn btn-primary">Ürün Ekle</a>

    </div>
</div><!-- /.container -->

<%@include file="/WEB-INF/views/template/footer.jsp"%>

</html>
