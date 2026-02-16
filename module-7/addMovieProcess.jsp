<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="beans.MovieBean, java.sql.*" %>

<html>
<head>
    <title>Movie Database Updated</title>
</head>
<body>

<h1>Movie Database Records</h1>
<p>The new record has been added successfully.</p>

<%
    MovieBean mb = new MovieBean();

    String title = request.getParameter("title");
    String genre = request.getParameter("genre");
    int year = Integer.parseInt(request.getParameter("year"));
    String director = request.getParameter("director");
    double rating = Double.parseDouble(request.getParameter("rating"));

    mb.addMovie(title, genre, year, director, rating);

    // Retrieve ALL records
    Statement stmt = mb.getConnection().createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM alexis_movies_data");
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

<%
    while (rs.next()) {
%>

        <tr>
            <td><%= rs.getInt("movie_id") %></td>
            <td><%= rs.getString("title") %></td>
            <td><%= rs.getString("genre") %></td>
            <td><%= rs.getInt("release_year") %></td>
            <td><%= rs.getString("director") %></td>
            <td><%= rs.getDouble("rating") %></td>
        </tr>

<%
    }
%>

    </tbody>
</table>

</body>
</html>
