<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->

<%@include file="all_js_css.jsp" %>
<title>Add Notes</title>
</head>
<body>

<div class="container">
   <%@include file="navbar.jsp" %>
   
   

<h1>Please fill  your Notes</h1>

<form action="SaveNoteServlet" method="post">
  <div class="form-group ">
    <label for="title">Note Title</label>
    <input type="text" name="title" required class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter Your Title">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea id="content" name="content" required placeholder="Enter your content here" 
    class="form-control" style="height:300px"></textarea>
  </div>
  
  
  <div class="container text-center">
  
  <button type="submit" class="btn btn-primary">Add Note</button>
  </div>
</form>
</div>

</body>
</html>