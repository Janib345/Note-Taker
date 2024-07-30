<%@page import="com.entities.Note"%>
<%@page import="com.servlets.*"%>

<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_js_css.jsp" %>
<meta charset="UTF-8">
<title>All notes:Note Taker</title>
</head>
<body>
<div class="container">
   <%@include file="navbar.jsp" %>
   <br>
   <h1 class="text-uppercase">All Notes:</h1>
   
   <div class="row">
   <div class="col-12">
   <%
   Session s = FactoryProvider.getFactory().openSession();
   Query q = s.createQuery("from Note");
   
   List<Note> list = q.list();
   
   for(Note note:list){
	   %>
	   <div class="card mt-3" style="width: vw;">
	     <img class="card-img-top m-4 mx-auto"  style='max-width:100px ' src="img/notepad.png" alt="Card image cap">
	   
    <div class="card-body px-5">
    <h5 class="card-title"><%=note.getTitle() %></h5>
    <p class="card-text"><%=note.getContent() %></p>
   <p><b><%=note.getAddedDate() %></b></p>
    <div class="container text-center mt-2">
    <a class="btn btn-danger" href="DeleteServlet?note_id=<%=note.getId()%>">Delete</a>
        <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
    </div>
  </div>
</div>
	   <% 
   }
   
   
   
   
   s.close();
   
   %>
   
   </div>
   
   </div>
   
   
   
   </div>
   
</body>
</html>