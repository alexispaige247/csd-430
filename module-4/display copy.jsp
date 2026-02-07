<%@ page import="model.StudentBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>JavaBean Data Display Using JSP</title>
</head>
<body>

<h1>JavaBean Data Display</h1>

<%
    StudentBean student = new StudentBean();
    student.setStudentId("S12345");
    student.setName("Alexis Mitchell");
    student.setMajor("Software Development");
    student.setCredits(45);
    student.setGpa(3.8);
%>

<table border="1">
    <tr>
        <th>Field</th>
        <th>Value</th>
    </tr>
    <tr>
        <td>ID</td>
        <td><%= student.getStudentId() %></td>
    </tr>
    <tr>
        <td>Name</td>
        <td><%= student.getName() %></td>
    </tr>
    <tr>
        <td>Major</td>
        <td><%= student.getMajor() %></td>
    </tr>
    <tr>
        <td>Credits</td>
        <td><%= student.getCredits() %></td>
    </tr>
    <tr>
        <td>GPA</td>
        <td><%= student.getGpa() %></td>
    </tr>
</table>

</body>
</html>

