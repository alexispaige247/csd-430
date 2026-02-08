<%@ page import="beans.MovieBean, java.sql.*" %>

<html>
<head>
    <title>Movie Database Viewer</title>
</head>
<body>

<h1>Alexis Movie Database</h1>
<p>Select a movie ID to view its details.</p>

<form method="get">
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
    <input type="submit" value="View Movie">
</form>

<%
    if (request.getParameter("movie_id") != null) {
        int id = Integer.parseInt(request.getParameter("movie_id"));
        ResultSet movie = mb.getMovieById(id);

        if (movie.next()) {
%>

<h2>Movie Details</h2>

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

<%
        }
    }
%>

</body>
</html>