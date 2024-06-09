<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>KL-CGPA Calculator</title>
    <style>
        body {
            background-image: url('/images/klabt.jpg'); /* Adjust the path as needed */
            background-size: cover;
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
            color: #333;
            padding: 50px; /* Add padding for better appearance */
        }

        .form-group {
            margin-bottom: 15px;
        }
        
        .danger {
    color: red;
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
        let subjectCount = 1; // Start with one subject initially

        function addSubject() {
            const subjectForm = document.getElementById('subjectForm');
            const newSubject = document.createElement('div');
            newSubject.className = 'form-group';
            newSubject.innerHTML = `
                <label>Grade:</label>
                <input type="number" name="grades" class="form-control" step="1" required/>
                <label>Credit:</label>
                <input type="number" name="credits" class="form-control" step="0.1" required/>
            `;
            subjectForm.appendChild(newSubject);
            subjectCount++;
        }
    </script>
</head>
<body>
    <h1>Enter Grades and Credits</h1>
    <form action="${pageContext.request.contextPath}/calculate" method="post" id="subjectForm">
        <!-- Initial subject fields -->
        <div class="form-group">
            <label>Grade:</label>
            <input type="number" name="grades" class="form-control" step="1" placeholder="Enter grade out of 10.0" required/>
            <label>Credit:</label>
            <input type="number" name="credits" class="form-control" step="0.1" placeholder="Enter credits correctly" required/>
        </div>
        <!-- End of initial subject fields -->
        <div align="center">
        <button align="centre" type="button" onclick="addSubject()">Add Subject</button>
        <button type="submit">Calculate GPA</button>
        </div>
    </form>
    <footer>
    <b class="danger">Note:Please avoid entering null values. Additionally, it's important to mention that in our ERP system, the total credits are known, which helps generate results based on those credits. However, in this web application, I'm unable to determine the total credits you've registered for a particular semester. Therefore, the results provided here are based on the credits you have entered.</b>
</footer>

</body>
</html>
