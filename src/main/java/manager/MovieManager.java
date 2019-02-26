package manager;

import db.DBConnectionProvider;
import model.Genre;
import model.Movie;
import util.DateUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class MovieManager {

    private Connection connection;

    public MovieManager() {
        connection = DBConnectionProvider.getInstance().getConnection();
    }

    public void addMovie(Movie movie) {

        try {
            String query = "INSERT INTO movie(`name`,`description`,`created_date`,`pic_url`,`year`,`director`,`user_id`)" +
                    "VALUES (?,?,?,?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            statement.setString(1, movie.getName());
            statement.setString(2, movie.getDescription());
            statement.setString(3, DateUtil.convertDateToString(movie.getDate()));
            statement.setString(4, movie.getPicUrl());
            statement.setInt(5, movie.getYear());
            statement.setString(6, movie.getDirector());
            statement.setLong(7, movie.getUser().getId());
            statement.executeUpdate();
            ResultSet resultSet = statement.getGeneratedKeys();
            if (resultSet.next()) {
                int id = resultSet.getInt(1);
                movie.setId(id);

            }
            for (Genre genre : movie.getGenre()) {
                addGenreIdAndMovieId(movie.getId(), genre.getId());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void addGenreIdAndMovieId(long movieId, long genreId) {
        try {
            String query = "INSERT INTO genre_movie(`movie_id`,`genre_id`)" + "VALUES (?,?)";
            PreparedStatement statement = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            statement.setLong(1, movieId);
            statement.setLong(2, genreId);
            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public List<Movie> getAllMovies() {
        try {
            UserManager userManager = new UserManager();
            GenreManager genreManager = new GenreManager();
            Statement statement = connection.createStatement();
            String query = "SELECT * FROM movie";
            List<Movie> movies = new ArrayList<>();
            Set<Genre> genres = new HashSet<>();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                Movie movie = new Movie();
                movie.setId(resultSet.getInt(1));
                movie.setName(resultSet.getString(2));
                movie.setDescription(resultSet.getString(3));
                movie.setDate(DateUtil.convertStringToDate(resultSet.getString(4)));
                movie.setPicUrl(resultSet.getString(5));
                movie.setYear(resultSet.getInt(6));
                movie.setDirector(resultSet.getString(7));
                movie.setUser(userManager.getUserById(resultSet.getInt(8)));
                List<Integer> genresId = genreManager.genresIdByPostId(movie.getId());
                for (Integer integer : genresId) {
                    genres.add(genreManager.getGenresById(integer));
                }
                movie.setGenre(genres);
                movies.add(movie);

            }
            return movies;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;

    }

    public Movie getMovieById(int movieId) {
        try {
            UserManager userManager = new UserManager();
            GenreManager genreManager = new GenreManager();
            Statement statement = connection.createStatement();
            String query = "SELECT * FROM movie WHERE `id` = " + movieId;
            ResultSet resultSet = statement.executeQuery(query);
            if (resultSet.next()) {
                Movie movie = new Movie();
                movie.setId(resultSet.getInt(1));
                movie.setName(resultSet.getString(2));
                movie.setDescription(resultSet.getString(3));
                movie.setDate(DateUtil.convertStringToDate(resultSet.getString(4)));
                movie.setPicUrl(resultSet.getString(5));
                movie.setYear(resultSet.getInt(6));
                movie.setDirector(resultSet.getString(7));
                List<Integer> movieGenres = genreManager.genresIdByPostId(movieId);
                Set<Genre> genres = new HashSet<>();
                for (Integer genreId : movieGenres) {
                    genres.add(genreManager.getGenresById(genreId));
                }
                movie.setGenre(genres);
                movie.setUser(userManager.getUserById(resultSet.getInt(8)));
                return movie;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    List<Movie> getMoviesByGenreId(int id) {
        try {
            Statement statement = connection.createStatement();
            String query = "SELECT movie_id FROM genre_movie WHERE genre_id = " + id;
            ResultSet resultSet = statement.executeQuery(query);
            List<Movie> movies = new ArrayList<>();
            while (resultSet.next()) {
                Movie movie = getMovieById(resultSet.getInt(1));
                movies.add(movie);

            }
            return movies;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
