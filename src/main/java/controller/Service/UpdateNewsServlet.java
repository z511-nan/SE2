package controller.Service;

import com.entity.News;
import com.service.impl.NewsServiceImpl;
import controller.Service.NewsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updatenews")
public class UpdateNewsServlet extends HttpServlet {
    private NewsService newsService = new NewsServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        News news = new News();
        news.setId(Integer.parseInt(req.getParameter("id")));
        news.setContent(req.getParameter("content"));

        newsService.updateNews(news);
        resp.sendRedirect(req.getContextPath() + "/listnews");
    }
}
