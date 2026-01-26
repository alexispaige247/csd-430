<%@ page import="java.util.*" %>
<%-- 
    File: movies.jsp
    Purpose: Display movie data using JSP Scriptlets
    Author: Alexis Mitchell
--%>

<%
    // Overall data description
    String pageTitle = "Favorite Movies";
    String pageDescription = "A list of movies I enjoyed watching, grouped by genre.";

    // Create a list of movie records
    // Each record contains: Title, Genre, Release Year
    List<String[]> movies = new ArrayList<>();

    movies.add(new String[]{"Spider-Man: Into the Spider-verse", "Family/Action", "2018"});
    movies.add(new String[]{"Toy Story 2", "Family/Adventure", "1999"});
    movies.add(new String[]{"Superman", "Action/Sci-Fi", "2024"});
    movies.add(new String[]{"Deadpool & Wolverine", "Action/Comedy", "2024"});
    movies.add(new String[]{"Legally Blonde", "Comedy/Romance", "2001"});
%>

<!DOCTYPE html>
<html>
<head>
    <title><%= pageTitle %></title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>

    <h1><%= pageTitle %></h1>
    <p><%= pageDescription %></p>

    <h2>Field Descriptions</h2>
    <ul>
        <li><strong>Title:</strong> Name of the movie</li>
        <li><strong>Genre:</strong> Category the movie belongs to</li>
        <li><strong>Release Year:</strong> Year the movie was released</li>
    </ul>

    <h2>Movie Records</h2>

    <table>
        <tr>
            <th>Title</th>
            <th>Genre</th>
            <th>Release Year</th>
        </tr>

        <%
            // Loop through the movie records and display them in the table
            for (String[] movie : movies) {
        %>
        <tr>
            <td><%= movie[0] %></td>
            <td><%= movie[1] %></td>
            <td><%= movie[2] %></td>
        </tr>
        <%
            }
        %>
    </table>

</body>
</html>