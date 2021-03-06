package servlet;

import manager.MovieManager;
import manager.UserManager;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/login")

public class LoginServlet extends HttpServlet {
    private UserManager userManager = new UserManager();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        User user = userManager.getEmailByPassword(email, password);
        HttpSession session = req.getSession();
        if (user != null) {
            session.setAttribute("admin", user);
            req.getRequestDispatcher("/admin/home").forward(req, resp);
        } else {
            req.getRequestDispatcher("/WEB-INF/login.jsp").forward(req,resp);
        }
    }
}
