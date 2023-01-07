package InstructorController;

import Dao.InstructorDao;
import Model.InstructorBean;
import Model.StudentBean;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "InstructorRegistrationServlet", value = "/InstructorRegistrationServlet")
public class InstructorRegistrationServlet extends HttpServlet {
    private final InstructorDao registerDao = new InstructorDao();
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
        String subject = request.getParameter("subject");

        InstructorBean instructor = new InstructorBean(firstName,lastName,userName,email,password,subject);

        try {
            registerDao.register(instructor);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        RequestDispatcher rd = request.getRequestDispatcher("InstructorDisplayGradesServlet");
        rd.forward(request,response);
    }
}

