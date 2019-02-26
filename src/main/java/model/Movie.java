package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.Set;
@Data
@AllArgsConstructor
@NoArgsConstructor

public class Movie {
    private long id;
    private String name;
    private String description;
    private Date date;
    private String picUrl;
    private int year;
    private String director;
    private Set<Genre> genre;
    private User user;
}
