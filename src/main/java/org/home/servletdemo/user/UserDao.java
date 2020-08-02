package org.home.servletdemo.user;

import java.util.ArrayList;
import java.util.List;

public class UserDao {

    private static UserDao instance = null;
    private List<User> usersDb = new ArrayList<>();

    private UserDao() {

    }

    public static UserDao getInstance() {
        if (instance == null) {
            synchronized (UserDao.class) {
                if (instance == null) {
                    instance = new UserDao();
                    return instance;
                }
            }
        }
        return instance;
    }

    public void addUser(User user) {
        usersDb.add(user);
    }

    public List<User> findAllUsers() {
        return usersDb;
    }
}
