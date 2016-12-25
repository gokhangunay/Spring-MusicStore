<%--
  Created by IntelliJ IDEA.
  User: gokhangunay
  Date: 25/10/2016
  Time: 19:21
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->
<html>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Ürün Detayı</h1>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-5">

                    <img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                         style="width:100%"/>

                    <%--<img src="" style="width: 100%; height: 300px"/>--%>
                </div>

                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p>
                        <strong>Üretici</strong> : ${product.productManufacturer}
                    </p>
                    <p>
                        <strong>Kategori</strong> : ${product.productCategory}
                    </p>
                    <p>
                        <strong>Durum</strong> : ${product.productCondition}
                    </p>
                    <h4>${product.productPrice} TL</h4>
                </div>


            </div>

        </div>



    </div>
</div><!-- /.container -->

<%@include file="/WEB-INF/views/template/footer.jsp"%>

</html>
