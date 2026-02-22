<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="beans.MovieBean, java.sql.*" %>

<html>
<head>
    <title>Select Movie to Update</title>
</head>
<body>

<h1>Update Movie Record</h1>
<p>Select a movie ID to edit.</p>

<form action="updateForm.jsp" method="get">

    <select name="movie_id">
<%
    MovieBean mb = new MovieBean();
    ResultSet rs = mb.getMovieIds();

    while (rs.next()) {
%>
        <option value="<%= rs.getInt("movie_id") %>">
            Movie ID <%= rs.getInt("movie_id") %>
        </option>
<%
    }
%>
    </select>

    <input type="submit" value="Edit Movie">

</form>

</body>
</html>