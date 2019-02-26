package servlet;

import manager.GenreManager;
import manager.MovieManager;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/admin/home")

public class AdminHomeServlet extends HttpServlet {
    MovieManager movieManager = new MovieManager();
    GenreManager genreManager = new GenreManager();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        if (user != null) {
            req.setAttribute("allMovie", movieManager.getAllMovies());
            req.setAttribute("allGenre", genreManager.getGenres());
            req.getRequestDispatcher("/WEB-INF/admin/adminHome.jsp").forward(req, resp);
        }
    }
}
