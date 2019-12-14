package controller.Service.impl;

import Utils.DataSourceUtils;
import entity.Notice;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class NoticeServiceImpl {
    private static Logger logger = Logger.getLogger(NoticeServiceImpl.class.getName());

    public static List<Notice> getList() {
        List<Notice> notices = new ArrayList<>();
        String sql = "SELECT * FROM notice";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                Notice notice = new Notice(rs.getInt("id"), rs.getDate("date"), rs.getString("info"));
                notices.add(notice);
            }
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
        return notices;
    }
}
