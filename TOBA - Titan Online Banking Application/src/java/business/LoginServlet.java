package business;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "login", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

 protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
                   
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        if(username.equals("jsmith@toba.com") && password.equals("letmein")){
            
            response.sendRedirect("Account_activity.html");
        }
        else{
            response.sendRedirect("login_failure.html");
        }
            
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
 
    
}

}
