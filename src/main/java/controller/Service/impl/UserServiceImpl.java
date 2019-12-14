package controller.Service.impl;

import Utils.DataSourceUtils;
import com.entity.User;

import controller.Service.ServiceFactory;
import controller.Service.UserService;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class UserServiceImpl implements UserService {
    private static Logger logger = Logger.getLogger(UserServiceImpl.class.getName());
    private ServiceFactory serviceFactory = new ServiceFactory();

    @Override
    public List<User> listUsers() {
        // TODO Auto-generated method stub
        List<User> users = new ArrayList<>();
        String sql = "SELECT * FROM user order by inserttime desc";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setIsadmin(rs.getInt("isadmin"));
                user.setInserttime(rs.getDate("inserttime"));
                users.add(user);
            }
        } catch (SQLException e) {
            // TODO: handle exception
            logger.warning(e.getMessage());
        }
        return users;
    }


    @Override
    public void addUser(String name) {
        // TODO Auto-generated method stub
        String sql = "INSERT INTO user(username,inserttime) VALUES(?,?)";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, name);
            st.setTimestamp(2, serviceFactory.getCurrentTimeStamp());
            st.executeUpdate();
        }catch (SQLException e) {
            // TODO: handle exception
            logger.warning(e.getMessage());
        }
    }

    @Override
    public User getUser(int id) {
        // TODO Auto-generated method stub
        User user = null;
        String sql = "SELECT * FROM user WHERE id=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, id);
            try(ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    user = new User();
                    user.setId(rs.getInt("id"));
                    user.setUsername(rs.getString("username"));
                    user.setPwd(rs.getString("pwd"));
                    user.setIsadmin(rs.getInt("isadmin"));
                    user.setInserttime(rs.getDate("inserttime"));
                }
            }
        } catch (SQLException e) {
            // TODO: handle exception
            logger.warning(e.getMessage());
        }
        return user;
    }

    @Override
    public void removeUser(int id) {
        String sql = "DELETE FROM user WHERE id = ?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateUser(User user) {
        // TODO Auto-generated method stub
//        String sql = "UPDATE user SET username=?,isadmin=? WHERE id=?";
        String sql = "UPDATE user SET username=? WHERE id=?";

        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, user.getUsername());
            st.setInt(2, user.getId());
            st.executeUpdate();
        }catch (SQLException e) {
            // TODO: handle exception
            logger.warning(e.getMessage());
        }
    }
}
