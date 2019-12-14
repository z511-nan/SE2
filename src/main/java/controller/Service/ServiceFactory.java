package controller.Service;

import com.service.impl.NewsServiceImpl;
import controller.Service.NewsService;
import controller.Service.NoticeService;
import controller.Service.UserService;
import controller.Service.impl.NoticeServiceImpl;
import controller.Service.impl.UserServiceImpl;

import java.util.Optional;

public class ServiceFactory {
    private static UserService userService;
    private static NewsService newsService;
    private static NoticeService noticeService;

    public static UserService getUserService() {
        return Optional.ofNullable(userService)
                .orElseGet(() ->{
                    userService = new UserServiceImpl();
                    return userService;});
    }
    public static NewsService getNewsService(){
        return Optional.ofNullable(newsService)
                .orElseGet(() -> {
                    newsService = new NewsServiceImpl();
                    return newsService;});
    }
//    public static NoticeService getNoticeService(){
//        return Optional.ofNullable(noticeService)
//                .orElseGet(() ->{
//                    noticeService = new NoticeServiceImpl();
//                    return noticeService;});
//    }

    public java.sql.Timestamp getCurrentTimeStamp() {

        java.util.Date today = new java.util.Date();
        return new java.sql.Timestamp(today.getTime());

    }

}
