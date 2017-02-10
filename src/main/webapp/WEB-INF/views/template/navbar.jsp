<%--
  Created by IntelliJ IDEA.
  User: gokhangunay
  Date: 25/10/2016
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>

<!-- NAVBAR ================================================== -->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="navbar-wrapper">
    <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand" href="#">
                        <img src="<c:url value="/resources/images/icon4.png"/>">
                    </a>

                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="<c:url value="/"/> ">Ana Sayfa</a></li>
                        <li><a href="<c:url value="/productList" />">Ürünler</a></li>
                        <li><a href="#contact">Iletişim</a></li>
                    </ul>
                    <ul class="nav navbar-nav pull-right">
                         <li><a href="<c:url value="/admin"/>">Admin</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>
