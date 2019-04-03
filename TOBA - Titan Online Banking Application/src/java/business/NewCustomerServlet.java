package business;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "NewCustomerServlet", urlPatterns = {"/NewCustomerServlet"})
public class NewCustomerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String url = "New_customer.jsp";

//get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join"; //default action

        }

//perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "New_customer.jsp"; //the register page
        }
        else if (action.equals("add")) {
            //get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String zip = request.getParameter("zip");
            String email = request.getParameter("email");

            //store data in User object
            User user = new User(firstName, lastName, phone, address, city, state, zip, email);

            //validate the parameters
            String message;
            if (firstName == null || lastName == null || phone == null || address == null
                || city == null || state == null || zip == null || email == null 
                firstName.isEmpty() || lastName.isEmpty() || phone.isEmpty()
                || address.isEmpty() || city.isEmpty() || state.isEmpty()
                || zip.isEmpty() || email.isEmpty())
   

            {
        message = "Please fill out the form in its entirety.";
                url = "New_customer.jsp";
            }}
        else {
            message = "";
            url = "success.html";
            UserDB.insert(user);
        }
        request.setAttribute("user", user);
        request.setAttribute("message", message);
    }

    getServletContext() {
        .getRequestDispatcher(url);
        .forward(request, response);
    }
