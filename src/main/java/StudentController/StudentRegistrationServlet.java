package StudentController;

import Dao.StudentDao;
import Model.StudentBean;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "StudentRegistrationServlet", value = "/StudentRegistrationServlet")
public class StudentRegistrationServlet extends HttpServlet {
    private final StudentDao registerDao = new StudentDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String userName = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        StudentBean student = new StudentBean(firstName,lastName,userName,email,password);

        try {
            registerDao.register(student);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        RequestDispatcher rd = request.getRequestDispatcher("WelcomeToSchool.jsp");
        rd.forward(request,response);
    }
}
