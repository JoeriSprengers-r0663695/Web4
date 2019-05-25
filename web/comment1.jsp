<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<jsp:include page="head.jsp">
    <jsp:param name="title" value="WebApp - Was het een interessante projectweek?" />
</jsp:include>
<body class="bg-secondary">
<div onload="openSocket()">
<jsp:include page="header.jsp">
    <jsp:param name="title" value="WebApp - Was het een interessante projectweek?" />
</jsp:include>
<main>
    <a class="btn btn-primary mb-5 mt-5" href="Controller" role="button" id="backB">Back</a>
    <div class="card col-sm-10 mb-5 p-2">
        <h1>Was het een interessante projectweek?</h1>

    </div>

    <div class="card col-sm-10 mb-5 p-2">
        <h3>Comments</h3>
        <div class="card p-2" id="commentSection">

        </div>
    </div>

    <div class="card col-sm-10 mb-5 p-2">
        <h3>Post a comment</h3>

        <p>
            <label for="name">name:</label>
            <TEXTAREA id="name" name="name" rows=1 COLS=40>joeri</TEXTAREA>
        </p>

        <p>
            <label for="comment">Comment:</label>
            <TEXTAREA id="comment" name="comment" rows=1 COLS=40>Comment</TEXTAREA>

        </p>
        <p>
            <label for="rating">rating:</label>
            <TEXTAREA id="rating" name="rating" rows=1 COLS=40>1</TEXTAREA>
        </p>

        <p>
            <input type="submit" id="postCommentB" value="Post comment">
        </p>
    </div>


</main>
<script type="text/javascript" src="js/blog.js"></script>
<jsp:include page="footer.jsp">
    <jsp:param name="title" value="Home" />
</jsp:include>
</div>
</body>
</html>
