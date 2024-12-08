package demo.backend;

import java.io.*;
import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/Login/LoginServlet") // Ensure the correct mapping
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // JDBC variables
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection to the database
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration", "root", "Tanya@750");

            // Query to authenticate user
            String query = "SELECT first_name, last_name, email, gender, address, city, state FROM users WHERE username = ? AND password = ?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);

            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                // User authenticated, retrieve details
                HttpSession session = request.getSession();
                session.setAttribute("firstName", resultSet.getString("first_name"));
                session.setAttribute("lastName", resultSet.getString("last_name"));
                session.setAttribute("email", resultSet.getString("email"));
                session.setAttribute("gender", resultSet.getString("gender"));
                session.setAttribute("address", resultSet.getString("address"));
                session.setAttribute("city", resultSet.getString("city"));
                session.setAttribute("state", resultSet.getString("state"));
                session.setAttribute("username", username);

                // Redirect to welcome page
                response.sendRedirect(request.getContextPath() + "/Welcome/welcome.jsp");

            } else {
                // Login failed
                request.setAttribute("errorMessage", "Invalid username or password.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/Login/login.jsp");
                dispatcher.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        } finally {
            // Close resources
            try {
                if (resultSet != null) resultSet.close();
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
