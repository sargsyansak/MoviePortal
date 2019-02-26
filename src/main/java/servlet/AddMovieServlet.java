package servlet;

import manager.GenreManager;
import manager.MovieManager;
import model.Genre;
import model.Movie;
import model.User;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@WebServlet(urlPatterns = "/user/addMovie")

public class AddMovieServlet extends HttpServlet {
    GenreManager genreManager = new GenreManager();
    MovieManager movieManager = new MovieManager();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        if (user == null) {
            resp.sendRedirect("/login.jsp");
        } else {

            if (ServletFileUpload.isMultipartContent(req)) {
                DiskFileItemFactory factory = new DiskFileItemFactory();
                factory.setSizeThreshold(1024 * 1024);
                factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

                ServletFileUpload upload = new ServletFileUpload(factory);
                upload.setFileSizeMax(1024 * 1024 * 50);
                upload.setSizeMax(1024 * 1024 * 5 * 50);
                String uploadPath = "C:\\MoviePortal\\src\\main\\java\\uploadImages";
                File uploadDir = new File(uploadPath);
                if (!uploadDir.exists()) {
                    uploadDir.mkdir();
                }
                try {
                    Set<Genre> genres = new HashSet<>();
                    Movie movie = new Movie();
                    List<FileItem> formItems = upload.parseRequest(req);
                    if (formItems != null && formItems.size() > 0) {
                        for (FileItem item : formItems) {
                            if (!item.isFormField()) {
                                String fileName = System.currentTimeMillis() + "_" + new File(item.getName()).getName();
                                String filePath = uploadPath + File.separator + fileName;
                                File storeFile = new File(filePath);
                                item.write(storeFile);
                                movie.setPicUrl(fileName);
                            } else {
                                if (item.getFieldName().equals("name")) {
                                    movie.setName(item.getString());
                                } else if (item.getFieldName().equals("description")) {
                                    movie.setDescription(item.getString());
                                } else if (item.getFieldName().equals("year")) {
                                    movie.setYear(Integer.parseInt(item.getString()));
                                } else if (item.getFieldName().equals(("director"))) {
                                    movie.setDirector(item.getString());
                                } else if (item.getFieldName().equals("genre")) {
                                    genres.add(genreManager.getGenresByName(item.getString()));
                                    movie.setGenre(genres);
                                }
                            }
                        }
                        movie.setUser(user);
                        movie.setDate(new Date());
                        movieManager.addMovie(movie);
                        resp.sendRedirect("/admin/home");
                    }
                } catch (FileUploadException e) {
                    e.printStackTrace();
                } catch (Exception e) {
                    e.printStackTrace();
                }


            }
        }
    }


}

