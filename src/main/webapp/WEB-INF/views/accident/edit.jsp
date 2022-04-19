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
    <link rel="stylesheet" href='css/bootstrap.min.css'>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <title>Accident</title>
</head>
<jsp:include page="/WEB-INF/navbar/navbar.jsp"/>
<%--name--%>
<%--text--%>
<%--address--%>
<%--type--%>
<%--rule--%>
<br>
<body class="bg-secondary">
<div class="container card text-white bg-dark">
    <div class="bg-dark text-white">
        <h3><p align="center">Edit accident</p></h3>
    </div>
    <form action="<c:url value='/save'/>" method="post">
        <!-- User's Credentials  -->
        <fieldset class="form-group">
            <div class="row">
                <div class="form-group">
                    <input type="number" name="id" value="<c:out value='${accident.id}'/>" hidden>
                </div>
                <div class="col-md-9">
                    <div class="form-group">
                        <label class="text-info" for="name">Name:</label>
                        <input type="text" class="form-control" id="name" value="<c:out value='${accident.name}'/>" placeholder="Enter name.." name="name">
                    </div>
                    <div class="form-group">
                        <label class="text-info" for="email">Text</label>
                        <textarea type="email" class="form-control email" rows="4" id="email" placeholder="Description..." name="text">
                            <c:out value='${accident.text}'/>
                        </textarea>
                    </div>
                    <div class="form-group">
                        <label class="text-info" for="address">Address:</label>
                        <input type="text" class="form-control password" id="address" value="<c:out value='${accident.address}'/>" placeholder="Address..." name="address">
                    </div>
                </div>
                <fieldset class="form-group">
                    <div class="form-group">
                        <div class="form-group">
                            <label class="text-info" for="address">Type:</label>
                            <select name="type.id" class="custom-select">
                                <c:forEach var="type" items="${types}" >
                                    <option value="${type.id}">${type.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-group">
                            <label class="text-info">Rule:</label>
                            <select name="rIds" class="custom-select" multiple>
                                <c:forEach var="rule" items="${rules}" >
                                    <option value="${rule.id}">${rule.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                </fieldset>
            </div>
        </fieldset>
        <div class="form-group row">
            <div class="mx-auto">
                <button type="submit" class="btn btn-info btn-customized">Edit</button>
            </div>
        </div>
    </form>
    </div>
</div>
</body>
</html>