package com.egerton.dataIO;

import java.sql.*;

public class DatabaseAccess {
    protected String HOST = "localhost";
    protected String USERNAME = "webdev";
    protected String PASSWORD = "web123";
    protected String DATABASE = "webdev";

    private Connection connection = null;

    /** Creates SQL commands*/
    public Connection connect() throws SQLException{
        String connURL = "jdbc:mysql://" + HOST + "/" + DATABASE;
        connection = DriverManager.getConnection( connURL, USERNAME, PASSWORD);
        return connection;
    }
    /** closes SQL Connection*/
    public Connection disconnect() throws SQLException{
        return connection;
    }

    /** Execute SQL SELECT commands*/
    public ResultSet executeQuery(String query) throws SQLException {
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            connect();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
        }catch (SQLException sqlException){
            resultSet = null;
        }finally {
            disconnect();
        }
        return resultSet;
    }

    /** Execute SQL DDL, and modification commands*/
    public int executeUpdate(String query) throws SQLException {
        Statement statement = null;
        int updated = -1;
        try {
            connect();
            statement = connection.createStatement();
            statement.executeUpdate(query);
        }catch (SQLException sqlException){
            updated = -1;
        }finally {
            disconnect();
        }
        return updated;
    }

}
