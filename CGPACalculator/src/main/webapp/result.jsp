<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>KL-Result</title>
    <style>
        body {
            background-image: url('/images/klabt.jpg'); /* Adjust the path as needed */
            background-size: cover;
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
            color: #333;
            padding: 50px; /* Add padding for better appearance */
        }

        .container {
            background-color: rgba(255, 255, 255, 0.8); /* semi-transparent white background */
            padding: 20px;
            border-radius: 10px;
            max-width: 500px;
            margin: 0 auto;
        }

        h1 {
            text-align: center;
        }

        p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Here is Your result:</h1>
        <b><p>Your GPA is: ${gpa}</p></b>
        <p>Enti Inka Chustunnav Velli mee freinds koda check chey..💕</p>
        <a href="${pageContext.request.contextPath}/subjects">Back to form</a><br>
        
    </div>
</body>
</html>
