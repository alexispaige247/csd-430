<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="beans.MovieBean, java.sql.*" %>

<html>
<head>
    <title>Delete Movie Records</title>
</head>
<body>

<h1>Delete Movie Records</h1>

<p>Select a movie ID to delete. Remaining records will be displayed below.</p>

<%
    MovieBean mb = new MovieBean();

    // If user submitted a delete request
    if (request.getParameter("movie_id") != null) {

        int id = Integer.parseInt(request.getParameter("movie_id"));
        mb.deleteMovie(id);
    }

    // Get ALL remaining records
    Statement stmt = mb.getConnection().createStatement();
    ResultSet rs = stmt.executeQuery(
        "SELECT * FROM alexis_movies_data"
    );
%>

<!-- DELETE FORM -->

<form method="get">

    <label>Select Movie ID to Delete:</label>

    <select name="movie_id">

<%
    ResultSet ids = mb.getMovieIds();

    while (ids.next()) {
%>
        <option value="<%= ids.getInt("movie_id") %>">
            Movie ID <%= ids.getInt("movie_id") %>
        </option>
<%
    }
%>

    </select>

    <input type="submit" value="Delete Movie">

</form>

<br><br>

<!-- TABLE DISPLAY -->

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