package servlet;

import manager.MovieManager;
import model.Movie;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/detailMovie")

public class DetailMovieServlet extends HttpServlet {
    MovieManager movieManager = new MovieManager();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("Id");
        int movieId = Integer.parseInt(id);
        Movie movie = movieManager.getMovieById(movieId);
        if (movie == null) {
            resp.sendRedirect("/login.jsp");
        } else {

            req.setAttribute("movieDetail", movie);
            req.getRequestDispatcher("/WEB-INF/movieDetail.jsp").forward(req,resp);

        }
    }
}
