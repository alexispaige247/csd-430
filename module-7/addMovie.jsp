<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add New Movie</title>
</head>
<body>

<h1>Add a New Movie</h1>
<p>Enter movie details</p>

<form action="addMovieProcess.jsp" method="post">

    Title: <input type="text" name="title" required><br><br>

    Genre: <input type="text" name="genre" required><br><br>

    Release Year: <input type="number" name="year" required><br><br>

    Director: <input type="text" name="director" required><br><br>

    Rating: <input type="number" step="0.1" name="rating" required><br><br>

    <input type="submit" value="Add Movie">

</form>

</body>
</html>