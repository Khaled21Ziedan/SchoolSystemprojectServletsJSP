package InstructorController;

import Dao.GradeDao;
import Model.SubjectGradeBean;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "AddNewStudentGradeServlet", value = "/AddNewStudentGradeServlet")
public class AddNewStudentGradeServlet extends HttpServlet {
    GradeDao addStudentGradeDao = new GradeDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String userName = request.getParameter("username");
    String firstName = request.getParameter("firstname");
    String lastName = request.getParameter("lastname");
    String subjectName = request.getParameter("subjectname");
    int grade = Integer.parseInt(request.getParameter("grade"));

    SubjectGradeBean subjectGradeBean = new SubjectGradeBean(userName,firstName,lastName,subjectName,grade);

    try {
        addStudentGradeDao.addUserGrade(subjectGradeBean);
    } catch (ClassNotFoundException e) {
        throw new RuntimeException(e);
    }
    RequestDispatcher rd = request.getRequestDispatcher("InstructorDisplayGradesServlet");
    rd.forward(request,response);
    }
}
