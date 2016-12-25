<%--
  Created by IntelliJ IDEA.
  User: gokhangunay
  Date: 12/11/2016
  Time: 19:24
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
            <h1>Admin Paneli</h1>
        </div>

        <h3>
            <a href="<c:url value="/admin/productInventory" />" >Ürün Kontrolü</a>
        </h3>

        <p>Burada ürün hakkında tüm işlemlerinizi yapabilirsiniz.</p>






   </div>
</div><!-- /.container -->

<%@include file="/WEB-INF/views/template/footer.jsp"%>

</html>
