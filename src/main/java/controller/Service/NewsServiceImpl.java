package com.service.impl;

import com.entity.News;
import controller.Service.NewsService;
import Utils.DataSourceUtils;
import controller.Service.ServiceFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class NewsServiceImpl implements NewsService {
    private static Logger logger = Logger.getLogger(NewsServiceImpl.class.getName());
    private ServiceFactory serviceFactory = new ServiceFactory();

    @Override
    public List<News> listNews() {
        // TODO Auto-generated method stub
        List<News> newss = new ArrayList<>();
        String sql = "SELECT * FROM news order by inserttime desc";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                News news = new News();
                news.setId(rs.getInt("id"));
                news.setTitle(rs.getString("title"));
                news.setContent(rs.getString("content"));
                news.setInserttime(rs.getDate("inserttime"));
                newss.add(news);
            }
        } catch (SQLException e) {
            // TODO: handle exception
            logger.warning(e.getMessage());
        }
        return newss;
    }

    @Override
    public void addNews(String title,String content) {
        // TODO Auto-generated method stub
        String sql = "INSERT INTO news(title,content,inserttime) VALUES(?,?,?)";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, title);
            st.setString(2, content);
            st.setTimestamp(3, serviceFactory.getCurrentTimeStamp());
            st.executeUpdate();
        }catch (SQLException e) {
            // TODO: handle exception
            logger.warning(e.getMessage());
        }
    }

    @Override
    public News getNews(int id) {
        // TODO Auto-generated method stub
        News news = null;
        String sql = "SELECT * FROM news WHERE id=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, id);
            try(ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    news = new News();
                    news.setId(rs.getInt("id"));
                    news.setTitle(rs.getString("title"));
                    news.setContent(rs.getString("content"));
                    news.setInserttime(rs.getDate("inserttime"));
                }
            }
        } catch (SQLException e) {
            // TODO: handle exception
            logger.warning(e.getMessage());
        }
        return news;
    }

    @Override
    public void removeNews(int id) {
        String sql = "DELETE FROM news WHERE id = ?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateNews(News news) {
        // TODO Auto-generated method stub
        String sql = "UPDATE news SET content=? WHERE id=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, news.getContent());
            st.setInt(2, news.getId());
            st.executeUpdate();
        }catch (SQLException e) {
            // TODO: handle exception
            logger.warning(e.getMessage());
        }
    }
}
