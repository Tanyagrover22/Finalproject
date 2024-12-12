<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile - Interra</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body Styling */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #000, #434343);
            color: #fff;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        /* Main Container */
        .container {
            background: #fff;
            color: #333;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.4);
            max-width: 500px;
            width: 100%;
        }

        .container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #6a11cb;
        }

        /* Form Styling */
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"] {
            padding: 10px;
            font-size: 1rem;
            border: 1px solid #ddd;
            border-radius: 5px;
            transition: border 0.3s ease;
        }

        input:focus {
            border-color: #6a11cb;
            outline: none;
            box-shadow: 0 0 5px rgba(106, 17, 203, 0.5);
        }

        /* Button Container */
        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        button {
            padding: 10px 15px;
            font-size: 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            color: #fff;
            transition: background 0.3s ease;
        }

        #save-btn {
            background: #6a11cb;
        }

        #save-btn:hover {
            background: #5a0db3;
        }

        #back-btn {
            background: #e74c3c;
        }

        #back-btn:hover {
            background: #c0392b;
        }

        /* Message Styling */
        .message {
            font-size: 1rem;
            margin-bottom: 20px;
            text-align: center;
        }

        .message.success {
            color: green;
        }

        .message.error {
            color: red;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            button {
                font-size: 0.9rem;
                padding: 8px 10px;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>Edit Your Profile</h2>

        <!-- Display Success/Error Messages -->
        <% 
            if (request.getAttribute("successMessage") != null) { 
        %>
            <p class="message success"><%= request.getAttribute("successMessage") %></p>
        <% 
            } else if (request.getAttribute("errorMessage") != null) { 
        %>
            <p class="message error"><%= request.getAttribute("errorMessage") %></p>
        <% 
            } 
        %>

        <!-- Profile Edit Form -->
        <form id="editProfileForm" action="${pageContext.request.contextPath}/saveProfile" method="post">
            <label for="firstName">First Name</label>
            <input type="text" id="firstName" name="firstName" value="<%= session.getAttribute("firstName") %>" required />

            <label for="lastName">Last Name</label>
            <input type="text" id="lastName" name="lastName" value="<%= session.getAttribute("lastName") %>" required />

            <label for="email">Email</label>
            <input type="email" id="email" name="email" value="<%= session.getAttribute("email") %>" readonly />

            <label for="address">Address</label>
            <input type="text" id="address" name="address" value="<%= session.getAttribute("address") %>" />

            <label for="city">City</label>
            <input type="text" id="city" name="city" value="<%= session.getAttribute("city") %>" />

            <label for="state">State</label>
            <input type="text" id="state" name="state" value="<%= session.getAttribute("state") %>" />

            <!-- Button Section -->
            <div class="button-container">
                <button type="submit" id="save-btn">Save</button>
                <button type="button" id="back-btn" onclick="window.location.href='${pageContext.request.contextPath}/Dashboard/dashboard.jsp'">Back</button>
            </div>
        </form>
    </div>

    <script>
        // Simple Form Validation Feedback
        const form = document.getElementById('editProfileForm');
        form.addEventListener('submit', function (event) {
            const inputs = form.querySelectorAll('input');
            let isValid = true;
            inputs.forEach(input => {
                if (!input.value.trim()) {
                    alert(`Please fill the ${input.name} field.`);
                    isValid = false;
                    return false;
                }
            });
            if (!isValid) event.preventDefault();
        });
    </script>
</body>

</html>
