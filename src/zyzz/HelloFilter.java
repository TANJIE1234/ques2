package zyzz;

import com.sun.org.apache.regexp.internal.RE;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class HelloFilter implements Filter {
    public static String[] uris = {"/hellojavaweb/javaweb/numguess1/guess.jsp","/hellojavaweb",
            "/hellojavaweb/bookAdmin","/hellojavaweb/javaweb/numguess1/new_game.jsp","/hellojavaweb/bookAdmin2",
            "/hellojavaweb/simpleClickstream","/hellojavaweb/images/do.gif","/logout.jsp"};
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpSession session = ((HttpServletRequest)servletRequest).getSession();
        String uri = (((HttpServletRequest) servletRequest).getServletPath());
        if (session.getAttribute("count")==null){
            session.setAttribute("count",new int[]{0,0,0,0,0,0,0});
        }
        int[] count = (int[])session.getAttribute("count");
        for (int i=0;i<count.length;i++){
            if (uris[i].equals(uri)){
                count[i]=count[i]+1;
            }
        }
        session.setAttribute("count",count);
        if (uri!=uris[7])
            servletRequest.getRequestDispatcher("/index.jsp").forward(servletRequest,servletResponse);
        else{
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }
}
