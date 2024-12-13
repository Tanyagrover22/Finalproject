package demo.backend;

import java.io.*;
import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/Registration/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String pincode = request.getParameter("pincode");
        String dateOfJoining = request.getParameter("dateOfJoining");

     
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
          
            Class.forName("com.mysql.cj.jdbc.Driver");

          
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration", "root", "Tanya@750");

        
            String query = "INSERT INTO users (first_name, last_name, email, username, password, gender, address, city, state, pincode, date_of_joining) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, firstName);
            preparedStatement.setString(2, lastName);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, username);
            preparedStatement.setString(5, password);
            preparedStatement.setString(6, gender);
            preparedStatement.setString(7, address);
            preparedStatement.setString(8, city);
            preparedStatement.setString(9, state);
            preparedStatement.setString(10, pincode);
            preparedStatement.setString(11, dateOfJoining);

            int rowsInserted = preparedStatement.executeUpdate();

            if (rowsInserted > 0) {
               
            	response.sendRedirect(request.getContextPath() + "/Login/login.jsp"); // Adjusted for directory structure
            } else {
                response.getWriter().println("Registration failed. Please try again.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        } finally {
       
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
