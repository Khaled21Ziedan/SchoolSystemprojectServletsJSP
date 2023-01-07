package StudentController;

import Dao.StudentDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "StudentValidationServlet", value = "/StudentValidationServlet")
public class StudentValidationServlet extends HttpServlet {
    private final StudentDao loginDao = new StudentDao();
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
            HttpSession session=request.getSession();
            session.setAttribute("username",userName);
            requestDispatcher = request.getRequestDispatcher("StudentDisplayGradesServlet");
            requestDispatcher.forward(request,response);
        } else {
            requestDispatcher = request.getRequestDispatcher("ErrorPage.jsp");
            requestDispatcher.forward(request,response);
        }
    }
}

