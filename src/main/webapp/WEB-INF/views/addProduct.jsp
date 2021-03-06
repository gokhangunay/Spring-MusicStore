<%--
  Created by IntelliJ IDEA.
  User: gokhangunay
  Date: 14/11/2016
  Time: 13:37
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
            <h1>Ürün Ekleme Sayfası</h1>
        </div>

        <p class="lead">Ürün eklemek için aşağıdaki bilgileri doldurun</p>

        <%--Alt satırdaki multipart form-data olayini resim upload ettigimi zaman ekledik. Muhabbeti az cok isminden anlamissindir--%>

        <form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method="post" commandName="product" enctype="multipart/form-data">

            <div class="form-group">
                <label for="name">Ürün Adı</label> <form:errors path="productName" cssStyle="color: #ff0000" />
                <form:input path="productName" id="name" class="form-control" />
            </div>

            <div class="form-group">
                <label for="category">Ürün Kategorisi</label>
                <label class="checkbox-inline">
                    <form:radiobutton path="productCategory" id="category" value="Muzik Aletleri"/>
                    Müzik Aletleri
                </label>

                <label class="checkbox-inline">
                    <form:radiobutton path="productCategory" id="category" value="Aksesuar & Yedek Parca"/>
                    Aksesuar & Yedek Parça
                </label>

                <label class="checkbox-inline">
                    <form:radiobutton path="productCategory" id="category" value="Ekipman"/>
                    Ekipman
                </label>

                <label class="checkbox-inline">
                    <form:radiobutton path="productCategory" id="category" value="Ses Sistemleri"/>
                    Ses Sistemleri
                </label>
            </div>

            <div class="form-group">
                <label for="description">Ürün Açıklaması</label>
                <form:textarea path="productDescription" id="description" class="form-control" />
            </div>

            <div class="form-group">
                <label for="price">Ürün Fiyatı</label> <form:errors path="productPrice" cssStyle="color: #ff0000" />
                <form:input path="productPrice" id="price" class="form-control" />
            </div>

            <div class="form-group">
                <label for="condition">Ürün Durumu</label>
                <label class="checkbox-inline">
                    <form:radiobutton path="productCondition" id = "condition" value="Sifir"/>
                    Sıfır
                </label>

                <label class="checkbox-inline">
                    <form:radiobutton path="productCondition" id = "condition" value="Ikinci El"/>
                    Ikinci El
                </label>
            </div>

            <div class="form-group">
                <label for="status">Ürün Statüsü</label>
                <label class="checkbox-inline">
                    <form:radiobutton path="productStatus" id="status" value="Stok"/>
                    Stok
                </label>

                <label class="checkbox-inline">
                    <form:radiobutton path="productStatus" id="status" value="Tukendi"/>
                    Tükendi
                </label>
            </div>

            <div class="form-group">
                <label for="stock">Ürün Stoğu</label> <form:errors path="unitInStock" cssStyle="color: #ff0000" />
                <form:input path="unitInStock" id="stock" class="form-control" />
            </div>

            <div class="form-group">
                <label for="manufacturer">Ürün Üreticisi</label>
                <form:input path="productManufacturer" id="manufacturer" class="form-control" />
            </div>

            <div class="control-label">
                <label for="image">Ürün Fotoğrafı Yükle</label>
                <form:input path="productImage" id="image" class="form:input-large" type="file" />
            </div>

        <br><br>

            <input type="submit" value="Ekle" class="btn btn-default">
            <a href="<c:url value="/admin/productInventory"/>" class="btn btn-default">Iptal</a>

        </form:form>


    </div>
</div><!-- /.container -->

<%@include file="/WEB-INF/views/template/footer.jsp"%>

</html>
