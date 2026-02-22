<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="beans.MovieBean, java.sql.*" %>

<html>
<head>
    <title>Updated Movie Record</title>
</head>
<body>

<h1>Updated Movie Record</h1>

<%
    int id = Integer.parseInt(request.getParameter("movie_id"));
    String title = request.getParameter("title");
    String genre = request.getParameter("genre");
    int year = Integer.parseInt(request.getParameter("year"));
    String director = request.getParameter("director");
    double rating = Double.parseDouble(request.getParameter("rating"));

    MovieBean mb = new MovieBean();
    mb.updateMovie(id, title, genre, year, director, rating);

    ResultSet movie = mb.getMovieById(id);
    movie.next();
%>

<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Genre</th>
            <th>Year</th>
            <th>Director</th>
            <th>Rating</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><%= movie.getInt("movie_id") %></td>
            <td><%= movie.getString("title") %></td>
            <td><%= movie.getString("genre") %></td>
            <td><%= movie.getInt("release_year") %></td>
            <td><%= movie.getString("director") %></td>
            <td><%= movie.getDouble("rating") %></td>
        </tr>
    </tbody>
</table>

</body>
</html>