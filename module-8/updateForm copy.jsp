<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="beans.MovieBean, java.sql.*" %>

<html>
<head>
    <title>Edit Movie</title>
</head>
<body>

<h1>Edit Movie Details</h1>

<%
    int id = Integer.parseInt(request.getParameter("movie_id"));

    MovieBean mb = new MovieBean();
    ResultSet movie = mb.getMovieById(id);

    movie.next();
%>

<form action="updateProcess.jsp" method="post">

    Movie ID: <%= id %> <br><br>

    <input type="hidden" name="movie_id" value="<%= id %>">

    Title:
    <input type="text" name="title"
           value="<%= movie.getString("title") %>" required><br><br>

    Genre:
    <input type="text" name="genre"
           value="<%= movie.getString("genre") %>" required><br><br>

    Release Year:
    <input type="number" name="year"
           value="<%= movie.getInt("release_year") %>" required><br><br>

    Director:
    <input type="text" name="director"
           value="<%= movie.getString("director") %>" required><br><br>

    Rating:
    <input type="number" step="0.1" name="rating"
           value="<%= movie.getDouble("rating") %>" required><br><br>

    <input type="submit" value="Update Movie">

</form>

</body>
</html>