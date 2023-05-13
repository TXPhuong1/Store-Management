<%--
  Created by IntelliJ IDEA.
  User: nguyenvv
  Date: 11/03/2023
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8"/>
    <link rel="shortcut icon" href="../image/logo.png" type="image/x-icon">
    <title>TXP SHOP</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
    <style>
        .container {
            margin-top: 100px;
        }
    </style>
</head>
<body>
<%@include file="layout/header.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-6">
            <h3 class="card-title mt-1 text-center">Thêm sản phẩm</h3>
            <form action="/san-pham/add" method="post">
                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" style="padding-right: 20px">
                            <i class="fas fa-id-card" style="font-size: 30px"></i>
                        </span>
                    </div>
                    <input id="ma" name="ma" class="form-control" placeholder="Mã sản phẩm" type="text">
                </div> <!-- form-group// -->
                <br>
                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text">
                            <i class="fas fa-language" style="font-size: 30px"></i>
                        </span>
                    </div>
                    <input id="ten" name="ten" class="form-control" placeholder="Tên sản phẩm" type="text"
                           style="padding-top: 10px">
                </div>
                <br>
                <button id="send" type="submit" class="btn btn-primary btn-block">Thêm</button>
            </form>
        </div>
        <div class="col-6">
            <h3 class="card-title mt-1 text-center">Danh sách sản phẩm</h3>
            <table class="table table-bordered">
                <thead class="table-dark">
                <tr>
                    <td>Mã</td>
                    <td>Tên</td>
                    <td>Action</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${listSP}" var="sp">
                    <tr>
                        <td>${sp.ma}</td>
                        <td>${sp.ten}</td>
                        <td><a href="/san-pham/detail?id=${sp.id}">
                            <button type="submit" class="btn btn-info">Sửa</button>
                        </a>
                            <a href="/san-pham/delete?id=${sp.id}">
                                <button type="submit" class="btn btn-info">Xóa</button>
                            </a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script src="../js/js.js"></script>
</body>
</html>
