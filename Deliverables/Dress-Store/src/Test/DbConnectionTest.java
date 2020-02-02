package Test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.SQLException;

import org.junit.Test;

import model.DriverManagerConnectionPool;

public class DbConnectionTest {

    @Test
    public void testgetConn() throws SQLException {
    DriverManagerConnectionPool db = new DriverManagerConnectionPool();
    Connection con = db.getConnection();
    assertNotNull(con);
      }
    }

