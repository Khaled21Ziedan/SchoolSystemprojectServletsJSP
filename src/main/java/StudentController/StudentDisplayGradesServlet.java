package StudentController;

import Dao.GradeDao;
import Model.SubjectGradeBean;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "StudentDisplayGradesServlet", value = "/StudentDisplayGradesServlet")
public class StudentDisplayGradesServlet extends HttpServlet {
    GradeDao gradeDao = new GradeDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            HttpSession session = request.getSession();
            String userName = (String) session.getAttribute("username");
            List<SubjectGradeBean> gradeList = gradeDao.getStudentGrades(userName);
            request.setAttribute("gradeList", gradeList);

            int mathMaxGrade = gradeDao.maxValue("math");
            int mathMinGrade = gradeDao.minValue("math");
            double mathAverage = gradeDao.average("math");

            request.setAttribute("mathMaxGrade",mathMaxGrade);
            request.setAttribute("mathMinGrade",mathMinGrade);
            request.setAttribute("mathAverage",mathAverage);

            int scienceMaxGrade = gradeDao.maxValue("science");
            int scienceMinGrade = gradeDao.minValue("science");
            double scienceAverage = gradeDao.average("science");

            request.setAttribute("scienceMaxGrade",scienceMaxGrade);
            request.setAttribute("scienceMinGrade",scienceMinGrade);
            request.setAttribute("scienceAverage",scienceAverage);

            int historyMaxGrade = gradeDao.minValue("history");
            int historyMinGrade = gradeDao.minValue("history");
            double historyAverage = gradeDao.average("history");

            request.setAttribute("historyMaxGrade",historyMaxGrade);
            request.setAttribute("historyMinGrade",historyMinGrade);
            request.setAttribute("historyAverage",historyAverage);

            int sportMaxGrade = gradeDao.maxValue("sports");
            int sportMinGrade = gradeDao.minValue("sports");
            double sportAverage = gradeDao.average("sports");

            request.setAttribute("sportMaxGrade",sportMaxGrade);
            request.setAttribute("sportMinGrade",sportMinGrade);
            request.setAttribute("sportAverage",sportAverage);

            RequestDispatcher dispatcher = request.getRequestDispatcher("StudentListOfGrades.jsp");
            dispatcher.forward(request, response);
        }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
