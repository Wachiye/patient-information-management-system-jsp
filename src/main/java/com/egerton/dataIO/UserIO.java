package com.egerton.dataIO;

import com.egerton.data.User;
import com.egerton.data.UserType;

import javax.xml.crypto.Data;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UserIO {
    DatabaseAccess db = new DatabaseAccess();
    Connection connection = null;

    public UserIO() throws SQLException {
        System.out.println("Connecting");
        connection = db.connect();
    }

    public List<User> getAllUsers() throws SQLException{
        List<User> users = new ArrayList<>();
        ResultSet resultSet = db.executeQuery("SELECT * FROM users");
        while (resultSet.next()){
            User user = new User();
            user.setId( resultSet.getLong("id"));
            user.setFirstName( resultSet.getString("firstName"));
            user.setLastName( resultSet.getString("lastName"));
            user.setUserType(UserType.valueOf( resultSet.getString("userType")));
            user.setLastLogin( new Date());
            users.add(user);
        }
        System.out.println(users.size());
        return users;
    }

    public User getUserById(long id){
       User user = new User();
       return user;
    }

    public User getUserByUsername(String username){
        User user = new User();
        return user;
    }

    public void saveUser(User user){
        //save user

    }

    public void deleteUser(long user_id){

    }

    public void deleteAllUsers(){

    }

    private boolean usernameExists(String username){
        return true;
    }
}
