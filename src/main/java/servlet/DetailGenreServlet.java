package servlet;

import manager.MovieManager;
import model.Movie;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/detailGenre")

public class DetailGenreServlet extends HttpServlet {
    MovieManager movieManager = new MovieManager();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("Id");
        int genreId = Integer.parseInt(id);
        List<Movie> movie =  movieManager.getMoviesByGenreId(genreId);
        if (movie == null) {
            resp.sendRedirect("/login.jsp");
        }else {
            req.setAttribute("detailGenre", movie);
            req.getRequestDispatcher("/WEB-INF/detailGenre.jsp").forward(req,resp);
        }
    }
}
