package zyzz;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class HelloListener implements HttpSessionListener {

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        ServletContext servletContext = se.getSession().getServletContext();
        if (servletContext.getAttribute("count") == null) {
            servletContext.setAttribute("count",1);
        }
        else {
            int count = (int) servletContext.getAttribute("count");
            servletContext.setAttribute("count",++count);
        }
        System.out.println("session created");
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        ServletContext servletContext = se.getSession().getServletContext();
        int count = (int) servletContext.getAttribute("count");
        servletContext.setAttribute("count",--count);
        System.out.println("session destroyed");

    }
}
