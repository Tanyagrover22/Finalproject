<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register</title>
  <link rel="stylesheet" href="registration.css">
  <script defer src="registration.js"></script>
  <style>
    /* General Reset */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    /* Body */
    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(135deg, #6a11cb, #2575fc);
      color: #fff;
    }

    /* Navbar */
    .navbar {
      background: rgba(0, 0, 0, 0.8);
      padding: 10px 20px;
      text-align: center;
      color: #fff;
      font-size: 1.5em;
    }

    /* Registration Form */
    .register-container {
      max-width: 800px;
      margin: 50px auto;
      padding: 30px;
      background: #fff;
      color: #333;
      border-radius: 10px;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.4);
    }

    .register-container h2 {
      text-align: center;
      margin-bottom: 20px;
      font-size: 2em;
      color: #6a11cb;
    }

    .input-group {
      margin-bottom: 20px;
    }

    label {
      display: block;
      margin-bottom: 8px;
      font-weight: bold;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"],
    input[type="date"] {
      width: 100%;
      padding: 10px;
      border: 2px solid #ddd;
      border-radius: 5px;
      font-size: 1em;
      transition: border-color 0.3s;
    }

    input:focus {
      border-color: #6a11cb;
      outline: none;
    }

    .form-btn {
      text-align: center;
    }

    button {
      background: #6a11cb;
      border: none;
      color: #fff;
      cursor: pointer;
      padding: 15px 30px;
      border-radius: 5px;
      font-size: 1em;
      transition: background-color 0.3s;
    }

    button:hover {
      background: #f64f59;
    }

    .footer {
      text-align: center;
      margin: 30px auto;
      padding: 10px;
      background: rgba(0, 0, 0, 0.7);
      color: white;
    }

    .error-message {
      color: red;
      font-size: 0.9em;
    }
  </style>
</head>
<body>
  <!-- Navigation Bar -->
  <nav class="navbar">
    <div class="container">
      <span class="brand">Registration</span>
    </div>
  </nav>

  <!-- Registration Form -->
  <div class="register-container">
    <form id="registerForm" action="RegisterServlet" method="POST" onsubmit="return validateForm();">
      <h2>Register</h2>

      <div class="input-group">
        <label for="firstName">First Name</label>
        <input type="text" id="firstName" name="firstName" required>
      </div>

      <div class="input-group">
        <label for="lastName">Last Name</label>
        <input type="text" id="lastName" name="lastName" required>
      </div>

      <div class="input-group">
        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>
        <span id="emailError" class="error-message"></span>
      </div>

      <div class="input-group">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" required>
      </div>

      <div class="input-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
      </div>

      <div class="input-group">
        <label>Gender</label>
        <label><input type="checkbox" name="gender" value="Male"> Male</label>
        <label><input type="checkbox" name="gender" value="Female"> Female</label>
        <label><input type="checkbox" name="gender" value="Other"> Other</label>
      </div>

      <div class="input-group">
        <label for="address">Address</label>
        <input type="text" id="address" name="address" required>
      </div>

      <div class="input-group">
        <label for="city">City</label>
        <input type="text" id="city" name="city" required>
      </div>

      <div class="input-group">
        <label for="state">State</label>
        <input type="text" id="state" name="state" required>
      </div>

      <div class="input-group">
        <label for="pincode">Pincode</label>
        <input type="text" id="pincode" name="pincode" required>
      </div>

      <div class="input-group">
        <label for="dateOfJoining">Date of Joining</label>
        <input type="date" id="dateOfJoining" name="dateOfJoining" required>
        <span id="dateError" class="error-message"></span>
      </div>

      <div class="form-btn">
        <button type="submit">Register</button>
      </div>
    </form>
  </div>

  <!-- Footer -->
  <footer class="footer">
    <p>&copy; 2024 Registration Project. All Rights Reserved.</p>
  </footer>
</body>
</html>
