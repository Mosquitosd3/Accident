<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <title>Accident</title>
</head>
<jsp:include page="../navbar/navbar.jsp"/>
<body>
<br>
<div class="container">
    <div class="row">
        <c:forEach items="${accidents}" var="accident">
           <div class="col-sm-4">
               <div class="card text-white bg-dark mb-3" style="height: 25rem;">
                   <div class="card-header">
                       <h4 class="card-title" align="center"><c:out value="${accident.name}"/></h4>
                   </div>
                   <div class="card-body">
                       <h4 class="card-title">
                           <a class="text-info">Address:</a>
                           <c:out value="${accident.address}"/>
                       </h4>
                       <h6 class="text-info">Type:</h6>
                       <h6 class="card-subtitle clip mb-2 text-muted"><c:out value="${accident.type.name}"/></h6>
                       <h6 class="text-info">Rules:</h6>
                       <c:forEach items="${accident.rules}" var="rule">
                           <h6 class="card-subtitle mb-2 text-muted"><c:out value="${rule.name}"/></h6>
                       </c:forEach>
                       <p class="text-info mb-0">Description: </p>
                       <p class="card-text text-truncate"><c:out value="${accident.text}"/></p>
                       <a href="<c:url value='/edit/${accident.id}'/>" class="btn btn-info">Edit</a>
                       <a href="<c:url value='/edit/${accident.id}'/>" class="btn btn-danger">Delete</a>
                   </div>
               </div>
           </div>
        </c:forEach>
            </div>
    </div>
</div>
</body>
</html>