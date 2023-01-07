package InstructorController;

import Dao.InstructorDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "InstructorValidationServlet", value = "/InstructorValidationServlet")
public class InstructorValidationServlet extends HttpServlet {
    private final InstructorDao loginDao = new InstructorDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        boolean validUser = false ;

        validUser = loginDao.isValid(userName,password);
        RequestDispatcher requestDispatcher;
        if (validUser){
            requestDispatcher = request.getRequestDispatcher("InstructorDisplayGradesServlet");
            requestDispatcher.forward(request,response);
        } else {
            requestDispatcher = request.getRequestDispatcher("ErrorPage.jsp");
            requestDispatcher.forward(request,response);
        }
    }
}

