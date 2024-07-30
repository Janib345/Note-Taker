<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.*,com.entities.*,com.servlets.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_js_css.jsp" %>

<meta charset="UTF-8">
<title>Update</title>
</head>
<body>
<div class="container">
   <%@include file="navbar.jsp" %>
<h1>Here you can do Update/Edit</h1>
<br>

<% 

int noteId = Integer.parseInt(request.getParameter("note_id").trim());
Session s =FactoryProvider.getFactory().openSession();

Note note = (Note)s.get(Note.class,noteId);

%>
<form action="UpdateServlet" method="post">

<input value="<%=note.getId()%>" name ="noteId" type="hidden">

  <div class="form-group ">
    <label for="title">Note Title</label>
    <input type="text" name="title" required class="form-control" id="title" aria-describedby="emailHelp" value="<%=note.getTitle() %>" placeholder="Enter Your Title">
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea id="content" name="content" required placeholder="Enter your content here" 
    class="form-control" style="height:300px"><%=note.getContent()%></textarea>
  </div>
  
  
  <div class="container text-center">
  
  <button type="submit" class="btn btn-success">Save</button>

</div>
</body>
</html>