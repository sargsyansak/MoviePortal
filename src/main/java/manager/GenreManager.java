package manager;

import db.DBConnectionProvider;
import model.Genre;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class GenreManager {
    private Connection connection;

    public GenreManager() {
        connection = DBConnectionProvider.getInstance().getConnection();
    }

    public Set<Genre> getGenres() {
        try {
            Statement statement = connection.createStatement();
            String query = "SELECT * FROM genre";
            Set<Genre> genres = new HashSet<>();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                Genre genre = new Genre();
                genre.setId(resultSet.getInt(1));
                genre.setName(resultSet.getString(2));
                genres.add(genre);
            }
            return genres;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;

    }

    public List<Integer> genresIdByPostId(long id) {
        try {
            Statement statement = connection.createStatement();
            String query = "SELECT genre_id FROM genre_movie WHERE `movie_id` = " + id;
            List<Integer> genres = new ArrayList<>();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                genres.add(resultSet.getInt(1));

            }
            return genres;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;

    }

    public void addGenre(Genre genre) {
        String query = "INSERT INTO genre(`name`)" + "VALUES (?)";
        try {
            PreparedStatement statement = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            statement.setString(1, genre.getName());
            statement.executeUpdate();
            ResultSet resultSet = statement.getGeneratedKeys();
            if (resultSet.next()) {
                int id = resultSet.getInt(1);
                genre.setId(id);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Genre getGenresById(int id) {
        try {
            Statement statement = connection.createStatement();
            String query = "SELECT * FROM genre WHERE `id` = " + id;
            ResultSet resultSet = statement.executeQuery(query);
            if (resultSet.next()) {
                Genre genre = new Genre();
                genre.setId(resultSet.getInt(1));
                genre.setName(resultSet.getString(2));
                return genre;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Genre getGenresByName(String name) {
        try {
            Statement statement = connection.createStatement();
            String query = "SELECT * FROM genre WHERE `name` = '" + name +"'";
            ResultSet resultSet = statement.executeQuery(query);
            if (resultSet.next()) {
                Genre genre = new Genre();
                genre.setId(resultSet.getInt(1));
                genre.setName(resultSet.getString(2));
                return genre;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
