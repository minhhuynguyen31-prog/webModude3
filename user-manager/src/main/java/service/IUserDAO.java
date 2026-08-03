package service;

import model.User;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface IUserDAO {
    public void insertUser(User user) throws SQLException;

    public User selectUser(int id);

    public List<User> selectAllUsers();

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(User user) throws SQLException;

    public Map<Integer, User> searchUsersByCountry(String countryName) throws SQLException;

    public Map<Integer, User> selectAllUsersSortedByName() throws SQLException;

    User getUserById(int id);

    void insertUserStore(User user) throws SQLException;

    void addUserTransaction(User user, List<Integer> permission);

    public void insertUpdateWithoutTransaction();
    public void insertUpdateUseTransaction();
}
