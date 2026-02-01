<%-- 
    Job Application Result Page
    Displays submitted form data in a table
--%>

<%
    // Retrieve form data
    String fullName = request.getParameter("fullName");
    String email = request.getParameter("email");
    String experience = request.getParameter("experience");
    String employmentType = request.getParameter("employmentType");
    String position = request.getParameter("position");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Application Summary</title>
    <style>
        table {
            border-collapse: collapse;
            width: 60%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<h1>Application Submitted</h1>
<p>Below is a summary of the information you provided.</p>

<table>
    <tr>
        <th>Field</th>
        <th>Entered Data</th>
    </tr>
    <tr>
        <td>Full Name</td>
        <td><%= fullName %></td>
    </tr>
    <tr>
        <td>Email Address</td>
        <td><%= email %></td>
    </tr>
    <tr>
        <td>Years of Experience</td>
        <td><%= experience %></td>
    </tr>
    <tr>
        <td>Employment Type</td>
        <td><%= employmentType %></td>
    </tr>
    <tr>
        <td>Position Applied For</td>
        <td><%= position %></td>
    </tr>
</table>

</body>
</html>