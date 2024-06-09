<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Subjects Form</title>
    <style>
        /* CSS styles */
        body {
            background-image: url('images/klabt.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
        }
        h1 {
            color: #333;
        }
        .form-container {
            background-color: rgba(255, 255, 255, 0.8); /* semi-transparent white background */
            padding: 20px;
            border-radius: 10px;
            max-width: 500px;
            margin: 0 auto;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: inline-block;
            width: 100px;
            font-weight: bold;
        }
        input[type="number"] {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 200px;
        }
        button {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
    <script>
        function addSubject() {
            const subjectForm = document.getElementById('subjectForm');
            const newSubject = document.createElement('div');
            newSubject.className = 'form-group';
            const subjectCount = document.querySelectorAll('.form-group').length;
            newSubject.innerHTML = `
                <label>Grade:</label>
                <input type="number" name="subjects[${subjectCount}].grade" class="form-control" step="1"/>
                <label>Credit:</label>
                <input type="number" name="subjects[${subjectCount}].credit" class="form-control" step="0.1"/>
            `;
            subjectForm.insertBefore(newSubject, document.getElementById('addButton'));
        }
    </script>
</head>
<body>
    <h1>By Clicking On add Subject you can add Multiple Subjects</h1>
    <form action="${pageContext.request.contextPath}/subjects" method="post" id="subjectForm">
        <c:forEach items="${subjectForm.subjects}" var="subject" varStatus="status">
            <div class="form-group">
                <label>Grade:</label>
                <input type="number" name="subjects[${status.index}].grade" value="${subject.grade}" class="form-control" step="1"/>
                <label>Credit:</label>
                <input type="number" name="subjects[${status.index}].credit" value="${subject.credit}" class="form-control" step="0.1"/>
            </div>
        </c:forEach>
        <button type="button" id="addButton" onclick="addSubject()">Add Subject</button>
        <button type="submit">Submit</button>
    </form>
    <footer>
    Note:Don't Enter the Null Values.
    </footer>
</body>
</html>
