package org.home.servletdemo.user;


public class LoginService {

    private static LoginService instance = null;
    private UserDao userDao = UserDao.getInstance();

    private LoginService() {
    }

    public static LoginService getInstance() {
        if (instance == null) {
            synchronized (LoginService.class) {
                if (instance == null) {
                    instance = new LoginService();
                }
            }
        }
        return instance;
    }

    public User login(String username, String password) {
        return userDao.findAllUsers().stream()
                .filter(u -> u.getUsername().equals(username)
                        && u.getPassword().equals(password))
                .findFirst().orElseThrow(() -> new IllegalStateException("User not found"));
    }

    public void registerUser(String user, String password){
        User newUser = new User(user, password);
        userDao.addUser(newUser);
    }

}
