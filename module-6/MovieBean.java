// MovieBean.java
// Handles database connectivity and movie data retrieval

package beans;

import java.sql.*;

public class MovieBean {

    private Connection conn;

    public MovieBean() {
        try {
            conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/csd430",
                "student1",
                "pass"
            );
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ResultSet getMovieIds() throws SQLException {
        Statement stmt = conn.createStatement();
        return stmt.executeQuery("SELECT movie_id FROM alexis_movies_data");
    }

    public ResultSet getMovieById(int id) throws SQLException {
        PreparedStatement ps = conn.prepareStatement(
            "SELECT * FROM alexis_movies_data WHERE movie_id = ?"
        );
        ps.setInt(1, id);
        return ps.executeQuery();
    }
}
