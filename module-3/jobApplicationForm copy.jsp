<%-- 
    Job Application Form
    Name: Alexis Mitchell
    Course: CSD430
    Description: Collects job applicant information and submits it to a JSP for display
--%>

<!DOCTYPE html>
<html>
<head>
    <title>Job Application Form</title>
    <style>
        body { font-family: Arial, sans-serif; }
        label { display: block; margin-top: 10px; }
    </style>
</head>
<body>

<h1>Job Application</h1>
<p>Please fill out the form below to apply for the position.</p>

<form action="jobApplicationResult.jsp" method="post">

    <!-- Text input -->
    <label>Full Name:</label>
    <input type="text" name="fullName" required>

    <!-- Email input -->
    <label>Email Address:</label>
    <input type="email" name="email" required>

    <!-- Number input -->
    <label>Years of Experience:</label>
    <input type="number" name="experience" min="0" required>

    <!-- Radio buttons -->
    <label>Employment Type:</label>
    <input type="radio" name="employmentType" value="Full-Time" required> Full-Time
    <input type="radio" name="employmentType" value="Part-Time"> Part-Time

    <!-- Dropdown -->
    <label>Position Applied For:</label>
    <select name="position">
        <option value="Developer">Developer</option>
        <option value="Designer">Designer</option>
        <option value="QA Tester">QA Tester</option>
    </select>

    <br><br>
    <input type="submit" value="Submit Application">

</form>

</body>
</html>