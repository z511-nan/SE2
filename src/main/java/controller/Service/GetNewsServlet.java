package controller.Service;

import com.service.impl.NewsServiceImpl;
import controller.Service.NewsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/getnews")
public class GetNewsServlet extends HttpServlet {
    private NewsService newsService = new NewsServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("news", newsService.getNews(Integer.parseInt(req.getParameter("id"))));
        req.getRequestDispatcher("/jsp/getnews.jsp")
                .forward(req, resp);
    }
}
