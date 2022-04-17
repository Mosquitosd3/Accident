<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
            integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>Accident</title>
</head>
<jsp:include page="/WEB-INF/navbar/navbar.jsp"/>
<br>
<body>
<div class="container">
    <div class="bg-dark text-white">
        <h3><p align="center">Edit accident</p></h3>
    </div>
    <div class="from-group">
        <br>
        <form action="<c:url value='/save'/>" method="post">
            <div class="form-group">
                <input type="text" class="form-control" name="id" value="${accident.id}" hidden>
            </div>
            <div class="form-group">
                <label>Name</label>
                <input type="text" class="form-control" name="name" value="${accident.name}" placeholder="New name accident....">
            </div>
            <div class="form-group">
                <label>Description</label>
                <input type="text" class="form-control" name="text" value="${accident.text}" placeholder="New description...">
            </div>
            <div class="form-group">
                <label>Address</label>
                <input type="text" class="form-control" name="address" value="${accident.address}" placeholder="new address...">
            </div>
            <div class="form-group">
                <label>Type</label>
                <select name="type.id" class="custom-select">
                    <c:forEach var="type" items="${types}" >
                        <option value="${type.id}">${type.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label>Rule</label>
                <select name="rIds" class="custom-select" multiple>
                    <c:forEach var="rule" items="${rules}" >
                        <option value="${rule.id}">${rule.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-dark">Save</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
